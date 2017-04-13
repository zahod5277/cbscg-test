<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7 ie6 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" xmlns="http://www.w3.org/1999/xhtml" lang="ru" dir="ltr" prefix="og: http://ogp.me/ns#">
<!--<![endif]-->
{include 'file:chunks/common/head.tpl'}
<body class="tmpl-index landingBody itemid-101 lang-ru com-k2 view-item layout-item task-none zoo-itemid-0 zoo-categoryid-0 device-ios-no device-android-no device-mobile-no device-table-no">        
    {if $_modx->resource.slideImg !=''}
        {var $style = $_modx->resource.slideImg}
        {else}
        {var $style = '/images/full/slide2.jpg'}
    {/if}
    <header style="background: url('{$style}') no-repeat center top;background-size: cover;">
        {include 'file:chunks/common/topmenu.tpl'}
        {include 'file:chunks/company/slider.tpl'}
    </header>
    {include 'file:chunks/common/breadcrumbs.tpl'}
    {include 'file:chunks/company/about.tpl'}
    {include 'file:chunks/company/adv.tpl'}
    {include 'file:chunks/company/workers.tpl'}
    <div class="container">
    </div>
    <div class="leo-outside-bottom">
        <div class="container">
            {include 'file:chunks/company/keys.tpl'}
            {include 'file:chunks/company/reviews.tpl'}
        </div>
    </div>
    {include 'file:chunks/landingBlocks/anyQuestions.tpl'}    
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
    {ignore}
    <script>
        function goToByScroll(id){
            // Remove "link" from the ID
          id = id.replace("link", "");
            // Scroll
          $('html,body').animate({
              scrollTop: $(id).offset().top-70},
              'slow');
         }
         $('.about-compane-yellow-icons a').on('click',function(e){
            e.preventDefault(); 
            // Call the scroll function
            goToByScroll($(this).attr('href')); 
         });
        //$('.about-compane-yellow-icons a').smoothScroll({
         // speed:1000,
        //});
    </script>
    {/ignore}
</body>

</html>