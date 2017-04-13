<li class="reviewRowLi">
    <div class="slide-desc">
        <div class="slide-desc-in">	
            <div class="slide-desc-bg slide-desc-bg-default"></div>
            <div class="slide-desc-text slide-desc-text-default">
                <div class="slide-text">
                    <div class="row">
                        <div class="col-xs-3">
                            <img src="{$_pls['tv.otzLogo']}" />
                        </div>
                        <div class="col-xs-9">
                            <div class="comment-desc">
                                <div>
                                    <div class="dark upper-case comments-author">
                                        <div>
                                            {$longtitle}
                                        </div>
                                        <div>
                                            <b>{$description}</b>
                                        </div>
                                    </div>
                                    <div class="comment-fio dark-light">{$_pls['tv.fioOtz']}</div>
                                </div>
                            </div>
                            <div class="comment-read-more">
                                <button class="btn blue upper-case" data-target="#comment{$idx}" data-toggle="modal" href="#" type="button">
                                    Читать отзыв
                                </button>
                            </div>
                            <div class="modal fade leo-modal " id="comment{$idx}">
                                <div class="modal-dialog">
                                    <div class="modal-content dark">
                                        <div class="modal-body dark">
                                            <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                                                <img src="images/icon-close.png" />
                                            </button>
                                            <span class="blue">
                                                {if $_pls['tv.otzTitle']!=''}
                                                    {$_pls['tv.otzTitle']}
                                                    {else}
                                                    {$longtitle} {$description}
                                                {/if}
                                            </span>
                                            <div class="body-review">
                                                {$content}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
    </div>
</li>