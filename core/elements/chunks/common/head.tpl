<head>
    {if $_modx->resource.seoTitle!=''}
                {var $title = $_modx->resource.seoTitle}
            {elseif $_modx->resource.longtitle!=''}
                {var $title = $_modx->resource.longtitle}
            {else}
                {var $title = $_modx->resource.pagetitle}
        {/if}
    <title>{$title}</title>
    <base href="{$_modx->config.site_url}" />
    
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta property="og:url" content="http://cbscg.ru/" />
    <meta property="og:title" content="{$_modx->resource.pagetitle}" />
    <meta property="og:type" content="article" />
    <meta property="og:description" content="{$_modx->resource.seoDescription}" />
    <meta name="keywords" content="{$_modx->resource.keywords}" />
    <meta name="yandex-verification" content="e7a35e4d705ce10e" />
    {if $_modx->resource.seoDescription==''}
        {if $_modx->resource.seoTitle!=''}
                <meta name="description" content="{$_modx->resource.seoTitle}" />
            {elseif $_modx->resource.longtitle!=''}
                <meta name="description" content="{$_modx->resource.longtitle}" />
            {else}
                <meta name="description" content="{$_modx->resource.pagetitle}" />
            {/if}
        {else}
         <meta name="description" content="{$_modx->resource.seoDescription}" />   
    {/if}    
    <link href="favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    {$_modx->runSnippet('MinifyX',[
    'minifyCss' => '1',
    'minifyJs' => '0',
    'registerCss' => 'default',
    'cssSources' => '
       css/k2.css,
       css/boxplus.paging.min.css,
       css/boxplus.carousel.min.css,
       css/djimageslider.css,
       css/modal.css,
       shadowbox/shadowbox/examples/build/shadowbox.css,
       rokbox/assets/styles/rokbox.css,
       css/styles-template-scssleafo.css,
       css/infocenternew.css'
    ])}
<script src="js/mootools-core.js" type="text/javascript"></script>
    <script src="js/core.js" type="text/javascript"></script>
    <script src="js/modal.js" type="text/javascript"></script>
    <script src="js/mootools-more.js" type="text/javascript"></script>  
    <script src="js/moo.slider.js?v=" type="text/javascript" defer="defer"></script>
    <script src="js/boxplus.carousel.min.js" type="text/javascript"></script>
    <script src="js/boxplus.lang.min.js" type="text/javascript"></script>
    <script src="shadowbox/shadowbox/min/index.php?g=sb&ad=base&lan=ru&play=img" type="text/javascript"></script>
    <script src="rokbox/assets/js/rokbox.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jquery.simplePagination.js"></script>
    <script type="text/javascript" src="js/hash.js"></script>
    {ignore}
    <script type="text/javascript">
        window.addEvent('domready', function () {
            SqueezeBox.initialize({});
            SqueezeBox.assign($$('a.modal'), {
                parse: 'rel'
            });
        });
        if (typeof (__jQuery__) == "undefined") {
            var __jQuery__ = jQuery;
        }

        if (typeof RokBoxSettings == 'undefined')
            RokBoxSettings = {pc: '100'};
        
        __jQuery__(document).ready(function () {
            __jQuery__("#sigplus_0e893c39973e8ab4ee8a5299ab6da653 ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0}));
            __jQuery__.boxplusLanguage("ru", "RU");
            __jQuery__("#sigplus_a6a0951c2521e06823a9a6ccdfaa55b9 ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0}));
            __jQuery__.boxplusLanguage("ru", "RU");
            __jQuery__("#sigplus_f910c29d616636da190a16fbd57e2c28 ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0})); __jQuery__.boxplusLanguage("ru", "RU");
            __jQuery__("#sigplus_3ebd30deae043b7e6011f151db9b714b ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0})); __jQuery__.boxplusLanguage("ru", "RU");
            __jQuery__("#sigplus_a645ab816551b99270f44cbaccaf08b3 ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0})); __jQuery__.boxplusLanguage("ru", "RU");
            __jQuery__("#sigplus_11c8dfd226f432c9cd8ecdfcf8f9ae3d ul:first").boxplusCarousel(__jQuery__.extend({}, {rtl: false, orientation: "horizontal", navigation: "top", showButtons: true, showLinks: false, showOverlayButtons: false, duration: 800, delay: 0})); __jQuery__.boxplusLanguage("ru", "RU");
        });
        
    </script>
    <script type="text/javascript">Shadowbox.init({autoplayMovies: false, handleOversize: "drag"});</script>
    {/ignore}
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="fb:admins" content="100010710669843"/>
    <meta property="fb:app_id" content="890436047736649"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
<script src="js/template.js?283" type="text/javascript"></script>
</head>