<div class="main-slider">
    <div class="container">
        <div class="custom">
            <div class="mainTitle RobotoBold">
                <h1>
                   {$_modx->resource.landingTitle}
                </h1>
            </div>
            <div class="RobotoLight after-title white-line">
                {$_modx->resource.landingSlogan}
            </div>
            <div class="RobotoLight after-title">
                {$_modx->resource.landingDescr}
            </div>
            {include 'file:chunks/landingBlocks/sliderForm.tpl'}
            <div class="get-presentation">
                <a href="{$_modx->resource.landingFile}" target="_blank">Скачать краткую презентацию</a> 
                <a data-target="#fill-profile" data-toggle="modal" href="#">Заполнить анкету онлайн</a>
            </div>
            <div class="get-more">
                <div>
                    {$_modx->resource.formTrigger}
                </div>
            </div>
        </div>
        {include 'file:chunks/landingBlocks/sendAnketa.tpl'}
        {include 'file:chunks/landingBlocks/sendPDF.tpl'}
        {include 'file:chunks/landingBlocks/anketaForm.tpl'}
    </div>
</div>
<!-- END SLIDER BLOCK -->