<?php
//SELECT k2.id, modx.id, k2.title, cat.name, k2.created, k2.hits, k2.alias, modx.pagetitle FROM `cbs_k2_items` k2 LEFT JOIN `modx_site_content` modx ON (k2.title = modx.pagetitle) LEFT JOIN `cbs_k2_categories` cat ON (k2.catid = cat.id) WHERE k2.id > 3421

set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);
$result = $modx->query("SELECT modx.pagetitle, modx.id, modx.content, k2.title, k2.fulltext, k2.introtext FROM `qtQqv2ATujag_site_content` modx LEFT JOIN cbs_k2_items k2 ON (modx.pagetitle = k2.title) WHERE modx.`template` = 4 AND LENGTH(modx.`content`) < 500");
if (!is_object($result)) {
    return 'No result!';
} else {
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        $page = $modx->getObject('modResource', array('pagetitle:=' => $row['pagetitle']));
        $html .= $row['pagetitle'].'<br>';
        if (isset($page)) {
            $data['id'] = $row['id'];
            $data['content'] = $row['fulltext'];
            $page->set('content',$data['content']);
            $page->save();
        }
    }
}
return $html;