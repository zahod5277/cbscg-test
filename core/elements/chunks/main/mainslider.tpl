<div class="main-slider">
    <div class="container">
        <div class="custom">
            <div class="mainTitle RobotoBold">
                <h1>
                    {$_modx->resource.landingTitle}
                </h1>
            </div>
            <div class="RobotoLight after-title white-line">{$_modx->resource.landingSlogan}</div>
            <div class="RobotoLight after-title">{$_modx->resource.landingDescr}</div>
            <div class="service-list">
                <div class="row">
                    {$_modx->runSnippet('getImageList',[
                        'tvname' => 'mainSliderServices',
                        'tpl' => 'mainSliderServices.tpl'
                    ])}
                </div>
            </div>
            <div class="desc-slide-button">
                {if $_modx->resource.landingFile!=''}
                <div class="download-pdf">
                    <a class="block-inline" href="{$_modx->resource.landingFile}" target="_blank">
                        <span class="type-main-bnt">PDF</span> 
                        <span class="desc-main-bnt">Презентация компании</span>
                    </a>
                    <a class="slider-icon" data-target="#download-pdf" data-toggle="modal" href="#">
                        <img src="images/button-email.png" />
                    </a>
                </div>
                {/if}
                <div class="send-anceta">
                    <a class="block-inline" data-target="#fill-profile" data-toggle="modal" href="#">
                        <span class="type-main-bnt">
                            <img src="images/icon-doc.png" />
                        </span>
                        <span class="desc-main-bnt">Заполнить анкету</span>
                    </a>
                    {if $_modx->resource.anketa!=''}
                    <a class="slider-icon" data-target="#send-anceta" data-toggle="modal" href="#">
                        <img src="images/button-email.png" />
                    {/if}
                    </a>
                </div>
            </div>
        </div>
        {include 'file:chunks/landingBlocks/sendAnketa.tpl'}
        {include 'file:chunks/landingBlocks/sendPDF.tpl'}
        {include 'file:chunks/landingBlocks/anketaForm.tpl'}
    </div>
</div>