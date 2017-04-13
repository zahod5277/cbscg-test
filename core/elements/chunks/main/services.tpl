<div class="container">
    <div class="">
        <div class="blue module-title">
            <h2>Услуги компании</h2>
        </div>
        <div class="custom">
            <div class="our-services">
                <div class="row">
                    {$_modx->resource.content}
                </div>
                <div class="our-services-inner">
                    {$_modx->runSnippet('pdoResources',[
                       'parents' => 5010,
                       'resources' => '3,4,48,5033,5076,42,5036',
                       'level' => 1,
                       'sortby' => 'menuindex',
                       'sortdir' => 'ASC',
                       'includeTVs' => 'ico,serviceTitle,serviceDescr',
                       'prepareTVs' => 1,
                       'processTVs' => 1,
                       'tpl' => '@FILE:chunks/main/services.row.tpl'
                    ])}
                </div>
            </div>
        </div>
    </div>
</div>