{if $_pls['tv.isVideo']==1}
    {var $class='hard-situation'}
{/if}
<div class="itemContainer  itemContainerLast {$class}"  style="width:100%" >
    <div class="catItemView groupLeading catItemIsFeatured">
        <div class="row">
            <div class="col-xs-7 catItemTitle infocenterRowItem">
                <h3>
                    <a href="{$_modx->makeUrl($id)}">
                        {if $longtitle==''}
                            {$pagetitle}
                            {else}
                            {$longtitle}    
                        {/if}
                    </a>
                </h3>
                <span class="catItemDateCreated">
                    {$_modx->runSnippet('dateRU',[
                        'input' => $createdon
                    ])}
                </span>
                {if $_pls['tv.tags']!='' && $template==4}
                <div class="catItemTagsBlock">                  
                    <ul class="catItemTags">
                       {$_modx->runSnippet('@FILE:snippets/getTags.php',[
                                    'id' => $id,
                                    'tpl' => '@FILE:chunks/infocenter/tags.row.tpl'
                                 ])}
                    </ul>
                <div class="clr"></div>
                </div>
                {/if}                    
            </div>
            <div class="col-xs-3">
                <div class="itemRatingBlock">
                    {if $template==4 && $_pls['tv.starSum']!=''}
                    <span>Рейтинг</span>
                    <div class="itemRatingForm ratingStars">
                                    {$_modx->runSnippet('@FILE:snippets/getRating.php',[
                                        'id' => $id,
                                        'from' => 1,
                                        'to' => 5,
                                        'tpl' => '@FILE:chunks/infocenter/rating.row.tpl',
                                        'tplOuter' => '@FILE:chunks/infocenter/rating.outer.tpl'
                                    ])}
                   </div>
                   {/if}
                </div>
            </div>
            <div class="col-xs-2">
                <div class="catItemHitsBlock">
                    <span class="catItemHits greyText">
                                {var $count = $_pls['tv.HitsPage']}
                                Просмотров <b>{$count}</b>
                            </span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clr"></div>