<!-- WE CALL YOU -->
{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/weCallYou.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailSubject' => ' [[*pagetitle]] (пусть мне перезвонят)',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'callback.mail.tpl',
    'validate' => 'name:required,phone:required,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}
<!-- END WE CALL YOU -->


