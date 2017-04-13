<div class="leo-outside-bottom two">
    <div class="container">
    </div>
</div>
<div class="our-client-comments">
    <div class="container">
        {if $_modx->resource.reviewId!=''}
            <div class=" buch_comments _service_paginator">
                <div class="blue module-title">
                    <h2>
                        Отзывы клиентов
                    </h2>
                   <br/>
                </div>
                <div id="k2ModuleBox262" class="k2ItemsBlock buch_comments _service_paginator">
                    <div class="row">
                       {$_modx->runSnippet('!pdoResources',[
                       'parents' => $_modx->resource.reviewId,
                       'level' => 1,
                       'limit' => 0,
                       'includeTVs' => 'otzLogo, fioOtz, otzTitle,reviewImg',
                       'processTVs' => 1,
                       'sortby' => 'menuindex',
                       'sortdir' => 'ASC',
                        'showUnpublished' => 1,
                       'prepareTVs' => 1,
                       'includeContent' => 1,
                       'tpl' => '@FILE:chunks/landingBlocks/tpl/review.row.tpl'
                    ])}
                    </div>
                    <div class="leo-paginator">
                        <div class="wrapper-pagination">
                            <div class="pagination"></div>
                            <div class="pagination-bag">
                                <span class="start-question"></span>
                                <span class="end-question"></span> из
                                <span class="count-questions"></span>
                            </div>
                        </div>
                    </div>
                    <div class="display-all-comments">
                        <a rel="nofollow" href="/informaciya-o-kompaniye/#our-reviews" class="upper-case grey">смотреть все отзывы</a>
                    </div>
                </div>
                <script type="text/javascript">
                    document.addEventListener("DOMContentLoaded", init());
                    function init() {
                        customLeoPagenator(
                                1,
                                jQuery('._service_paginator'),
                                jQuery('._service_paginator .leo-paginator'),
                                2,
                                true
                                );

                        SqueezeBox.assign($$('a.boxed'));
                    }
                </script>
            </div>
        {/if}
        {if $_modx->resource.keysId!=''}
            <div class=" _buch_keys _service_keys_paginator">
                <div class="blue module-title">
                    <h2>Кейсы</h2>
                </div>
                &﻿﻿#65279;
                <div id="k2ModuleBox263" class="k2ItemsBlock _buch_keys _service_keys_paginator">
                    <div class="row">
                        {$_modx->runSnippet('pdoResources',[
                       'parents' => $_modx->resource.keysId,
                       'includeContent' => 1,
                       'sortby' => 'menuindex',
                       'showUnpublished' => 1,
                       'sortdir' => 'ASC',
                       'level' => 1,
                       'includeContent' => 1,
                       'tpl' => '@FILE:chunks/landingBlocks/tpl/keys.row.tpl'
                    ])}
                    </div>
                    <div class="leo-paginator">
                        <div class="wrapper-pagination">
                            <div class="pagination"></div>
                            <div class="pagination-bag">
                                <span class="start-question"></span>
                                <span class="end-question"></span> из
                                <span class="count-questions"></span>
                            </div>
                        </div>
                    </div>
                    <div class="display-all-comments">
                        <a rel="nofollow" href="/informaciya-o-kompaniye/#tabs-ocenka" class="upper-case grey">смотреть все кейсы</a>
                    </div>
                </div>
                <script type="text/javascript">
                    document.addEventListener("DOMContentLoaded", init());
                    function init() {
                        customLeoPagenator(
                                1,
                                jQuery('._service_keys_paginator'),
                                jQuery('._service_keys_paginator .leo-paginator'),
                                4,
                                true
                                );
                    }
                </script>
            </div>
        {/if}
    </div>
</div>