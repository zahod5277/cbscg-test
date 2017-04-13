<?php
$pdo = $modx->getService('pdoTools');
if ($page = $modx->getObject('modResource',$id)){
    
    $starSum = $page->getTVValue(44);
    $ratingVotes = $page->getTVValue(45);
    
    $value = round($starSum/$ratingVotes);
    $inPercents = $value * 20;
    if (!isset($from)){
        $from = 1;
    }
    if (!isset($to)){
        $to = 5;
    }
    if (!isset($tplOuter)){
        $tplOuter = '@FILE:chunks/infocenter/rating.outer.tpl';
    }
    if (!isset($tpl)){
        $tpl = '@FILE:chunks/infocenter/rating.row.tpl';
    }
    for ($from;$from <= $to;$from++){
        $placeholders = array(
            'id' => $id,
            'idx' => $from,
            'to' =>  $to
        );
        $output .= $pdo->getChunk($tpl,$placeholders);
    }
    $html = $pdo->getChunk($tplOuter,array(
        'output' => $output,
        'value' => $value,
        'width' => $inPercents
        ));
    return $html;
}
else {
    return;
}

