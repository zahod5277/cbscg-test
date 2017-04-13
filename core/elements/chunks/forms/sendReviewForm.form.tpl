<div class="modal fade leo-modal" id="rewies-info-center" role="dialog" tabindex="-1">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-body">
                <form id="get-profile" class="ajax_form" method="POST">
                    <div>
                        <button type="button" data-dismiss="modal" class="btn btn-link close-modal">
                            <img src="/images/icon-close.png">
                        </button>
                        <span class="blue">Оставьте Ваш отзыв для Инфо-центра</span>
                    </div>
                    <div class="body-review">
                        <div class="form-group">
                            <input type="text" required="" placeholder="Ваше имя" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" required="" placeholder="Ваша должность" name="job" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="email" required="" placeholder="Ваш email" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <textarea required="" placeholder="Ваш отзыв" name="revies" class="form-control"></textarea>
                        </div>
                        <input type="text" class="tushenka" name="tushenka" value="">
                        <input type="hidden" value="1" name="send-message">
                        <button type="submit" class="send-email leo-button-block">
                            Отправить
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>