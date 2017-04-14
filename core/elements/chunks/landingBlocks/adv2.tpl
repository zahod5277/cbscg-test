{if $_modx->resource.adv2!=''}
    {var $adv2 = $_modx->runSnippet('getImageList',[
        'tvname' => 'adv2',
        'tpl' => 'adv2.row.tpl'
    ])}
{*Если преимущества не заполнены, но это дочерняя услуга, подтянуть преимущества с родительской услуги*}
{elseif ($_modx->resource.adv2=='')&&($_modx->resource.template==19||$_modx->resource.template==15)}
    {var $adv2 = $_modx->runSnippet('getImageList',[
        'tvname' => 'adv2',
        'tpl' => 'adv2.row.tpl',
        'docid' => $_modx->resource.parent
    ])}
{/if}

{if $adv2!=''}
        <div class="our-advantage-threef">
        <div class="our-advantage-threef_inner">
            <div class="container">
                <div class="blue module-title">
                    <h2>Ваши преимущества</h2>
                </div>
                <div class="our-advantage-inner">
                    {$adv2}
                </div>
            </div>
        </div>
    </div>
{/if}