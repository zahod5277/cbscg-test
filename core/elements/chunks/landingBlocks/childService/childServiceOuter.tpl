<div class="container">
    <div class=" _exteded_text_block">
        <div class="custom_exteded_text_block">
            <div class="row">
                <div class="col-xs-3">
                {$_modx->runSnippet('pdoMenu',[
                    'parents' => $_modx->resource.parent,
                    'level' => 1,
                    'tplOuter' => '@FILE:chunks/landingBlocks/childService/childServiceSidebarMenuOuter.tpl',
                    'tpl' => '@FILE:chunks/landingBlocks/childService/childServiceSidebarMenu.row.tpl' 
                ])}
                </div>
                <div class="col-xs-9 childSrviceOuter">
                    <div class="module-title blue">
                        <h2>
                            {$_modx->resource.pagetitle}
                        </h2>
                    </div>
                    {$_modx->resource.content}
                </div>
            </div>
        </div>
    </div>
    <div class="mb40px">
        {include 'file:chunks/landingBlocks/consultForm.tpl'}
    </div>
</div>