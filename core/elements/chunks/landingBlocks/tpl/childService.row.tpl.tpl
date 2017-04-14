{if $idx % 2=='1'}
    <div class="row">
{/if}
    <div class="col-xs-6">
        <div class="page-service-company">
            <div class="title-service upper-case childServiceRowTitle RobotoBold">
                <h3>
                     <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}">
                        {$pagetitle}
                    </a>
                </h3>
            </div>
            <div class="body-service">
                <div class="body-serviceP">
                    <p>{$introtext}</p>              
                </div>
                <div class="calculator-wrapper">
                    {var $wrapper = 'childServicePriceWrapper'}
                    {if $_pls['tv.simplePrice']!=''}
                        {var $var = 'simplePrice'}
                        {var $tpl = 'simplePriceTpl'}
                    {/if}
                    {if $_pls['tv.hourPrice']!=''}
                        {var $var = 'hourPrice'}
                        {var $tpl = 'hourPriceTpl'}
                    {/if}
                    {if $_pls['tv.selectBoxPrice']!=''}
                        {var $var = 'selectBoxPrice'}
                        {var $tpl = 'selectBoxPriceTpl'}
                        {var $wrapper = 'selectBoxPriceTplWrapper'}
                    {/if}
                    <div class="priceTitle">
                        {$_pls['tv.PriceTitle']}
                    </div>
                    {$_modx->runSnippet('getImageList',[
                        'tvname' => $var,
                        'tpl' => $tpl,
                        'docid' => $id,
                        'wrapperTpl' => $wrapper
                    ])}
                </div>
            </div>
            <div class="footer-service">
                    <div class="calculator-description">
                        {$_pls['tv.PriceFooter']}
                    </div>
                <button class="leo-button-block leo-blue-button give-service" data-service="{$pagetitle}" data-target="#give-service" data-toggle="modal">
                    {$_pls['tv.buttonText']}
                </button>
            </div>
        </div>
    </div>
{var $totalus = $_modx->getPlaceholder('totalus')} 
{if ($idx % 2=='0') || ($idx == $totalus)}
    </div>
{/if}