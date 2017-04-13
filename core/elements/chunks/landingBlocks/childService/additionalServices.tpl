{switch $_modx->resource.parent}
{case 3}
{var $service = 'аудиту'}
{case 4}
{var $service = 'консалтингу'}
{case 48}
{var $service = 'бухгалтерскому обслуживанию'}
{case 5033}
{var $service = 'МСФО'}    
{case 5076}
{var $service = 'экспертизам'}
{case 42}
{var $service = 'автоматизации'}
{case 5036}
{var $service = 'оценке'}
{/switch}
<div class="leo-outside-bottom" id="additionService">
    <div class="servBg">
        <div class="container">
            <div class=" _additiona_service mobile-wrap-full-width">
                <h2 class="blue module-title">Все услуги по {$service}</h2>
                <div class="custom_additiona_service mobile-wrap-full-width _ocenka_service">
                    <div>
                        {$_modx->runSnippet('pdoResources',[
                        'parents' => $_modx->resource.parent,
                        'depth' => 0,
                        'sortby' => 'menuindex',
                        'sortdir' => 'ASC',
                        'limit' => '12',
                        'where' => '{"template:=":"15"}',
                        'resources' => -$_modx->resource.id,
                        'totalVar' => 'totalus',
                        'tpl' => '@FILE:chunks/landingBlocks/tpl/additionalService.row.tpl'
                    ])}
                    </div>
                    <div>
                        <button class="upper-case leo-button-block addServiceBtn" data-target="#phone-question" data-toggle="modal" type="button">
                            Узнайте можем ли мы решить Вашу задачу
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>