{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE:chunks/forms/sendReviewForm.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailSubject' => 'Отзыв об Инфо-центре',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'sendReview.email.tpl',
    'validate' => 'name:required,email:required,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}