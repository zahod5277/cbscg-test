<div class="our-advantage">
    <div class="container">
        <div class=" _service_company">
            <div class="blue module-title">
            <h2>Услуги компании</h2>
            </div>
            <div class="custom_service_company">
                {$_modx->runSnippet('pdoResources',[
                    'parents' => $_modx->resource.id,
                    'level' => 1,
                    'includeTVs' => 'simplePrice,hourPrice,selectBoxPrice,PriceTitle,PriceFooter,buttonText',
                    'processTVs' => 1,
                    'prepareTVs' => 1,
                    'sortby' => 'menuindex',
                    'totalVar' => 'totalus',
                    'where' => '{"template:=":"15"}',
                    'tpl' => '@FILE:chunks/landingBlocks/tpl/childService.row.tpl.tpl'
                ])}
            </div>
        </div>
    </div>
</div>
{$_modx->runSnippet('!AjaxForm',[
    'snippet' => 'FormIt',
    'form' => '@FILE: chunks/forms/childService.form.tpl',
    'hooks' => 'spam,email,FormItSaveForm',
    'emailSubject' => 'Заявка по [[*pagetitle]]',
    'emailTo' => $_modx->config.form_email,
    'emailFrom' => $_modx->config.emailsender,
    'emailTpl' => 'childService.email.tpl',
    'validate' => 'name:required,phone:required,tushenka:blank',
    'validationErrorMessage' => '<h5>В форме содержатся ошибки!</h5>',
    'successMessage' => '<h5>Сообщение успешно отправлено</h5>'
])}