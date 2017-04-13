<div class="col-xs-6 leo-pagin-item">
    <div class="row">
        <div class="col-xs-5">
            <div class="docs-wrapper">
                <div class="moduleItemTitle RobotoLight" href="{$_modx->makeUrl($id)}">
                    <div class="RobotoBold reviewTitle">
                        <h3>
                            {$pagetitle}
                        </h3>
                    </div>
                </div>
                {if $_pls['tv.reviewImg']!=''}
                <div class="moduleAttachments">
                    <a rel="nofollow" class="boxed" href="{$_pls['tv.reviewImg']}">
                        Смотреть оригинал
                    </a>
                </div>
                {/if}
            </div>
        </div>

        <div class="col-xs-7">
            <div class="docs-introtext">
                <div class="moduleItemIntrotext">
                    <div>
                        <div class="reviews-post">
                            <div class="RobotoBold">
                                {$longtitle}
                            </div>
                            <div class="RobotoBold">
                                {$description}
                            </div>
                        </div>
                        <div class="reviews-fio">
                            {$_pls['tv.fioOtz']}
                        </div>
                        <div class="reviewIntrotext">
                            {$introtext}
                        </div>
                    </div>
                </div>

                <button class="btn btn-link keysReadMoreBtn" type="button" data-toggle="modal" data-target="#comment{$idx}">
                    Читать отзыв
                </button>
            </div>
        </div>
    </div>

    <div class="modal fade leo-modal" id="comment{$idx}" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">{$pagetitle}</span>
                    </div>
                    <div class="body-review">
                        <div>
                            {$content}
                           </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>