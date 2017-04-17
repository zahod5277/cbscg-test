<div class="hidden-print">
    <div class="inner-bottom _page_info_block_news_module">
    <div class=" _tape_news _info_center_tape_news_">
        <div class="custom_tape_news _info_center_tape_news_">
            <!-- Begin Signup Form -->
            <div id="mc_embed_signup">
                <form action="http://clientcbscgru.ru1.list-update.ru/" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate sub-form" target="_blank">
                    <input type="hidden" name="list_id" value="872040">
                    <input type="hidden" name="no_conf" value="">
                    <input type="hidden" name="notify" value="">
                    <div class="row">
                        <div class="col-xs-6">
                            <div>
                                <div class="sub-friends">
                                    Хочу еженедельно получать актуальные новости о налогах, учете и финансах бесплатно
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <input id="mce-EMAIL" class="_email us_input" maxlength="255" name="email" placeholder="Введите ваш E-Mail" required="required" type="email" />
                            <button dojotype="dijit.form.Button"  name="subscribe" class="us_submit" id="mc-embedded-subscribe">
                                Подписаться
                            </button>
                        </div>
                    </div>
                    <div id="mce-responses" class="clear">
                        <div class="response" id="mce-error-response" style="display:none"></div>
                        <div class="response" id="mce-success-response" style="display:none"></div>
                    </div>	
                </form>
            </div>
        </div>
    </div>
        <div class=" _news nofollow">
            <div class="blue module-title recommendedH">
                <h2>Рекомендуем почитать</h2>
            </div>
            <div id="k2ModuleBox206" class="k2ItemsBlock _news nofollow">
                <table class="table" rules="none">
                        {$_modx->runSnippet('pdoResources',[
                                'parents' => 5009,
                                'includeTVs' => 'atention',
                                'where' => '{"atention:=":"1"}',
                                'limit' => 6,
                                'sortby' => 'createdon',
                                'sortdir' => 'DESC',
                                'tpl' => '@FILE:chunks/infocenter/recommendedRow.tpl'
                                ])}
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade leo-modal hidden-print" id="ask-question" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Оставьте заявку в форме ниже</span>

                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="name" placeholder="Ваше имя" required="" type="text" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="phone" placeholder="Ваш телефон" required="" type="text" />
                        </div>
                        <input name="ask-question" type="hidden" value="1" />
                        <button class="send-email leo-button-block" type="button">Отправить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
{include 'file:chunks/infocenter/sendArticleForm.tpl'}