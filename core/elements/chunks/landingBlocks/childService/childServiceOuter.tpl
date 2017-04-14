{if $_modx->resource.template!=15&&$_modx->resource.template!=19}
    {var $res = $_modx->resource.id}
{else}
    {var $res = $_modx->resource.parent}
{/if}
<div class="container">
    <div class=" _exteded_text_block">
        <div class="custom_exteded_text_block">
            <div class="row">
                <div class="col-xs-4 childSrviceMenuOuter">
                {$_modx->runSnippet('pdoMenu',[
                    'parents' => $res,
                    'level' => 1,
                    'sortby' => 'menuindex',
                    'sortdir' => 'ASC',
                    'tplOuter' => '@FILE:chunks/landingBlocks/childService/childServiceSidebarMenuOuter.tpl',
                    'tpl' => '@FILE:chunks/landingBlocks/childService/childServiceSidebarMenu.row.tpl' 
                ])}
                </div>
                <div class="col-xs-8 childSrviceOuter">
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