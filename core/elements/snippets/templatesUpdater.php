<?php

set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);

$pages = $modx->getCollection('modResource',array('parent:IN'=> array(5030,5031,5032,5037,5038,5039,5040,5041)));
foreach ($pages as $page){
    $page->set('template',4);
    $page->save();
}
return $html;
