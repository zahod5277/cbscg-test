<div class=" _tape_news _proposal">
    <div class="custom_tape_news _proposal">
        <div class="sub-form">
            <div class="row">
                <div class="col-xs-5">
                    <div>
                        <div class="sub-friends">
                            Оставьте заявку на консультацию в 1 клик
                        </div>
                    </div>
                </div>
                <div class="col-xs-7">
                    <form class="ajax_form form-inline no-alert" method="POST" action="{$_modx->makeUrl($_modx->resource.id)}">
                        <div class="form-group">
                            <input class="form-control" name="name" placeholder="Ваше имя" required="" type="text" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" name="phone" placeholder="Ваш телефон" required="" type="text" />
                        </div>
                        <input type="hidden" name="Адрес страницы" value="{$_modx->resource.pagetitle} id: {$_modx->resource.id}">
                        <input type="hidden" name="send-message" value="1" />
                        <input type="text" class="tushenka" name="tushenka" value="">
                        <button class="btn us_submit send-email consultButton" type="submit">
                            Оставить заявку
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>