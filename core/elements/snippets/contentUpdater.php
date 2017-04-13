<?php
//SELECT k2.id, modx.id, k2.title, cat.name, k2.created, k2.hits, k2.alias, modx.pagetitle FROM `cbs_k2_items` k2 LEFT JOIN `modx_site_content` modx ON (k2.title = modx.pagetitle) LEFT JOIN `cbs_k2_categories` cat ON (k2.catid = cat.id) WHERE k2.id > 3421

set_time_limit(500);
$modx->setDebug(E_ALL & ~E_NOTICE); // sets error_reporting to everything except NOTICE remarks
$modx->setLogLevel(modX::LOG_LEVEL_DEBUG);

$result = $modx->query("SELECT k2.id, modx.id, k2.title, k2.fulltext, k2.introtext, cat.name, k2.created, k2.hits, k2.alias, modx.pagetitle FROM `cbs_k2_items` k2 LEFT JOIN `qtQqv2ATujag_site_content` modx ON (k2.title = modx.pagetitle) LEFT JOIN `cbs_k2_categories` cat ON (k2.catid = cat.id) WHERE k2.id > 3421");
if (!is_object($result)) {
    return 'No result!';
} else {
    while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
        if (!$page = $modx->getObject('modResource', array('pagetitle:=' => $row['title']))) {
            if ($parent = $modx->getObject('modResource', array('pagetitle:=' => $row['name']))) {
                $parent = $parent->get('id');
                $data['pagetitle'] = $row['title'];
//            $data['alias'] = $row['alias'];
                $data['content'] = $row['introtext'];
                $data['template'] = 4;
                $data['createdon'] = strtotime($row['created']);
                $data['parent'] = $parent;
                $data['tvs'] = true;
                $data['tv43'] = $row['hits'];
                $response = $modx->runProcessor('resource/create', $data);
                if ($response->isError()) {
                    print var_dump($modx->error->failure($response->getMessage())) . '<br /><br/></br>?';
                } else {
                    $object = $response->getObject();
                    print "\n";
                    print "<br>Был обновлен документ с ID {$object['id']}";
                }
            }

//            $html .= '<div style="margin-bottom:25px;"><h1>'.$pagetitle.'</h1>'
//                    . '<p>'.$data['alias'].'</p>'
//                    . '<p>'.$parent.'</p>'
//                    . '<p>'.$data['tv43'].'</p>'
//                    . '<p>created: '.$data['createdon'].'</p>'
//                    . '</div>';
        }

//        $data = array('pagetitle' => 'Название', 'content' => 'Текст страницы');
//        $modx->runProcessor('resource/create', $data);
//        
//        $response = $modx->runProcessor('resource/update', $page->toArray());
//        if ($response->isError()) {
//            print var_dump($modx->error->failure($response->getMessage())) . '<br /><br/></br>?';
//        } else {
//            $object = $response->getObject();
//            print "\n";
//            print "<br>Был обновлен документ с ID {$object['id']}";
//        }
    }
}
return $html;