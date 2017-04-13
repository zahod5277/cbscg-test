<div class="leo-outside-bottom two">
    <div class="container">
    </div>
</div>
<div class="our-client-comments">
    <div class="container">
        <div class=" slider_comments">
            <div class="blue module-title">
                <h2>Отзывы клиентов</h2>
            </div>
            <div class="no-border">
                <div id="djslider-loader132" class="djslider-loader djslider-loader-default" data-animation=' { "auto":"1","transition":"linear","css3transition":"linear","duration":"1000","delay":4000}' data-djslider='{ "id":"132","slider_type":"0","slide_size":460,"visible_slides":"2","direction":"left","show_buttons":"0","show_arrows":"2","preload":"0","css3":"1" } '>
                    <div id="djslider132" class="djslider djslider-default djsliderRow">
                        <div id="slider-container132" class="slider-container">
                            <ul id="slider132" class="djslider-in">
                                {$_modx->runSnippet('!pdoResources',[
                                    'parents' => 5029,
                                    'hideContainers' => 1,
                                    'depth' => 1,
                                    'limit' => 0,
                                    'resources' => $_modx->resource.otzIdsIndex,
                                    'includeContent' => 1,
                                    'includeTVs' => 'fioOtz,otzTitle,otzLogo,mainOrder',
                                    'prepareTVs' => 1,
                                    'processTVs' => 1,
                                    'sortby' => 'mainOrder',
                                    'sortdir' => 'ASC',
                                    'limit' => 120,
                                    'showUnpublished' => 1,
                                    'tpl' => '@FILE:chunks/main/reviews.row.tpl'
                                 ])}
                            </ul>
                        </div>
                        <div id="navigation132" class="navigation-container reviewsNavigation">
                            <img id="prev132" class="prev-button " src="/images/slider/left-arrow.png" alt="Previous" />
                            <img id="next132" class="next-button " src="/images/slider/right-arrow.png" alt="Next" />
                        </div>
                    </div>
                </div>
            </div>
            <div style="clear: both"></div>
        </div>
    </div>
</div>