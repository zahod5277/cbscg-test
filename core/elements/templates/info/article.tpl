{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/infocenter/articleBreadcrumbs.tpl'}
    {include 'file:chunks/infocenter/articleContent.tpl'}
    <div class="container">
    </div>
    <div class="leo-outside-bottom">
        <div class="container">
        </div>
    </div>
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
{/block}