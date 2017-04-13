<div class="col-xs-3 leo-pagin-item">
    <div class="docs-wrapper">
        <div class="RobotoLight keysRowTitleOuter">
            <div class="RobotoBold keysRowTitle">
                <h3>
                    {$pagetitle}
                </h3>
            </div>
        </div>

        <div class="docs-read-more">
            <button class="btn btn-link keysReadMoreBtn" type="button" data-toggle="modal" data-target="#read-more-{$idx}">
                Читать текст
            </button>
        </div>
    </div>
    <div class="modal fade leo-modal" id="read-more-{$idx}" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div>
                        <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                            <img src="images/icon-close.png" />
                        </button>
                        <span class="blue">
                            {$pagetitle}
                        </span>
                    </div>
                    <div class="body-review">
                        {if $introtext!=''}
                        {$introtext}
                        {else}
                         {$content}
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>