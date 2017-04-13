<?php
$pdo = $modx->getService('pdoTools');
if ($page = $modx->getObject('modResource',$id)){
    //можно было бы конечно сделать нормальную маршрутизацию, но мне лень
    $tagsUrl = array(
        'НДС' => 'nds',
        'Нововведения' => 'novovvedeniya',
        'Другие налоги' => 'drugie-nalogi',
        'Практика' => 'praktika',
        'Взносы' => 'vznosy',
        'Изменения' => 'izmeneniya',
        'Общее' => 'obschee',
        'Спецрежимы' => 'specrezhimy',
        'Прибыль' => 'прибыль',
        'НДФЛ' => 'ндфл',
        'Контролируемые' => 'kontroliruemye',
        'Трансфертное' => 'transfertnoe',
        'ндф' => 'ndf'
        );
    
    if (!isset($tpl)){
        $tpl = '@FILE:chunks/infocenter/tags.row.tpl';
    }
    if (!isset($delimeter)){
        $delimeter = '||';
    }
    $tvs = $page->getTVValue(1);
    $tvs = explode($delimeter, $tvs);
    foreach ($tvs as $tv){
        $placeholders = array(
            'tag' => $tv,
            'url' => $tagsUrl[$tv]
            );
        $output .= $pdo->getChunk($tpl,$placeholders);
    }
    return $output;
} else {
    return;
}