{if $_pls['tv.isVideo']==1}
    {var $class='hard-situation'}
{/if}
<div class="itemContainer itemContainerLast {$class}" style="float:none;">
    <div class="groupLeading">
        <div class="row">
            <div class="col-xs-7">
                <div class="genericItemTitle">
                <h3>
                    <a href="{$uri}">
                    {$pagetitle}
                    </a>
                </h3>
                </div>
                <span class="genericItemDateCreated greyText">
                    {$_modx->runSnippet('dateRU',[
                        'input' => $createdon
                    ])}          
                </span>
            </div>
            <div class="col-xs-3">
                <!-- Item category name -->
                <div class="genericItemCategory">
                    <a href="[[~[[#[[+id]].parent]]]]">
                        [[#[[#[[+id]].parent]].pagetitle]]
                    </a>
                </div>
            </div>

            <div class="col-xs-2">
                <!-- Item Hits -->
                <div class="catItemHitsBlock">
                    {if $_pls['tv.HitsPage']!=''}
                    <span class="catItemHits">
                        Просмотров 
                        <span class="RobotoBold">{$_pls['tv.HitsPage']}</span>
                    </span>
                    {/if}
                </div>
            </div>
        </div>
    </div>
</div>