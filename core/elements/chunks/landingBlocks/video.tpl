{if $_modx->resource.video!=''}
    {var $video = $_modx->resource.video}
    {else}
    {var $video = '<h2>Видео-ролик еще не загружен</h2>'}
{/if}
{if $_modx->resource.videoImg!=''}
    {var $videoImg = 'style="background:url('~$_modx->resource.videoImg~')no-repeat scroll left top;"'}
    {else}
    {var $videoImg = ''}
{/if}
<div class="our-advantage-videoblockf">
    <div class="container">
        <div class=" ">
            <div class="custom">
                <div class="wathc-video" {$videoImg}>
                    <div class="inner-watch-video">
                        <a data-target="#dispaly-movie" data-toggle="modal" href="#"><img src="/images/icon-play.png" />
                        </a>
                        <div class="watchVideoBtn">
                            смотреть подробное видео об услуге
                        </div>
                    </div>
                </div>
                <div class="modal fade leo-modal" id="dispaly-movie" role="dialog" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div>
                                    <button class="btn btn-link close-modal" data-dismiss="modal" type="button">
                                        <img src="images/icon-close.png" />
                                    </button>
                                </div>
                                <div class="body-review">
                                   {*Если видео не заполнено, но это дочерняя услуга, подтянуть видео с родительской услуги*}
                                    {if ($_modx->resource.template==19||$_modx->resource.template==15)&&($_modx->resource.video=='')}
                                        [[#[[#[[*id]].parent]].video]]
                                        {else}
                                        {$video}
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>