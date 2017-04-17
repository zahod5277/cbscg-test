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