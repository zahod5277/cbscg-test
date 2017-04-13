{extends 'file:templates/base.tpl'}
{block 'HEADER'}
    <header>
        {include 'file:chunks/infocenter/new/topmenu.tpl'}
    </header>
{/block}
{block 'CONTENT'}
    {include 'file:chunks/common/breadcrumbs.tpl'}
    {include 'file:chunks/infocenter/infoCategory.tpl'}
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
{/block}