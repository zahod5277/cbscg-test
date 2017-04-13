<div class="hidden-print">
    <div class="inner-bottom _page_info_block_news_module">
        <div class=" _tape_news">
            <div class="custom_tape_news">
                <div class="sub-form" id="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65">
                    <div class="row">
                        <div class="col-xs-6">
                            <div>
                                <div class="sub-friends">
                                    Сэкономьте 4 часа в неделю. Подпишитесь на нашу рассылку.
                                    <br /> Выходит еженедельно. Полностью бесплатно.</div>
                                <input class="friends" id="b061353aeec7556763e1abe1f73081cf" type="checkbox" name="sform[0J/QvtC00L/QuNGB0LDRgtGMINC60L7Qu9C70LXQsw==]" />
                                <input id="b061353aeec7556763e1abe1f73081cf_on" type="hidden" value="Да">
                                <input id="b061353aeec7556763e1abe1f73081cf_off" type="hidden" value="Нет">
                                <label for="b061353aeec7556763e1abe1f73081cf">подписать моих коллег</label>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <input name="sform[hash]" type="hidden" value="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" />
                            <input class="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65_email us_input" maxlength="255" name="sform[email]" placeholder="Введите ваш E-Mail" required="required" type="email" />
                            <button class="us_submit" id="buttonb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" onclick="sformb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65._button();">Подписаться</button>
                        </div>
                    </div>
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