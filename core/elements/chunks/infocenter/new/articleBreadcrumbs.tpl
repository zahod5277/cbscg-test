<div class="breadcrumbs hidden-print">
    <div class="container">
        <div id="k2ModuleBox146" class="infocenterBreadcrumb">
            <div class="row">
                <div class="col-xs-9 infocenterBreadcrumbCrumbs">
                    {$_modx->runSnippet('pdoCrumbs',[
                       'showHome' => 1,
                        'tplWrapper' => '@INLINE {$output}',
                        'tpl' => '@INLINE <a href="{$link}">{$pagetitle}</a>',
                        'tplCurrent' => '@INLINE <a href="{$link}">{$pagetitle}</a>',
                        'outputSeparator' => '<span class="bcSeparator">/</span>'
                    ])}
                </div>
                <div class="col-xs-3 breadcrumbs-link">
                    <a href="{$_modx->makeUrl(5116)}"><i class="zoomIco"></i><span>Найти еще публикации</span></a>
                </div>
            </div>
        </div>
    </div>
</div>