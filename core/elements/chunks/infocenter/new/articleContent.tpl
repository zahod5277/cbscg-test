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
                <div class="col-xs-8 ArticleContent mb40px">
                    <div class="infoCenterArticleTitle">
                        <div class="articleIco">
                            <span class="articleIconImg"></span>
                        </div>
                        <div class="articleTitle">
                            <h1>{$_modx->resource.pagetitle}</h1>
                        </div>
                    </div>
                    <div class="hidden-print infocenterRatingOuter">
                        <div class="itemDateCreatedOuter">
                            <!-- Date created -->
                            <span class="itemDateCreated greyText">
                                {$_modx->resource.createdon|date_format:'%d %B %Y'}
                            </span>
                        </div>
                        <div class="itemDateCreatedOuter infocenterNewsRating">
                            <div class="itemRatingBlock">
                                <span class="greyText">Рейтинг новости</span>
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
                        <div class="itemDateCreatedOuter infocenterViews">
                            <span class="itemHits greyText">
                                {var $count = $_modx->runSnippet('!HitsPage',[
                                    'saveTv' => 'true'
                                ])}
                                Просмотров: {$count} <i class="viewProgress"></i>
                            </span>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <div class="itemBody padding0">
                        <div class="itemFullText infocenterFulltext">
                            {if $_modx->resource.content!=''}
                                {$_modx->resource.content}
                            {else}
                                {$_modx->resource.introtext}
                            {/if}
                        </div>
                    </div>
                    <div class="hidden-print">
                    </div>
                    <div class="infocenterUnderContent hidden-print">
                        <div class="ratingAndSocials">
                            <div class="underContentRating">
                                <span class="underContentRatingTitle">Оцените новость</span>
                                <div class="itemRatingForm ratingStars">
                                    {$_modx->runSnippet('@FILE:snippets/getRating.php',[
                                        'id' => $_modx->resource.id,
                                        'from' => 1,
                                        'to' => 5,
                                        'tpl' => '@FILE:chunks/infocenter/rating.row.tpl',
                                        'tplOuter' => '@FILE:chunks/infocenter/ratingEmpty.outer.tpl'
                                    ])}
                                </div>
                                <div class="underContentShareIcons">
                                <span>Поделиться с друзьями и коллегами:</span>
                                {include 'file:chunks/common/shareIcons.tpl'}
                                </div>
                            </div>
                        </div>
                        <div class="tagsAndPrintSend">
                            <div class="">
                                <!-- Item tags -->
                                <div class="itemTagsBlock no-label">
                                    <span class="underContentTagsTitle">
                                        <i class="labelIco"></i>
                                        <span>Теги по теме [[#[[#[[*id]].parent]].pagetitle]]</span>
                                    </span>
                                    {$_modx->runSnippet('@FILE:snippets/getTags.php',[
                                        'id' => $_modx->resource.id,
                                        'tpl' => '@FILE:chunks/infocenter/new/tags.row.tpl'
                                        ])}
                                </div>
                            </div>
                            <div class="floatLeft printSendOuter">
                                <!-- Print Button -->
                                <a class="underContentPrintBtn" rel="nofollow" href="{$_modx->makeUrl($_modx->resource.id)}">
                                    <i class="printer"></i>Хочу распечатать
                                </a>
                                <a class="underContentSendBtn" href="#" data-toggle="modal" data-target="#send-article-to-email">
                                    <i class="mailbox"></i>
                                    Отправить на E-mail
                                </a>
                            </div>
                        </div>    
                    </div>
                </div>
                {include 'file:chunks/infocenter/new/sidebar.tpl'}
            </div>
            {include 'file:chunks/infocenter/new/articleFormAndRecommended.tpl'}
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