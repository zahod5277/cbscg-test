<div class="col-xs-6 leo-pagin-item">
    <div class="row">
        <div class="col-xs-5">
            <div class="docs-wrapper">
                <div class="moduleItemTitle RobotoLight" href="{$_modx->makeUrl($id)}">
                    <div class="RobotoBold px14">
                        <h3>
                            {$pagetitle}
                        </h3>
                    </div>
                </div>
                <div class="moduleAttachments">
                    {if $_pls['tv.reviewImg']}
                        <a class="boxed" href="{$_pls['tv.reviewImg']}">
                            Смотреть оригинал
                        </a>
                    {/if}
                </div>
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
                        <div class="reviewCompanyText">
                            <p>
                                {$introtext}
                            </p>
                        </div>
                    </div>
                </div>
                <button class="btn btn-link read_review_btn" type="button" data-toggle="modal" data-target="#comment{$idx}">
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
                            <img src="/images/icon-close.png" />
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