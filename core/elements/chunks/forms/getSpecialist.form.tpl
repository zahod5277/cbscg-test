<div class="modal fade leo-modal hidden-print" id="getSpecialist" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Напишите телефон</span>
                    </div>
                    <div class="body-review">
                        <p>Специалист перезвонит в течение 5 минут</p>
                        <div class="form-group">
                            <input class="form-control" name="specialistPhone" placeholder="+7 495 255 88 77" required="" type="text" />
                        </div>
                        <input type="text" class="tushenka" value="" name="tushenka">
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Вызвать специалиста</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>