{if $_modx->resource.companyRecords!=''}
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
                                    {$_modx->runSnippet('getImageList',[
                                'tvname' => 'companyRecords',
                                'tpl' => 'companyRecords.row.tpl'
                            ])}
                                </div>
                                {*</div>*}
                                <div class="clr"></div>
                                <div class="clr"></div>
                            </div>
                            <div class="clr"></div>
                            <div class="itemBackToTop">
                                <a class="k2Anchor" href="/uncategorised/2807-ocenka#startOfPageId2807">
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