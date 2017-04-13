<div class="modal fade leo-modal hidden-print" id="toBoss" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Обратиться к руководителю</span>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="bossName" placeholder="Ваше имя" required="" type="text" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="bossPhone" placeholder="Ваш телефон или e-mail" required="" type="text" />
                        </div>
                        <div class="form-group">
                            <textarea name="bossVopros" id="bossVopros" cols="20" placeholder="Ваш вопрос" rows="10" class="form-control modalSelect"></textarea>
                        </div>
                        <input type="text" class="tushenka" value="" name="tushenka">
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Отправить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>