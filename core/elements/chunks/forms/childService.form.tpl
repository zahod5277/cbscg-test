<div class="modal fade leo-modal" id="give-service" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form class="ajax_form" method="POST">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button"><img src="images/icon-close.png" /></button>
                        <span class="blue">
                            Оставьте ваши контакты<br />5 минут и мы позвоним
                        </span>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="name" placeholder="Ваше имя" required="" type="text" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="phone" placeholder="Ваш телефон" required="" type="text" />
                            <input type="text" class="tushenka" name="tushenka" value="">
                        </div>
                        <input name="send-message" type="hidden" value="1" /> 
                        <input name="amount" type="hidden" value="1" /> 
                        <input name="service-name" type="hidden" value="1" />
                        <button class="send-email leo-button-block" type="submit">
                            Отправить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>