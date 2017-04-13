{if $idx in [1,4]}
    <div class="row">
    {/if}

    {if $idx==1}
        <div class="col-xs-6 mainService">
            <a class="block" href="{$_modx->makeUrl($id)}">
                <span class="service" style="background-image: url('{$_pls['tv.ico']}')">	
                    <span class="service-count">0{$idx}</span>
                    <h3>
                        {$_pls['tv.serviceTitle']}
                    </h3>
                    <span class="service-visible">
                        {$_pls['tv.serviceDescr']}
                    </span>
                </span>
            </a>
        </div>
    {else}
        <div class="col-xs-3">
            <a class="block" href="{$_modx->makeUrl($id)}">
                <span class="service" style="background-image: url('{$_pls['tv.ico']}')"> 
                    <span class="relative">
                        <span class="service-count">0{$idx}</span>
                        <h3>{$_pls['tv.serviceTitle']}</h3>
                    </span>
                    <span class="service-desc">
                        {$_pls['tv.serviceDescr']}
                    </span>
                </span>
            </a>
        </div>
    {/if}

    {if $idx in [3,7]}
    </div>
{/if}