{block 'HEAD'}
    <!doctype html>
    <!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7 ie6 oldie" lang="ru" dir="ltr"> <![endif]-->
    <!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7 oldie" lang="ru" dir="ltr"> <![endif]-->
    <!--[if IE 8]><html class="no-js lt-ie9 ie8 oldie" lang="ru" dir="ltr"> <![endif]-->
    <!--[if gt IE 8]><!-->
    <html class="no-js" xmlns="http://www.w3.org/1999/xhtml" lang="ru" dir="ltr" prefix="og: http://ogp.me/ns#">
        <!--<![endif]-->
        {include 'file:chunks/common/head.tpl'}
    {/block}
    <body class="tmpl-index landingBody lang-ru com-k2 view-item layout-item task-none zoo-itemid-0 zoo-categoryid-0 device-ios-no device-android-no device-mobile-no device-table-no">
        {block 'HEADER'}
            {if $_modx->resource.slideImg !=''}
                {var $style = $_modx->resource.slideImg}
            {else}
                {var $style = '/images/full/slide12.jpg'}
            {/if}
            <header style="background: url('{$style}') no-repeat center top;background-size: cover;">
                {include 'file:chunks/common/topmenu.tpl'}
                {include 'file:chunks/landingBlocks/slider.tpl'}
            </header>
        {/block}
        {block 'CONTENT'}
            {include 'file:chunks/common/breadcrumbs.tpl'}
            <div class="container outside-component">    
                <div class="component-wrapper">
                    <div id="k2Container" class="itemView">
                        {include 'file:chunks/contacts/contacts.tpl'}
                    </div>
                </div>
            </div>
            {include 'file:chunks/landingBlocks/anyQuestions.tpl'}            
            {include 'file:chunks/common/footer.tpl'}
            {include 'file:chunks/common/weCallYou.tpl'}
            {include 'file:chunks/common/jivoSite.tpl'}
        {/block}
    </body>
</html>