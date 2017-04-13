<!doctype html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7 ie6 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8 oldie" lang="ru" dir="ltr"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="ru" dir="ltr" prefix="og: http://ogp.me/ns#">
<!--<![endif]-->
{block 'HEAD'}
    {include 'file:chunks/common/head.tpl'}
{/block}
<body class="tmpl-index itemid-125 menuBody lang-ru com-k2 view-item layout-item task-none zoo-itemid-0 zoo-categoryid-0 device-ios-no device-android-no device-mobile-no device-table-no">
    {block 'HEADER'}
    <header>
    {include 'file:chunks/common/topmenu.tpl'}
    </header>
    {/block}
    {block 'CONTENT'}
    {/block}
</body>
{ignore}
<script>
    $('.itemPrintLink, .underContentPrintBtn').on('click', function(){ 
       window.print();
       void 0;
     });
    $('.ratingStars').on('click', '.itemRatingList a', function(){ 
        var id = $(this).data('id'),
            point = $(this).data('star'),
            parent = $(this).parents('.ratingStars');
            action = $(this).data('action');
             $.post('ajax.php', { action: action, id:id, point:point }, function(data) { 
		var data = JSON.parse(data);
                if (data.status=='success'){ 
                    $(parent).html(data.html);
                    alert('Спасибо! Ваш голос учтен');
                 } else {
                   alert(data.html);
            }
	});
        return false;
        
    })
</script>
{/ignore}
</html>