<div class="modal fade leo-modal hidden-print" id="send-article-to-email" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="questions" class="ajax_form" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">Укажите ваш email ниже</span>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input class="form-control" name="email" placeholder="Ваше Email" required="" type="email" />
                        </div>
                        <input type="text" class="tushenka" name="tushenka" value="">
                        <input name="article" type="hidden" value="{$_modx->resource.id}">
                        <button class="send-email leo-button-block" type="submit">Отправить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>