{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/getServiceCostForm.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailSubject' => 'Статья из Инфо-Центра CBS Consalting Group',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => 'admin@cbs.ru',
    'validate' => 'email:required',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}