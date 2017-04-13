<div class="hidden-print">
    <div class="inner-bottom _page_info_block_news_module">
        <div class=" _tape_news infocenterSubForm">
            <div class="custom_tape_news">
                <div class="sub-form" id="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65">
                    <div class="row">
                        <div class="col-xs-6">
                            <div>
                                <div class="sub-friends">
                                    <span>Хочу еженедельно получать актуальные 
                                        новости о налогах, учете и финансах <strong>бесплатно</strong></span>
                                </div>
                                <input class="friends" id="b061353aeec7556763e1abe1f73081cf" type="checkbox" name="sform[0J/QvtC00L/QuNGB0LDRgtGMINC60L7Qu9C70LXQsw==]" />
                                <input id="b061353aeec7556763e1abe1f73081cf_on" type="hidden" value="Да">
                                <input id="b061353aeec7556763e1abe1f73081cf_off" type="hidden" value="Нет">
                                <label for="b061353aeec7556763e1abe1f73081cf">подписать моих коллег</label>
                            </div>
                        </div>
                        <div class="col-xs-6 infocenterSubFormInputs">
                            <input name="sform[hash]" type="hidden" value="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" />
                            <input class="b9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65_email us_input" maxlength="255" name="sform[email]" placeholder="Введите ваш E-Mail" required="required" type="email" />
                            <button class="us_submit" id="buttonb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65" onclick="sformb9f17eafed5a89ff435a7f836a255b36a32d5a09887b746f8e201e55602c2f65._button();">Подписаться</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="infocenterOtherCateg">
            <h3><i class="chart"></i> Другие разделы ИНФО-центра</h3>
            <ul class="">
                <li class="w78"><a href="press-centr/msfo/">МСФО</a></li>
                <li class="w186"><a href="press-centr/spetsialnye-rezhimy/">Специальные режимы</a></li>
                <li class="w176"><a href="avtorskie-stati">Авторские статьи</a></li>
                <li class="w157"><a href="press-centr/minfin-i-fns/">Минфин и ФНС</a></li>
                <li class="w157"><a href="samoe-vazhnoe">Самое важное</a></li>
                <li class="w195"><a href="press-centr/arbitrazhnaya-praktika/">Арбитражная практика</a></li>
                <li class="w127"><a href="kejsy-proektov">Кейсы проектов</a></li>
                <li class="w78"><a href="press-centr/novosti/">Новости</a></li>
                <li class="w186"><a href="press-centr/praktika-kompanii/">Практические решения</a></li>
                <li class="w176"><a href="poleznye-materialy">Полезные материалы</a></li>
                <li class="w157"><a href="press-centr/slozhnye-situatsii/">Сложные ситуации</a></li>
                <li class="w157"><a href="press-centr/strakhovye-vznosy/">Страховые взносы</a></li>
                <li class="w195"><a href="press-centr/kontroliruemye-sdelki/">Контролируемые сделки</a></li>
                <li class="w127"><a href="novosti-cbs-group">Новости CBS Group</a></li>
            </ul>
        </div>
        <div class=" _news nofollow">
            <div class="blue infocenterRecommended recommendedH">
                <h2><i class="thumbon"></i>Рекомендуем почитать</h2>
            </div>
            <div id="k2ModuleBox206" class="k2ItemsBlock _news nofollow">
                <table class="table infocenterRecommendedTable" rules="none">
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
    {include 'file:chunks/infocenter/new/trust.tpl'}
</div>
{include 'file:chunks/infocenter/sendArticleForm.tpl'}