<div class="modal fade leo-modal hidden-print" id="getPayConsultModal" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Узнать стоимость в день обращения</span>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="Ваш e-mail или телефон" required="" type="text" />
                             <input type="text" class="tushenka" value="" name="tushenka">
                            <select class="form-control modalSelect" name="service" id="service" placeholder="Какая услуга вас интересует?">
                                <option value="none" disabled selected="selected">Выберите услугу</option>
                                <option value="аудит">Аудит</option>
                                <option value="учет">Учет</option>
                                <option value="Консалтинг">Консалтинг</option>
                                <option value="Экспертиза">Экспертные услуги</option>
                                <option value="МСФО">МСФО</option>
                                <option value="Автоматизация">Автоматизация</option>
                                <option value="Оценка">Оценка</option>
                            </select>
                        </div>
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Узнать стоимость</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>