<div class="container">
    <div class="row topmenu">
        <div class="col-xs-2 no-padding-right">
            <div>
                <div class="visible-print-block">
                    <img src="images/logo.png" title="logo" alt="CBS Group">
                </div>
                <a href="{$_modx->makeUrl(1)}" class="hidden-print">
                    <img src="images/logo.png" title="logo" alt="CBS Group">
                </a>
            </div>
        </div>
        <div class="col-xs-4 visible-print-block phonesPrinted">
            <p>www.cbscg.ru</p>
            <p>8 (495) 636­27­69</p>
            <p>info@cbscg.ru</p>
        </div>
        <div class="col-xs-10 hidden-print">
            <div>
                <div class="top-right-block">
                    <div class="custom">
                        <div class="static-wrapper-phone">
                            <div class="row">
                                <div class="col-xs-8 no-padding mainMenuLinksOuter">
                                    <div class="top-icon">
                                        <a href="{'5336'|url}" class="mainMenuLinks">О компании</a>
                                        <a href="{'5009'|url}" class="mainMenuLinks">Инфо-центр</a>
                                        <a href="{'5117'|url}" class="mainMenuLinks">Контакты</a>
                                        <a data-target="#phone-question" data-toggle="modal" href="#">
                                            <img alt="pnone" src="images/icon_phone.png" />
                                        </a>
                                        <a href="#" onclick="window.BX.SiteButton.wm.show(window.BX.SiteButton.wm.getById('openline_livechat'));return false;">
                                            <img alt="message" src="images/icon_message.png" />
                                        </a> 
                                        <a href="mailto:client@cbscg.ru">
                                            <img alt="mail" src="images/icon_mail.png" />
                                        </a> 
                                        <a href="skype:managercbscg?call">
                                            <img alt="skype" src="images/icon_skype.png" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xs-4 no-padding top-phone-outer">
                                    <div class="top-phone blue">+7(495)636-27-69</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="leo-top-menu">
            <div class="leo-wrap-menu hidden-print">
                <ul class="menu_top">
                    {$_modx->runSnippet('pdoMenu',[
                        'parents' => '5010',
                        'level' => 2,
                        'sortBy' => 'menuindex',
                        'sortdir' => 'ASC',
                        'tplOuter' => '@INLINE {$wrapper}',
                        'tpl' => '@FILE:chunks/common/topMenuLevel1.tpl',
                        'lastClass' => 'no-margin-right',
                        'tplInner' => '@INLINE <ul class="secondLevelMenu">{$wrapper}</ul>',
                        'tplInnerRow' => '@INLINE <li><a href="{$uri}">{$pagetitle}</a></li>'
                    ])}
                    <li class="item-117 deeper ugLi"><a class="uglyCallbackBtn" style="font-size:12px!important;color: #fff!important;" data-target="#phone-question" data-toggle="modal" href="#">Обратный звонок</a></li>
                </ul>
            </div>
        </div>
    <a class="uglyCallbackBtn" data-target="#phone-question" data-toggle="modal" href="#">Заказать обратный звонок</a>
    </div>
</div>