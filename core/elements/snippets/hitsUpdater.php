<?php

//SELECT k2.`title`,k2.`hits`,modx.`pagetitle` FROM `cbs_k2_items` k2 LEFT JOIN `qtQqv2ATujag_site_content` modx ON (k2.`title` = modx.pagetitle) WHERE modx.`template` = 4

set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);

$result = $modx->query("SELECT k2.`title`,k2.`hits`,modx.`id`,modx.`pagetitle` FROM `cbs_k2_items` k2 LEFT JOIN `qtQqv2ATujag_site_content` modx ON (k2.`title` = modx.pagetitle) WHERE modx.`template` = 4 LIMIT 3300,300");
if (!is_object($result)) {
    return 'No result!';
} else {
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $page = $modx->getObject('modResource', $row['id']);
        $hits = $row['hits'];
        $page->setTVValue(43, $hits);
        $page->save();
        $response = $modx->runProcessor('resource/update', $page->toArray());
        if ($response->isError()) {
            print var_dump($modx->error->failure($response->getMessage())) . '<br /><br/></br>?';
        } else {
            $object = $response->getObject();
            print "\n";
            print "<br>Был обновлен документ с ID {$object['id']}";
        }
    }
}
return $html;
