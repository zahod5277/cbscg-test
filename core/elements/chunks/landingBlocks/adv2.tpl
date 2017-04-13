{if $_modx->resource.adv2!=''}
    <div class="our-advantage-threef">
        <div class="our-advantage-threef_inner">
            <div class="container">
                <div class="blue module-title">
                    <h2>Ваши преимущества</h2>
                </div>
                <div class="our-advantage-inner">
                    {$_modx->runSnippet('getImageList',[
                        'tvname' => 'adv2',
                        'tpl' => 'adv2.row.tpl'
                    ])}
                </div>
            </div>
        </div>
    </div>
{/if}