{if $_modx->resource.adv2!=''}
{var $class=''}
{switch $id}
{case 3}
    {var $class='_audit_advantage'}
{case 4}
    {var $class='_consalting_advantage'}
{case 48}
    {var $class='_consalting_advantage'}
{case 5033}
    {var $class='_msfo_advantage'}
{case 42}
    {var $class='_automatisation_advantage'}
{case 5036}
    {var $class='_ocenka_advantage'}
{/switch}



<div class="our-advantage-threef">
    <div class="container">
        <div class=" _buch_advandage mobile-wrap-full-width {$class}}">
            <div class="blue module-title">
                <h2>Ваши преимущества</h2>
            </div>
            <div class="custom_buch_advandage mobile-wrap-full-width _ocenka_advantage">
                <div class="our-advantage-inner">
                    {$_modx->runSnippet('getImageList',[
                        'tvname' => 'adv2',
                        'tpl' => 'adv2.row.tpl'
                    ])}
                </div>
            </div>
        </div>
    </div>
</div>
{/if}