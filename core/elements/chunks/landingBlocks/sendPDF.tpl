<!-- DOWNLOAD PDF -->
{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/sendPDF.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm,sendPDF',
    'emailSubject' => 'Отправлена презентация',
    'emailTpl' => 'sendPDF.email.tpl',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'validate' => 'email:reqiured,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}
<!-- END DOWNLOAD PDF -->