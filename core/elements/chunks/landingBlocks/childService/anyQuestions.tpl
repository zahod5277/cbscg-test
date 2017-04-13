<div class="container outside-footer hidden-print">
        <h2 class="anyQuestionsTitle blue" data-toggle="collapse" data-target="#anyQuestionsForm">
            <i class="questionIco"></i> Остались еще вопросы?
        </h2>
        <div id="anyQuestionsForm" class="collapse">
            <div class="col-xs-5 col-xs-offset-4">
            {$_modx->runSnippet('!AjaxForm',[
                'snippet' => 'FormIt',
                'form' => '@FILE: chunks/forms/anyQuestions.form.tpl',
                'hooks' => 'spam,email,FormItSaveForm',
                'emailSubject' => 'Возникли вопросы',
                'emailTo' => $_modx->config.form_email,
                'emailFrom' => 'admin@cbs.ru',
                'validate' => 'qMail:required',
                'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
                'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
            ])}
            </div>
        </div>
</div>