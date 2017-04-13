<?php
set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);

//SELECT k2.`id`,k2.`title`,k2.`alias`, modx.`id`,modx.`pagetitle`,modx.`alias` 
//FROM `cbs_k2_items` k2 
//LEFT JOIN `qtQqv2ATujag_site_content` modx 
//  ON (k2.title = modx.pagetitle)

$result = $modx->query("SELECT k2.`id` AS `old_id`,k2.`title` AS `old_title`,k2.`alias` AS `old_alias`, modx.`id`,modx.`pagetitle`,modx.`alias`,modx.`template` FROM `cbs_k2_items` k2 LEFT JOIN `qtQqv2ATujag_site_content` modx ON (k2.`title` = modx.`pagetitle`) WHERE k2.`title` = modx.`pagetitle` AND modx.`template`=4 GROUP BY `old_id` ASC LIMIT 2000,200");
if (!is_object($result)) {
    return 'No result!';
} else {
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        
        $pagetitle = $row['pagetitle'];
        if ($row['template']!=4){
            $title = $row['old_alias'];    
        } else {
            $title = $row['old_id'].'-'.$row['old_alias'];
        }
        
        $page = $modx->getObject('modResource',$row['id']);
        
        $alias = $page->cleanAlias($title);
        
        $page->set('alias',$title);
        $page->save();
        $response = $modx->runProcessor('resource/update', $page->toArray());
        if ($response->isError()) {
             print var_dump($modx->error->failure($response->getMessage())).'<br /><br/></br>?';
        } else {
            $object = $response->getObject();
            print "\n";
            print "<br>Был обновлен документ с ID {$object['id']}";
        }
    }
}
return $html;
//$page = $modx->getObject('modResource','5071');
// $page->set('alias','ttest');
// $modx->runProcessor('resource/update', $page->toArray());
