<div class="contact-from">
    <div class="about-contact-from">
        {$_modx->resource.formTitle}
    </div>
    <form class="ajax_form form no-alert" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
        <div class="row">
            <div class="col-xs-4">
                <div class="form-group">
                    <input class="form-control white" name="name" placeholder="Ваше имя" required="" type="text" />
                </div>
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <input class="form-control white" name="phone" placeholder="Ваш телефон" required="" type="text" />
                </div>
            </div>
            <div class="col-xs-4">
                <button class="leo-black-btn btn-block send-email" type="submit">
                    Отправляю заявку
                </button>
            </div>
        </div>
        <input name="page_accounting" type="hidden" value="Отправлено со страницы {$_modx->resource.pagetitle}" />
        <input name="send-message" type="hidden" value="1" />
        <input type="text" class="tushenka" name="tushenka" value="">
    </form>
</div>