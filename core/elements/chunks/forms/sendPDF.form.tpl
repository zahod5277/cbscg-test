<div class="modal fade leo-modal" id="download-pdf" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="get-presentation" class="ajax_form" method="POST">
                    <div>
                        <span class="blue">Отправить презентацию</span>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="Введите ваш email" required="" type="email" />
                        </div>
                        <input name="file" type="hidden" value="{$_modx->resource.landingFile}" />
                        <input name="subject" type="hidden" value="Презентация с сайта CBS Group" />
                        <input type="text" class="tushenka" name="tushenka" value="">
                        <button class="send-email leo-button-block" type="submit">
                            Отправить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>