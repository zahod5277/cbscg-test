{extends 'file:templates/base.tpl'}
{block 'HEADER'}
    <header>
        {include 'file:chunks/infocenter/new/topmenu.tpl'}
    </header>
{/block}
{block 'CONTENT'}
    {include 'file:chunks/infocenter/breadcrumbs.tpl'}
    {include 'file:chunks/infocenter/introSearch.tpl'}
    {include 'file:chunks/infocenter/mostPopular.tpl'}
    {include 'file:chunks/infocenter/readersReviews.tpl'}
    {include 'file:chunks/infocenter/companyPractics.tpl'}
    {include 'file:chunks/infocenter/videos.tpl'}
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
{/block}