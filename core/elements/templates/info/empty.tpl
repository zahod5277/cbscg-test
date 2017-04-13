{extends 'file:templates/base.tpl'}
{block 'HEADER'}
    <header>
        {include 'file:chunks/infocenter/new/topmenu.tpl'}
    </header>
{/block}
{block 'CONTENT'}
    <div class="container outside-component">
        <div id="k2Container" class="itemListView  genericView">
            {$_modx->resource.content}
        </div>
    </div>
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
{/block}