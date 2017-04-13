<?php
$pdo = $modx->getService('pdoTools');
$query = $modx->newQuery('modResource');
$query->select('modResource.id');
$query->leftJoin('modTemplateVarResource', 'TAG', 'modResource.id=TAG.contentid');
$query->leftJoin('modTemplateVarResource', 'RATING', 'modResource.id=RATING.contentid');

if (($_GET['search'] != '')) {
    $search = $_GET['search'];
    $string = array(
        array(
            'modResource.pagetitle:LIKE' => '%' . $search . '%',
            'OR:modResource.content:LIKE' => '%' . $search . '%'
        ),
        array(
            'modResource.template:=' => 4
        )
    );
} else {
    $string = array(
        'modResource.template:=' => 4
    );
}
if ($_GET['cat'] != 0) {
    if ($_GET['cat']!=5046){
        $cat = $_GET['cat'];
        $categories = array(
            'AND:modResource.parent:=' => $cat
        );
    } else {
        $cat = array(5030,5031,5032,5037,5038,5039,5040,5041);
        $categories = array(
            'AND:modResource.parent:IN' => $cat
        );
    }
} else {
    $categories = array(
    );
}

if ($_GET['tag'] != '0') {
    $tag = $_GET['tag'];
    $tags = array(
        'AND:TAG.tmplvarid:=' => 1,
        'AND:TAG.value:LIKE' => '%' . $tag . '%'
    );
} else {
    $tags = array(
    );
}

$pdoWhere = '';
$sortby = 'createdon';
switch ($_GET['searchlast']) {
    case 0:
        $query->sortby('modResource.createdon', 'ASC');
        $sortby = 'createdon';
        $rating = array();
        break;
    case 1:
        $rating = array(
            'AND:RATING.tmplvarid:=' => 43
        );
        $query->sortby('RATING.value', 'DESC');
        $sortby = 'HitsPage';
        break;
    case 2:
        $rating = array();
        $sortby = 'starSum';
        break;
    case 3:
        $rating = array();
        $pdoWhere = '{"atention:=":"1"}';
        break;
}

$where = array_merge($string, $categories, $tags, $rating);
$query->distinct();
$query->where($where);
$query->prepare();
$query->stmt->execute();
$res = $query->stmt->fetchAll(PDO::FETCH_COLUMN, 0);
$ids = implode(',', $res);

//$raw = $query->toSQL();
//return $raw;

if (($ids!='')){
$output = $pdo->runSnippet('pdoPage', array(
'parents' => '5009',
 'limit' => 15,
 'hideContainers' => 1,
 'pageLimit' => 11,
 'tplPageWrapper' => '@INLINE {$prev}{$pages}{$next}',
 'tplPageActive' => '@INLINE <li><span class="pagenav">{$pageNo}</span></li>',
 'tplPage' => '@INLINE <li><a href="{$href}" class="pagenav">{$pageNo}</a></li>',
 'tplPagePrev' => '@INLINE <li class="pagination-prev"><a href="{$href}">Назад</a></li>',
 'tplPageNext' => '@INLINE <li class="pagination-next"><a href="{$href}">Вперед</a></li>',
 'tplPagePrevEmpty' => '@INLINE <li class="pagination-prev"><span class="pagenav">Назад</span></li>',
 'tplPageNextEmpty' => '@INLINE <li class="pagination-next"><span class="pagenav">Вперёд</span> </li>',
 'resources' => $ids,
 'includeTVs' => 'HitsPage,isVideo,starSum,atention',
 'where' => $pdoWhere,
 'sortby' => $sortby,
 'sortdir' => 'DESC',
 'prepareTVs' => 1,
 'processTVs' => 1,
 'tpl' => '@FILE:chunks/infocenter/search.row.tpl'
));
$output .= '<div class="k2Pagination">
                    <ul>
                        {$_modx->getPlaceholder("page.nav")}
                    </ul>
                    <div class="clr"></div>
                </div>';
}
else {
    $output = '<h3>Ничего не найдено. Попробуйте упростить запрос</h3>';
}
return $output;