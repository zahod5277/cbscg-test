<form action="" method="POST" class="ajax_form">
    <div class="form-group">
        <input type="text" name="qName" placeholder="Ваше имя" class="form-control">
    </div>
    <div class="form-group">
        <input type="text" name="qMail" placeholder="E-mail или телефон" class="form-control">
    </div>
    <div class="form-group">
        <textarea name="qText" id="qText" cols="10" placeholder="Интересующий вас вопрос" rows="10" class="form-control"></textarea>
        <input type="hidden" value="Отправлено со страницы: {$_modx->resource.pagetitle}">
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Отправить</button>
    </div>
</form>