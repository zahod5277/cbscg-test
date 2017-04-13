<div class="mb30px">
    <a class="moduleItemTitle blue px16" href="{$_modx->makeUrl($id)}">
        {$pagetitle}
    </a>
    <div>
        <span class="genericItemDateCreated greyText">
            {$_modx->runSnippet('dateRU', [
                'input' => $createdon
            ])}
        </span>
    </div>
</div>