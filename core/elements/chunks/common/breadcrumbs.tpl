<div class="breadcrumbs hidden-print">
    <div class="container">
        <div id="k2ModuleBox146" class="k2BreadcrumbsBlock inner_ leo_breadcrumbs">
            <div class="row">
                <div class="col-xs-9">
                    {$_modx->runSnippet('pdoCrumbs',[
                       'showHome' => 1,
                        'tplWrapper' => '@INLINE {$output}',
                        'exclude' => '5010',
                        'tpl' => '@INLINE <a href="{$link}">{$pagetitle}</a>',
                        'tplCurrent' => '@INLINE {if $pagetitle=="Контакты"}<a href="{$link}">{$pagetitle}</a>{else}<span class="blueBreadcrumb">{$pagetitle}</span>{/if}'
                        'outputSeparator' => '<span class="bcSeparator">/</span>'
                    ])}
                </div>
            </div>
        </div>
    </div>
</div>