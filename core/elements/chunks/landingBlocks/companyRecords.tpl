{if $_modx->resource.companyRecords!=''}
    {var $companyRecords = $_modx->runSnippet('getImageList',[
        'tvname' => 'companyRecords',
        'tpl' => 'companyRecords.row.tpl'
    ])}
{*Если достижения не заполнены, но это дочерняя услуга, подтянуть достижения с родительской услуги*}  
{elseif ($_modx->resource.companyRecords=='')&&($_modx->resource.template==19||$_modx->resource.template==15)}
    {var $companyRecords = $_modx->runSnippet('getImageList',[
        'tvname' => 'companyRecords',
        'tpl' => 'companyRecords.row.tpl',
        'docid' => $_modx->resource.parent
    ])}
{/if}

{*Если что-то есть, то выводим*}
{if $companyRecords!=''}
    <div id="companyRecords">
        <div id="companyRecordsInner">
            <div class="container outside-component">
                <div class="component-wrapper">
                    <span id="startOfPageId2807"></span>
                    <div id="k2Container" class="companyRecords mobile-full-width itemView _main_style">
                        <div class="special-block mobile-full-width">
                            <div class="itemHeader blue module-title companyRecordsH">
                                <h2>Достижения компании</h2>
                            </div>
                            <div class="itemBody">
                                {*<div class="itemFullText">*}
                                <div class="our-advantage-inner">
                                    {$companyRecords}
                                </div>
                                {*</div>*}
                                <div class="clr"></div>
                                <div class="clr"></div>
                            </div>
                            <div class="clr"></div>
                            <div class="itemBackToTop">
                                <a class="k2Anchor" href="#">
                                    Наверх		</a>
                            </div>
                            <div class="clr"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
{/if}