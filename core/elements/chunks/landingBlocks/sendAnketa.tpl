<!-- SEND ANKETA -->
{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/sendAnketa.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm,sendPDF',
    'emailSubject' => 'Отправлена анкета',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'sendAnketa.email.tpl',
    'validate' => 'email:reqiured,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}
<!-- END SEND ANKETA -->