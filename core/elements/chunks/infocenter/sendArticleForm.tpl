{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/sendArticleForm.tpl',
    'hooks' => 'spam,email,FormItSaveForm,sendArticle',
    'emailSubject' => 'Статья из Инфо-центра отправлена на почту',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'sendArticle.email.tpl'
    'validate' => 'email:required,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}