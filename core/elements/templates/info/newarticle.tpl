{extends 'file:templates/base.tpl'}
<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7 ie6 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ru" dir="ltr" prefix="og: http://ogp.me/ns#">
<!--<![endif]-->
{block 'HEAD'}
    {include 'file:chunks/common/head.tpl'}
{/block}
<body class="tmpl-index itemid-125 lang-ru com-k2 view-item layout-item task-none zoo-itemid-0 zoo-categoryid-0 device-ios-no device-android-no device-mobile-no device-table-no">
    {block 'HEADER'}
    <header>
    {include 'file:chunks/infocenter/new/topmenu.tpl'}
    </header>
    {/block}
    {block 'CONTENT'}
        {include 'file:chunks/infocenter/new/articleBreadcrumbs.tpl'}
        {include 'file:chunks/infocenter/new/articleContent.tpl'}
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
</body>

</html>