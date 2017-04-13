<div class="breadcrumbs hidden-print">
    <div class="container">
        <div id="k2ModuleBox146" class="k2BreadcrumbsBlock inner_ leo_breadcrumbs">
            <div class="row">
                <div class="col-xs-9">
                    {$_modx->runSnippet('pdoCrumbs',[
                       'showHome' => 1,
                        'tplWrapper' => '@INLINE {$output}',
                        'tpl' => '@INLINE <a href="{$link}">{$pagetitle}</a>',
                        'tplCurrent' => '@INLINE <a href="{$link}">{$pagetitle}</a>',
                        'outputSeparator' => '<span class="bcSeparator">/</span>'
                    ])}
                </div>
                <div class="col-xs-3 breadcrums-link">
                  
                </div>
            </div>
        </div>
    </div>
</div>