<?php

if (empty($_COOKIE['vote_'.$id])){

$pdo = $modx->getService('pdotools');
$page = $modx->getObject('modResource',$id);
$points = $page->getTVValue(44);
$voters = $page->getTVValue(45);

$points = $points + $point;
$voters++;

$page->setTVValue(44,$points);
$page->setTVValue(45,$voters);

$res['html'] = $pdo->runSnippet('@FILE:snippets/getRating.php',array(
    'id' => $id,
    'from' => 1,
    'to' => 5,
    'tplOuter' => '@FILE:chunks/infocenter/rating.outer.tpl',
    'tpl' => '@FILE:chunks/infocenter/rating.row.tpl'
));
$res['status'] = 'success';

setcookie('vote_'.$id, 'yes');

} else {
    $res['html'] = 'Вы уже голосовали';
    $res['status'] = 'error';
}

return $res;