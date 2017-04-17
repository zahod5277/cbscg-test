<div class="container">
    <div class=" _page_info_center_reviews">
        <div class="blue module-title">
            <h2>Отзывы читателей</h2>
        </div>
        <a name="our-reviews" class="our-reviews"></a>
        <div id="k2ModuleBox190" class="_page_about_company_revies k2ItemsBlock _page_info_center_reviews">
            <div class="row">
                {$_modx->runSnippet('pdoResources',[
                    'parents' => $_modx->resource.reviewId,
                    'depth' => 0,
                    'limit' => 0,
                    'sortby' => 'menuindex',
                    'sortdir' => 'ASC',
                    'includeContent' => 1,
                    'showUnpublished' => 1,
                    'tpl' => '@FILE:chunks/infocenter/readersReviews.row.tpl'
                ])}
            </div>
            <button data-toggle="modal" data-target="#rewies-info-center" class="blue-link">оставить отзыв</button>
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
            {include 'file:chunks/infocenter/sendReviewForm.tpl'}
        </div>
        {ignore}
        <script type="text/javascript">
            document.addEventListener("DOMContentLoaded", init());

            function init() {
                customLeoPagenator(
                        1,
                        jQuery('._page_about_company_revies'),
                        jQuery('._page_about_company_revies .leo-paginator'),
                        2,
                        true
                        );
            }
        </script>
        {/ignore}
    </div>
{*    <div class=" _tape_news _info_center_tape_news_">
        <div class="custom_tape_news _info_center_tape_news_">
            <div class="sub-form" id="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65">
                <div class="row">
                    <div class="col-xs-6">
                        <div>
                            <div class="sub-friends">
                                Сэкономьте 4 часа в неделю. Подпишитесь на нашу рассылку.
                                <br /> Выходит еженедельно. Полностью бесплатно.
                            </div>
                            <input class="friends" id="b061353aeec7556763e1abe1f73081cf" type="checkbox" name="sform[0J/QvtC00L/QuNGB0LDRgtGMINC60L7Qu9C70LXQsw==]" />
                            <input id="b061353aeec7556763e1abe1f73081cf_on" type="hidden" value="Да">
                            <input id="b061353aeec7556763e1abe1f73081cf_off" type="hidden" value="Нет">
                            <label for="b061353aeec7556763e1abe1f73081cf">подписать моих коллег</label>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <input name="sform[hash]" type="hidden" value="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" />
                        <input class="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65_email us_input" maxlength="255" name="sform[email]" placeholder="Введите ваш E-Mail" required="required" type="email" />
                        <button class="us_submit" id="buttonb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" onclick="sformb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65._button();">
                            Подписаться
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>*}
</div>
<div class="container">
    <div class=" _tape_news _info_center_tape_news_">
        <div class="custom_tape_news _info_center_tape_news_">
            <!-- Begin Signup Form -->
            <div id="mc_embed_signup">
                <form action="http://clientcbscgru.ru1.list-update.ru/" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate sub-form" target="_blank">
                    <input type="hidden" name="list_id" value="872040">
                    <input type="hidden" name="no_conf" value="">
                    <input type="hidden" name="notify" value="">
                    {*<div class="mc-field-group">                        
                        <input type="email" value="" name="email" class="required email" id="mce-EMAIL">
                    </div>*}
                    {*        *}
                    <div class="row">
                        <div class="col-xs-6">
                            <div>
                                <div class="sub-friends">
                                    Сэкономьте 4 часа в неделю. Подпишитесь на нашу рассылку.
                                    <br /> Выходит еженедельно. Полностью бесплатно.
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            {*<input name="sform[hash]" type="hidden" value="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" />*}
                            <input id="mce-EMAIL" class="_email us_input" maxlength="255" name="email" placeholder="Введите ваш E-Mail" required="required" type="email" />
                            <button dojotype="dijit.form.Button"  name="subscribe" class="us_submit" id="mc-embedded-subscribe">
                                Подписаться
                            </button>
                        </div>
                    </div>
                    {*        *}
                    <div id="mce-responses" class="clear">
                        <div class="response" id="mce-error-response" style="display:none"></div>
                        <div class="response" id="mce-success-response" style="display:none"></div>
                    </div>	
{*                    <div class="clear">
                        <input dojotype="dijit.form.Button" type="submit" value="Подписаться" name="subscribe" id="mc-embedded-subscribe" class="button">
                    </div>*}
                </form>
            </div>
        </div>
    </div>
</div>
<!--End mc_embed_signup-->
