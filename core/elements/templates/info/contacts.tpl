{extends 'file:templates/base.tpl'}
{block 'HEADER'}
    <header>
        {include 'file:chunks/infocenter/new/topmenu.tpl'}
    </header>
{/block}
{block 'CONTENT'}
    {include 'file:chunks/common/breadcrumbs.tpl'}
    <div class="container outside-component">    
        <div class="component-wrapper">
            <div id="k2Container" class="itemView">
                {include 'file:chunks/contacts/contacts.tpl'}
            </div>
        </div>
    </div>
    {include 'file:chunks/landingBlocks/anyQuestions.tpl'}            
    {include 'file:chunks/common/footer.tpl'}
    {include 'file:chunks/common/weCallYou.tpl'}
    {include 'file:chunks/common/jivoSite.tpl'}
{/block}