{if $_modx->resource.workers!=''}
{var $workers = $_modx->runSnippet('getImageList',[
    'tvname' => 'workers',
    'tpl' => 'worker.row.tpl'
])}
{*Если работники не заполнены, но это дочерняя услуга, подтянуть работников с родительской услуги*}        
{elseif ($_modx->resource.workers=='')&&($_modx->resource.template==19||$_modx->resource.template==15)}
{var $workers = $_modx->runSnippet('getImageList',[
    'tvname' => 'workers',
    'tpl' => 'worker.row.tpl',
    'docid' => $_modx->resource.parent
])}
{/if}

{if $workers!=''}
    <div class=" _specialist">
        <div class="blue module-title">
            <h2>Ключевые специалисты</h2>
        </div>
        <div class="custom_specialist">
            {$workers}
        </div>
    </div>
{/if}