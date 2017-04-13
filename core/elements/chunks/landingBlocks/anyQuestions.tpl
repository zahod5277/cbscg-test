{if $_modx->resource.anyQuestionsToggler=='Нет'}
    <div class="anyQuestionsOuter">
        <div class="container">
            <div class="blue module-title">
                <h2>У Вас остались или появились еще вопросы?</h2>
            </div>              
            <div class="anyQuestionsInner">
                <h3>Если у Вас остались или появились вопросы по услугам, взаимодействию или
                    стоимости, пожалуйста, задайте их удобным для вас способом</h3>
                <a class="anyQuestionsItem" href="mailto:client@cbscg.ru">
                    <i class="anyQuestionIco anyMailIco"></i>
                    <span class="anyQuestionItemTitle">Напишите E-mail</span>
                    <span class="anyQuestionItemDescription">(Ответим в течение 5 минут)</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-action="openline_livechat">
                    <i class="anyQuestionIco anyChatIco"></i>
                    <span class="anyQuestionItemTitle">Задайте вопрос в чате</span>
                    <span class="anyQuestionItemDescription">(Ответим он-лайн)</span>
                </a>
                <a class="anyQuestionsItem" href="skype:managercbscg?call">
                    <i class="anyQuestionIco anySkypeIco"></i>
                    <span class="anyQuestionItemTitle">Позвоните по скайпу</span>
                    <span class="anyQuestionItemDescription">(Ответим он-лайн)</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-target="#phone-question" data-toggle="modal">
                    <i class="anyQuestionIco anyPhoneIco"></i>
                    <span class="anyQuestionItemTitle">Закажите обратный звонок</span>
                    <span class="anyQuestionItemDescription">(Перезвоним в течение <br/> 2-ух минут)</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-toggle="modal" data-target="#getSpecialist">
                    <i class="anyQuestionIco anyManagerIco"></i>
                    <span class="anyQuestionItemTitle">Вызовите специалиста для консультации</span>
                    <span class="anyQuestionItemDescription">(Выезд через 1-2 <br /> дня с момента заявки)</span>
                </a>
                <h3>Также вы можете воспользоваться следующими формами получения информации об услугах и их стоимости</h3>
                <a class="anyQuestionsItem" href="#" data-toggle="modal" data-target="#getPresentationList">
                    <i class="anyQuestionIco anyPdfIco"></i>
                    <span class="anyQuestionItemTitle">Скачать презентацию по любой услуге</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-target="#fillprofile" data-toggle="modal">
                    <i class="anyQuestionIco anyExamIco"></i>
                    <span class="anyQuestionItemTitle">Заполнить общую анкету заказа услуги</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-toggle="modal" data-target="#getBriefList">
                    <i class="anyQuestionIco anyEmailIco"></i>
                    <span class="anyQuestionItemTitle">Получить анкету для расчета стоимости любой услуги</span>
                </a>
                <a class="anyQuestionsItem" href="#" data-toggle="modal" data-target="#getPayConsultModal">
                    <i class="anyQuestionIco anyConsultIco"></i>
                    <span class="anyQuestionItemTitle">Узнать стоимость любой услуги в день обращения</span>
            </div>
            <a class="anyQuestionsItem" href="#" data-toggle="modal" data-target="#toBoss">
                <i class="anyQuestionIco anyBossIco"></i>
                <span class="anyQuestionItemTitle">Обратиться лично к руководителю компании</span>
            </a>
        </div>
    </div>
    {include 'file:chunks/landingBlocks/anyQuestionsFormsCall.tpl'}
{/if}
