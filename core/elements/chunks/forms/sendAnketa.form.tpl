<div class="modal fade leo-modal" id="send-anceta" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="get-profile" class="ajax_form" method="POST">
                    <div>
                        <span class="blue">Отправить анкету</span>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="Введите ваш email" required="" type="email" />
                        </div>
                        <input name="file" type="hidden" value="{$_modx->resource.anketa}" />
                        <input type="text" class="tushenka" name="tushenka" value="">
                        <input name="subject" type="hidden" value="Анкета с сайта CBS Group" />
                        <button class="send-email leo-button-block" type="submit">
                            Отправить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>