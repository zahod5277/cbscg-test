{if $_modx->resource.trust!=''}
{$_modx->runSnippet('getImageList',[
        'tvname' => 'trust',
        'docid' => 1,
        'tpl' => 'trust.row.tpl',
        'wrapperTpl' => 'trust.wrapper.tpl'
    ])}
{/if}