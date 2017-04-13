{if $_modx->resource.workers!=''}
<div class=" _specialist">
    <div class="blue module-title">
        <h2>Ключевые специалисты</h2>
    </div>
    <div class="custom_specialist">
        {$_modx->runSnippet('getImageList',[
            'tvname' => 'workers',
            'tpl' => 'worker.row.tpl'
        ])}
    </div>
</div>
{/if}