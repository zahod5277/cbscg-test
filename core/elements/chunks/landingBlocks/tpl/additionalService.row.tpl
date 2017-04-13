{var $total = $_modx->getPlaceholder('totalus')}
{if $idx%3==1}
<div class="row">
{/if}
    <div class="col-xs-4">
        <div class="advantage">
            <div>
                <a class="advantageLink" href="{$_modx->makeUrl($id)}" title="{$pagetitle}">{$pagetitle}</a>
            </div>
        </div>
    </div>
{if ($idx%3==0) || ($idx==$total)}
</div>
{/if}