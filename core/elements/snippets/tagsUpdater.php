<?php
//SELECT 
//modx.`id`,k2.`id`, cbstag.`name` 
//	FROM `qtQqv2ATujag_site_content` modx 
//    LEFT JOIN `cbs_k2_items` k2 
//    	ON (modx.`pagetitle` = k2.`title`) 
//    LEFT JOIN `cbs_k2_tags_xref` old_tags 
//    	ON (k2.`id` = old_tags.`itemID`) 
//    LEFT JOIN `cbs_k2_tags` cbstag 
//    	ON (old_tags.`tagID` = cbstag.`id`) 
//    WHERE modx.`template` = 4 AND cbstag.`name` != ''

set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);

$result = $modx->query("SELECT modx.`id`,modx.`pagetitle`, cbstag.`name` FROM `qtQqv2ATujag_site_content` modx LEFT JOIN `cbs_k2_items` k2 ON (modx.`pagetitle` = k2.`title`) LEFT JOIN `cbs_k2_tags_xref` old_tags ON (k2.`id` = old_tags.`itemID`) LEFT JOIN `cbs_k2_tags` cbstag ON (old_tags.`tagID` = cbstag.`id`) WHERE modx.`template` = 4 AND cbstag.`name` != '' ORDER BY `modx`.`id` DESC LIMIT 241,50");
if (!is_object($result)) {
    return 'No result!';
} else {
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $page = $modx->getObject('modResource', $row['id']);
        $tv = $page->getTVValue(1);
        $tag = $row['name'];
        $newTV = $tv.'||'.$tag;
        $page->setTVValue(1,$newTV);
        $page->save();
//        $page->set('alias',$title);
//        $page->save();
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
return $output;
//$page = $modx->getObject('modResource','5071');
// $page->set('alias','ttest');
// $modx->runProcessor('resource/update', $page->toArray());
