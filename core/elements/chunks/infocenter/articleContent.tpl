<div class="container outside-component">
    <div class="component-wrapper">
        <div id="fb-root"></div>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.5&appId=890436047736649";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <span id="startOfPageId3438"></span>
        <div id="k2Container" class="leo-basic-inner-page itemView ">
            <div class="row">
                <div class="col-xs-8 mb40px">
                    <div class="blue module-title infoCenterArticleTitle">
                        <h1>{$_modx->resource.pagetitle}</h1>
                    </div>
                    <div class="hidden-print">
                        <div class="itemDateCreatedOuter">
                            <!-- Date created -->
                            <span class="itemDateCreated greyText">
                                {$_modx->resource.createdon|date_format:'%d %B %Y'}
                            </span>
                        </div>
                        <div class="itemDateCreatedOuter">
                            <!-- Item tags -->
                            <div class="itemTagsBlock">
                                <ul class="itemTags">
                                 {$_modx->runSnippet('@FILE:snippets/getTags.php',[
                                    'id' => $_modx->resource.id,
                                    'tpl' => '@FILE:chunks/infocenter/tags.row.tpl'
                                 ])}
                                </ul>
                            </div>
                        </div>
                        <div class="itemDateCreatedOuter">
                            <div class="itemRatingBlock">
                                <span class="greyText">Рейтинг</span>
                                <div class="itemRatingForm ratingStars">
                                    {$_modx->runSnippet('@FILE:snippets/getRating.php',[
                                        'id' => $_modx->resource.id,
                                        'from' => 1,
                                        'to' => 5,
                                        'tpl' => '@FILE:chunks/infocenter/rating.row.tpl',
                                        'tplOuter' => '@FILE:chunks/infocenter/rating.outer.tpl'
                                    ])}
                                </div>
                                <div class="clr"></div>
                            </div>
                        </div>
                        <div class="itemDateCreatedOuter">
                            <span class="itemHits greyText">
                                {var $count = $_modx->runSnippet('!HitsPage',[
                                    'saveTv' => 'true'
                                ])}
                                Просмотров <b>{$count}</b>
                            </span>
                        </div>
                        <div class="floatLeft">
                            <!-- Print Button -->
                            <a class="itemPrintLink" rel="nofollow" 
                               href="{$_modx->makeUrl($_modx->resource.id)}">
                            </a>
                            <a class="itemEmailLink" href="#" data-toggle="modal" data-target="#send-article-to-email"> </a>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <div class="itemBody padding0">
                        <div class="itemFullText">
                            {if $_modx->resource.content!=''}
                                {$_modx->resource.content}
                            {else}
                               {$_modx->resource.introtext}
                            {/if}
                        </div>
                    </div>
                    <div class="hidden-print nofollow">
                        <div class="RobotoLight rateNews">Оцените новость</div>
                        <div class="yashare-auto-init" data-yashareL10n="ru" data-yashareType="small" data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,moimir" data-yashareTheme="counter"></div>
                    </div>
                    <div class="RobotoLight hidden-print nofollow infoCenterAbout">
                        Сейчас вы находитесь в разделе Инфо-центр нашего сайта.
                        <br> Инфо-центр - это некоммерческий информационный проект нашей компании CBS Group.
                        <br> Узнайте подробнее об Инфо-центре
                        <a class="RobotoBold colorWhite" href="/press-centr">здесь</a>
                    </div>
                    <div class="hidden-print">
                    </div>
                    <div class="blue module-title hidden-print">Оставьте ваш комментарий</div>
                    <div class="_info_page hidden-print">
                        <div class="info-block">
                            <ul role="tablist" class="nav nav-tabs comments">
                                <li role="presentation" class="active">
                                    <a role="tab" href="#vk" aria-controls="home" class="px16">Вконтакте</a>
                                </li>
                                <li role="presentation">
                                    <a role="tab" href="#fb" aria-controls="profile" class="px16">Facebook</a>
                                </li>
                                <li role="presentation">
                                    <a role="tab" href="#standart" aria-controls="profile" class="px16">Стандартный</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div id="vk" class="tab-pane active" role="tabpanel">
                                    <!-- Put this script tag to the <head> of your page -->
                                    <script type="text/javascript" src="//vk.com/js/api/openapi.js?121"></script>
                                    <script type="text/javascript">
                                        VK.init({
                                            apiId: 5200282,
                                            onlyWidgets: true
                                        });
                                    </script>
                                    <!-- Put this div tag to the place, where the Comments block will be -->
                                    <div id="vk_comments"></div>
                                    <script type="text/javascript">
                                        VK.Widgets.Comments("vk_comments", {
                                            limit: 15,
                                            width: "647",
                                            attach: false
                                        });
                                    </script>
                                </div>
                                <div id="fb" class="tab-pane" role="tabpanel">
                                    <div class="fb-comments" data-href="http://cbscg.ru/press-centr/spetsialnye-rezhimy/3438-obrazcy-fns-po-zapolneniyu-knig-pokupok-i-prodazh" data-width="647" data-numposts="10"></div>
                                </div>
                                <div id="standart" class="tab-pane" role="tabpanel">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row related-item hidden-print">
                        {$_modx->runSnippet('pdoNeighbors',[
                            'tplWrapper' => '@INLINE {$prev} {$next}',
                            'tplPrev' => '@INLINE <div class="col-xs-6"><a class="itemRelTitle" href="{$uri}">{$pagetitle}</a></div>',
                            'tplNext' => '@INLINE <div class="col-xs-6"><a class="itemRelTitle" href="{$uri}">{$pagetitle}</a></div>'
                        ])}
                    </div>
                </div>
                {include 'file:chunks/infocenter/sidebar.tpl'}
            </div>
            {include 'file:chunks/infocenter/articleFormAndRecommended.tpl'}
        </div>
        {ignore}
        <script type="text/javascript">
            jQuery(document).ready(function () {
                var $button = '<div style="text-align: right;"><a href="/search" class="breadcrumd-link RobotoLight">Найти публикации</a></div>';
                $('.breadcrums-link').append($button);
            });
        </script>
        {/ignore}
    </div>
</div>