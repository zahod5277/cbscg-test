<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7 ie6 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ru" dir="ltr" prefix="og: http://ogp.me/ns#">
<!--<![endif]-->
{include 'file:chunks/common/head.tpl'}
<body class="tmpl-index landingBody itemid-125 lang-ru com-k2 view-item layout-item task-none zoo-itemid-0 zoo-categoryid-0 device-ios-no device-android-no device-mobile-no device-table-no">
    {if $_modx->resource.slideImg!=''}
        {var $img = $_modx->resource.slideImg}
        {else}
        {var $img = '/images/full/slide3.jpg'}
    {/if}
    <header style="background: url('{$img}') no-repeat center top;background-size: cover;">
        {include 'file:chunks/common/topmenu.tpl'}
        {include 'file:chunks/main/mainslider.tpl'}
    </header>
    {include 'file:chunks/main/services.tpl'}
    {include 'file:chunks/main/advantages.tpl'}
    {include 'file:chunks/main/facts.tpl'}
    {include 'file:chunks/main/trust.tpl'}
    {include 'file:chunks/main/reviews.tpl'}
    {include 'file:chunks/main/infocenter.tpl'}
    {include 'file:chunks/main/newsSubscribe.tpl'}
    {include 'file:chunks/landingBlocks/anyQuestions.tpl'}
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
</body>
</html>