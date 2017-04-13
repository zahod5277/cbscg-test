<div class="container outside-component">
    <div class="component-wrapper">
        <div id="k2Container " class="itemListView">
            <div class="itemListCategoriesBlock">
                <div class="itemListCategory">
                    <div class="blue module-title">
                        <h2>
                            {if $_modx->resource.longtitle==''}
                                {$_modx->resource.pagetitle}
                            {else}
                                {$_modx->resource.longtitle}
                            {/if}
                            {if $_modx->resource.id!='5136'}
                            ({$_modx->runSnippet('pdoMenu',[
                                    'parents' => 5009,
                                    'resources' => $_modx->resource.id,
                                    'level' => 2,
                                    'tplOuter' => '@INLINE {$wrapper}',
                                    'tplInner' => '@INLINE {$wrapper}',
                                    'tplParentRow' => '@INLINE {$children}',
                                    'countChildren' => 1
                                 ])})
                            {/if}
                        </h2>
                        <div class="btn-search relative">
                            <a href="/search">Найти</a>
                        </div>  
                    </div>
{*                    <div class="btn-search relative">
                        <a href="/search?searchword">Найти</a>
                    </div>*}
                    <div class="clr"></div>
                </div>
            </div>
            <div class="itemList">
                <div id="itemListLeading">
                    {if $_modx->resource.parent=='5102'}
                       {var $where = '{"tags:LIKE":"%'~$_modx->resource.pagetitle~'%"}'}
                       {var $ids = 5009}
                       {elseif $_modx->resource.id=='5136'}
                           {var $where = '{"atention:=":"1"}'}
                           {var $ids = 5009}
                       {else}
                       {var $where = ''}
                       {var $ids = $_modx->resource.id}
                    {/if}
                    {$_modx->runSnippet('!pdoPage',[
                            'tpl' => '@FILE:chunks/infocenter/infoCategory.row.tpl',
                            'parents' => $ids,
                            'pageLimit' => 11,
                            'limit' => 15,
                            'sortby' => 'createdon'
                            'sortdir' => 'DESC',
                            'hideContainers' => 1,
                            'showUnpublished' => 1,
                            'where' => $where,
                            'includeTVs' => 'tags, HitsPage, starSum,atention,isVideo',
                            'prepareTVs' => 1,
                            'processTVs' => 1,
                            'tplPageWrapper' => '@INLINE {$prev}{$pages}{$next}',
                            'tplPageActive' => '@INLINE <li><span class="pagenav">{$pageNo}</span></li>',
                            'tplPage' => '@INLINE <li><a href="{$href}" class="pagenav">{$pageNo}</a></li>',
                            'tplPagePrev' => '@INLINE <li class="pagination-prev"><a href="{$href}">Назад</a></li>',
                            'tplPageNext' => '@INLINE <li class="pagination-next"><a href="{$href}">Вперед</a></li>',
                            'tplPagePrevEmpty' => '@INLINE <li class="pagination-prev"><span class="pagenav">Назад</span></li>',
                            'tplPageNextEmpty' => '@INLINE <li class="pagination-next"><span class="pagenav">Вперёд</span> </li>'
                        ])}
                </div>
                <div class="k2Pagination">
                    <ul>
                        {$_modx->getPlaceholder('page.nav')}
                    </ul>
                    <div class="clr"></div>
                </div>
            </div>
        </div>
    </div>
</div>