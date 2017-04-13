<div class="our-advantage">
    <div class="container">
        <div class=" _service_company">
            <div class="blue module-title">
            <h2>Услуги компании</h2>
            </div>
            <div class="custom_service_company">
                {$_modx->runSnippet('pdoResources',[
                    'parents' => $_modx->resource.id,
                    'level' => 1,
                    'sortby' => 'menuindex',
                    'totalVar' => 'totalus',
                    'tpl' => '@FILE:chunks/landingBlocks/tpl/childService.row.tpl.tpl'
                ])}
            </div>
        </div>
    </div>
</div>