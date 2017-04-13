<div class="col-xs-4 childSerivceItem">
    <div class="serviceIco col-xs-3 no-padding">
        <img class="img img-responsive" src="images/serviceIco.jpg" alt="{$pagetitle}">
    </div>
    <h3>
        <a href="{$uri}" title="{$pagetitle}">
            {$pagetitle}
        </a>
    </h3>
    {var $lorem = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, eum mollitia repellat iusto autem asperiores atque exercitationem ea fugit fuga. Aliquam, quaerat inventore atque vitae deserunt praesentium reiciendis quo officia?'}
    <div class="col-xs-12 no-padding">
        <p>{$lorem|truncate:'120':'...'}</p>
    </div>
</div>