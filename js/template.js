// check and define $ as jQuery
if (typeof jQuery != "undefined") jQuery(function ($) {
    // dump(myVar); is wrapper for console.log() with check existing console object and show 
    window.dump=function(vars,name,showTrace){if(typeof console=="undefined")return false;if(typeof vars=="string"||typeof vars=="array")var type=" ("+typeof vars+", "+vars.length+")";else var type=" ("+typeof vars+")";if(typeof vars=="string")vars='"'+vars+'"';if(typeof name=="undefined")name="..."+type+" = ";else name+=type+" = ";if(typeof showTrace=="undefined")showTrace=false;console.log(name,vars);if(showTrace)console.trace();return true};
    // remove no-js class if JavaScript enabled
    $('html.no-js').removeClass('no-js').addClass('js-ready');
    // close Joomla system messages (just example)
    $('#system-message .close').click(function () {
        $(this).closest('.alert').animate({height: 0, opacity: 0, MarginBottom: 0}, 'slow', function () {
            $(this).remove();
        });
        return false;
    });
    $('.top-icon a:nth-child(1),.top-icon a:nth-child(2)').on('click',function(e){
        //(e).preventDefault();
    });
    $('.anyQuestionsItem').on('click', function(e){
        if ($(this).data('action')){
            e.preventDefault();
            window.BX.SiteButton.wm.show(window.BX.SiteButton.wm.getById($(this).data('action')));
        }
    });
	jQuery(".our-services-inner .service").hover(
		function() {			
			$(this).find('.relative').css({'top':'0px'}).closest('.service').find('.service-desc').css({'opacity':'1'}).show();
		}, function() {
			$(this).find('.relative').css({'top':'120px'}).closest('.service').find('.service-desc').css({'opacity':'0'});
		}
	);
	jQuery(".menu_top > .parent:first, .menu_bottom > .parent:first").on('click', function(event) {
		event.stopPropagation();
        $(this).toggleClass('active-parent');
        $(this).find('ul').toggle();
    });
	$('body').not('.menu_top').not('.menu_bottom').on('click', function() {
		var menu = $(this).find('.menu_top > .parent:first');
		if(menu.hasClass('active-parent')) {
			menu.removeClass('active-parent');
			menu.find('ul').css({'display': 'none'});
		}
	})

    jQuery(".wraper-princip-work > div").on('click', function() {
        var self = this;
        var parent = $(this).closest('.custom_page_info_block_news');
        parent.find(".wraper-princip-work > div").removeClass('active');
        var num = parseInt($(self).addClass('active').attr('id'), 10);
        parent.find(".princips-work > div").addClass('hidden');
        parent.find(".princips-work > div:nth-child("+num+")").removeClass('hidden');
    });
	$(".container > .mobile-wrap-full-width").wrapInner( "<div class='mobile-full-width'></div>");
	$('div.nofollow').each(function(key, value) {
		$(value).find('a').attr('rel', 'nofollow');
	});
    jQuery(".full-proffesionals > .wrap-desc-proffesional").addClass('hidden');
    jQuery(".full-proffesionals > .wrap-desc-proffesional:nth-child(1)").removeClass('hidden');
    jQuery(".inner-proffesionals .proffesionals-block").on('click', function() {
        jQuery(".inner-proffesionals .proffesionals-block").removeClass('active');
        var num = parseInt($(this).addClass('active').attr('id'), 10);
        jQuery(".full-proffesionals > .wrap-desc-proffesional").addClass('hidden');
        jQuery(".full-proffesionals > .wrap-desc-proffesional:nth-child("+num+")").removeClass('hidden');
    });
	$(window).on( "scroll", function() {
		var offset = $(window).scrollTop();
		var $menu = $('#leo-top-menu:not(.infocenter-menu-top)');
		var $phone = $('.top-right-block');
		if(offset<200) {
			$menu.find('.top-right-block').remove();
			//$phone.removeClass('static-top-right-block');
			return $menu.removeClass('static-top-menu');
		}
		if($menu.find('.top-right-block').length) {
			return;
		}
                $phone.clone().prependTo($menu.find('.leo-wrap-menu'));
//		$phone.clone().appendTo($menu.find('.leo-wrap-menu'));
		//$phone.addClass('static-top-right-block');
		$menu.addClass('static-top-menu');
	});
	$('.leo-full-text .read-more > span').on('click', function() {
		$(this).closest('.leo-full-text').find('.full-text').removeClass('hidden');
		$(this).closest('.read-more').remove();
	});
	jQuery('.info-block .nav a').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	});
	function setTabs() {
		var hash = window.location.hash;
		if(!hash) {
			return;
		}
		var tab = hash.match(/tabs-(\w+)/i);
		if(!tab) {
			return;
		}
		jQuery('ul.nav-tabs a[href=#'+tab[1]+']').trigger('click');
	}
	setTabs();

	/**
	 * check validation error
	 */
	function formValidate($form) {
		var error = false;
		var $inputs = $form.find('input').removeClass('error');
		$inputs.each(function(key, value) {
			if($(value).attr('required') && $(value).val() === '') {
				error = true;
				$(value).addClass('error')
			}
		});
		return error;
	}
	function eventAfterSendingEmail($form, data) {
		if(!$form.hasClass('no-alert')) {
			$form.find('.alert').remove();
			if(data.status === "error") {
				return $form.prepend("<div class='alert alert-danger' role='alert'>"+data.message+"</div>");
			}
			return $form.prepend("<div class='alert alert-success' role='alert'>Письмо отправленно</div>");
		} else {
			$form.find('button.send-email').text('Заявка отправлена');
		}

	}
	function leoPagenator(currentPage) {
		$('._faq .queston').hide();
		var lastNumArticle = currentPage * 5;
		var firstNumArticle = (lastNumArticle - 5) + 1;
		setQuestion(firstNumArticle);
		for(var i=firstNumArticle; i<=lastNumArticle; i++) {
			$('._faq .queston:nth-child('+i+')').show();
		}		
		
		// set data pagination
		$('._faq .start-question').text(firstNumArticle);
		$('._faq .end-question').text(lastNumArticle);
		$('._faq .count-questions').text($('._faq .queston').length);
	}
	leoPagenator(1);
	function setQuestion(obj) {
		var $faq = $('._faq > ._faq');
		$('.queston .full-text').hide().closest('.queston').find('.moduleItemTitle').removeClass('active');
		if(typeof obj === "number") {
			var $fullText = $('._faq .queston:nth-child('+obj+') .full-text');
			$fullText.show().closest('.queston').find('.moduleItemTitle').addClass('active');
			setTimeout(function() {
				var height = parseInt($fullText.css('height'), 10);
				$faq.css({'height': height+'px'});
			}, 100);
			return;
		}
		var height = parseInt($(obj).addClass('active').closest('.queston').find('.full-text').show().css('height'), 10);
		$faq.css({'height': height+'px'});
	}
	$('.wraper-faq-title .moduleItemTitle').click(function() {
		setQuestion(this);
	});
	var html =
		"<p>Инфо-Центр - это наш вклад в устранение законодательно-информационного вакуума в бизнесе и обеспечение " +
		"профессионального сообщества качественной и своевременной информацией.</p> " +
		"<p>Целевая аудитория - СЕО, Финансовый директор, Главный бухгалтер, Бехгалтер, Юрист, Внутрений аудитор.</p> " +
		"<p>Более 20 источников, включая официальные сайты Правительства РФ, Государственной думы, Миинфина, Высшего Арбитражного Суда, Единого портала</p>" +
		'<div class="row">' +
			'<div class="col-xs-6">' +
				'<p class="list-leo"><b>10.000</b> новостей</p>' +
				'<p class="list-leo"><b>50.000</b> подписчиков</p>' +
			'</div>' +
			'<div class="col-xs-6">' +
				'<p class="list-leo">проекту <b>2,5 года</b></p>' +
				'<p class="list-leo">полностью <b>бесплатно</b></p>' +
			'</div>' +
		'</div>';

	var template =
		'<div class="popover wrapper-popover" role="tooltip">' +
			'<div class="arrow"></div>' +
			'<div class="popover-wrapper-title">' +
				'<button class="btn btn-link close-popover" type="button">' +
					'<img src="images/icon-close.png" />' +
				'</button>' +
				'<span class="popover-title blue"></span>' +
			'</div>' +
			'<div class="popover-content"></div>' +
		'</div>';

	$('._info_page .itemHeader h2').popover({
		"content": html,
		"title": 'Инфо центр',
		"html": true,
		"template": template
	}).show();
	$('body').on('click', '.close-popover', function() {
		$('.popover').popover('hide');
	});

	/**
	 * init popover
	 */
    $('.btn-question').popover({
        "html": true,
        "template": template
    });

	$('.btn-question').on('hidden.bs.popover', function () {
		$(this).css({'display': 'inline'});
	});

	/**
	 * send message about service
	 */
    $('button.give-service').on('click', function() {
        var $service = $(this).closest('.page-service-company');
        var serviceName = $service.find('.title-service').text().trim();
        var selectValue = $service.find('.calculator-wrapper select option:selected').text().trim();
        $('input[name=service-name]').val(serviceName);
        $('input[name=amount]').val(selectValue);
    });
    $(document).ready(function(){
        $('.calculator-wrapper').each(function(){
            $('.calc-amount',this).html($('select',this).val());
        });
    })
    $('.calculator-wrapper select').on('change', function() {
       $(this).parents('.calculator-wrapper').find('.calc-amount').html($(this).val());
       
       $(this).parents('.page-service-company').find('.footer-service>div').html($('option[value="'+$(this).val()+'"]').data('pricedescr'));
    });
	(function() {
		var pathName = window.location.pathname;
		if(pathName !== "/informaciya-o-kompaniye" ) {
			return;
		}
		jQuery('.page_about_comany_top').prepend('<a name="about-company" class="scroll"></a>');
		jQuery('.two').prepend('<a name="principle-company" class="scroll"></a>');
		jQuery('._proffesional_page_').prepend('<a name="peoples-company" class="scroll"></a>');
		jQuery('._main_keys_about_company').prepend('<a name="keys-company" class="scroll"></a>');
		jQuery('._page_about_company_revies').prepend('<a name="reviews-company" class="scroll"></a>');
	})();

	(function() {
		if(!$('#custom-special-tmp').length) {
			return;
		}
		var container = jQuery('.our-advantage').not('.two').not('.vashpreim');
		jQuery('.outside-component').insertAfter(container);
	})();
	var replacementTag = 'div';
	jQuery('._page_info_center_reviews h2').each(function() {
		var outer = this.outerHTML;

		// Replace opening tag
		var regex = new RegExp('<' + this.tagName, 'i');
		var newTag = outer.replace(regex, '<' + replacementTag);

		// Replace closing tag
		regex = new RegExp('</' + this.tagName, 'i');
		newTag = newTag.replace(regex, '</' + replacementTag);

		$(this).replaceWith(newTag);
	});
	$("table.inner-trust-hover img").hover(
		function() {
			var src = $(this).attr('src');
			if(null !== (src = src.match(/(our-trust-\d+)/i))) {
				src = 'images/' + src[1] + '-1.png';
				$(this).attr('src', src)
			}
		}, function() {
			var src = $(this).attr('src');
			if(null !== (src = src.match(/(our-trust-\d+)-\d+/i))) {
				src = 'images/' + src[1] + '.png';
				$(this).attr('src', src)
			}
		}
	);
});

/**
 * custom init paganation
 * @param currentPage
 * @param $obj
 * @param $pagenator
 * @param itemsOnPage
 * @param initEvent
 */
function customLeoPagenator(currentPage, $obj, $pagenator, itemsOnPage, initEvent) {
    var $paginItem = $obj.find('.leo-pagin-item').hide();
    function init(initEvent) {
        if(!initEvent) {return;}
        $pagenator.find('.pagination').pagination({
            items: $paginItem.length,
            itemsOnPage: itemsOnPage,
			//hrefTextPrefix: '#',
			//currentPage: currentPage,
            prevText: "<",
            nextText: ">",
            onPageClick: function (pageNumber, event) {
                customLeoPagenator(pageNumber,  $obj, $pagenator, itemsOnPage, false)
            }
        });
    }
    //init(initEvent, currentPage);
	init(initEvent);

    var lastNumArticle = currentPage * itemsOnPage;
    var firstNumArticle = lastNumArticle - itemsOnPage;
    for(var i=firstNumArticle; i<lastNumArticle; i++) {
        $($paginItem[i]).show();
    }

    // set data pagination
    //$pagenator.find('.start-question').text(firstNumArticle+1);
    $pagenator.find('.end-question').text(lastNumArticle);
    $pagenator.find('.count-questions').text($paginItem.length);
}