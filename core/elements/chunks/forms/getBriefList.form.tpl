<div class="modal fade leo-modal hidden-print" id="getBriefList" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="ankets" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Укажите ваш e-mail</span>
                        <p class="RobotoLight">На него мы моментально отправим выбранную анкету</p>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="email@mail.ru" required="" type="text" />
                            <input type="hidden" name="subject" value="Анкета расчета стоимости от CBS group">
                            <select class="form-control modalSelect" name="file" id="presentationFile">
                                <option value="none" disabled selected="selected">Выберите анкету расчета стоимости</option>
                                <option value="images/presentations/Anketa audit.xlsx">Аудит</option>
                                <option value="images/presentations/ank_buch_uchet.xlsx">Бухгалтерские услуги</option>
                                <option value="images/presentations/ank_zp_kadri.xls">Зарплата и кадры</option>
                                <option value="images/presentations/ank_msfo.xlsx">МСФО</option>
                                <option value="images/presentations/ank_expert.xlsx">Экспертиза учета и налогов</option>
                                <option value="images/presentations/ank_cons.xlsx">Консалтинг</option>
                            </select>
                        </div>
                        <input type="text" class="tushenka" value="" name="tushenka">
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Получить презентацию</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>