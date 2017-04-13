<div class="modal fade leo-modal hidden-print" id="getPresentationList" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Укажите ваш e-mail</span>
                        <p class="RobotoLight">На него мы моментально отправим выбранную презентацию</p>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="email@mail.ru" required="" type="text" />
                            <input type="hidden" name="subject" value="Презентация от CBS group">
                            <input type="text" name="presTushenka" class="tushenka" value="">
                            <select class="form-control modalSelect" name="file" id="presentationFile">
                                <option value="none" disabled selected="selected">Выберите презентацию</option>
                                <option value="images/presentations/Informaciya-CBS-group.pdf">Общая презентация о компании</option>
                                <option value="images/presentations/Ychet zarplata%20i%20kadry.pdf">Бухгалтерские услуги</option>
                                <option value="images/presentations/Audit i consulting.pdf">Аудит</option>
                                <option value="images/presentations/Audit i consulting.pdf">Консалтинг</option>
                                <option value="images/presentations/MSFO due diligence i ocenka.pdf">Экспертные услуги</option>
                                <option value="images/presentations/MSFO due diligence i ocenka.pdf">МСФО</option>
                                <option value="images/presentations/Avtomatizaciya i IT.pdf">Автоматизация</option>
                                <option value="images/presentations/MSFO due diligence i ocenka.pdf">Оценка</option>
                            </select>
                        </div>
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Получить презентацию</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>