$(document).ready(function() {
	init();
	resizeHandler();
});

function init(){
	$(window).resize(resizeHandler).trigger("resize");
	$(document)._scrollable();
	initHandlers();
	var tl = new TimelineMax( { autoRemoveChildren:true, onComplete:videoHandler } );
	if($.browser.mozilla) $('.logo .title3').css('background-size','278px');
	if($(window).width() > 640) {
		tl.to($(".logo .title2"), 0.7, { css:{ opacity:1 } })
		.to($(".logo .title3"), 0.5, { css:{ 'background-size':'278px', opacity:1} }, "-=0.2")
		.to($(".logo .title4"), 0.3, { css:{ right:'0px', visibility:'visible' } }, "-=0.1")
		.to($(".logo .title1"), 0.5, { css:{ rotation:0, opacity:1 } }, "-=0.1")
		.to($(".logo .state3"), 1, { css:{ left:0, opacity:1 } })
		.to($(".logo .title5"), 1, { css:{ opacity:1 } }, "-=0.5")
		.to($(".logo .title5"), 0.5, { css:{ opacity:0 } });
	} else {
		tl.to($(".logo .title2"), 0.7, { css:{ opacity:1 } })
		.to($(".logo .title3"), 0.5, { css:{ 'background-size':'278px', opacity:1 } }, "-=0.2")
		.to($(".logo .title4"), 0.3, { css:{ right:'0px', visibility:'visible' } }, "-=0.1")
		.to($(".logo .title1"), 0.5, { css:{ rotation:0, opacity:1 } }, "-=0.1")
		.to($(".logo .state3"), 0.1, { css:{ left:0 } })
		.to($(".logo .state1"), 1, { css:{ left:0, opacity:1 } });
	}
	$('.click_none').on('click', function (e) {
	    e.preventDefault();
	});

	$(".fancybox").fancybox({
	    fitToView: false,
	    width: '100%',
	    height: '100%',
	    autoSize: false,
	    closeClick: false,
	    openEffect: 'none',
	    closeEffect: 'none',
	    allowFullScreen: true,
	    padding: 0,
	    keys: {
	        toggle: [70]
	    },
	    swf: {
	        wmode: 'transparent',
	        allowfullscreen: true
	    }
	});
}

function videoHandler() {
	
	$('.logo .state1').spriteOnHover({fps:5, autostart:true, loop:'infinite'});
	$('.logo .state2').spriteOnHover({fps:20, onStart:stateStart, onComplete:stateComplete});
	$('.logo .state3').spriteOnHover({fps:5, autostart:true, loop:'infinite'});
	
	$('.logo .state2').on("mouseover", function(){
		if($(window).width() > 640) {
			$('.logo .state3').css('opacity',0);
			$('.logo .state2').css('opacity',1);
		} 
		
	});
	$('.logo .state2').on("mouseout", function(){
		if($(window).width() > 640) {
			$('.logo .state2').css('opacity',1);
			$('.logo .state1').css('opacity',0);
		}
	});
}

function test(text){
	$('.console').val(text)
}

function stateStart() {
	if($(window).width() > 640) {
		$('.logo .state3').css('opacity',1);
		$('.logo .state2').css('opacity',0);
	}
}

function stateComplete() {
	if($(window).width() > 640) { 
		$('.logo .state2').css('opacity',0);
		$('.logo .state1').css('opacity',1);
	}
}

var button1Args;
var button2Args;
var button3Args;

function instance1Handler(args){ button1Args = args; }
function instance2Handler(args){ button2Args = args; }
function instance3Handler(args){ button3Args = args; }

function initButtons() {
	if(!$('.button1 .imageB')) return;
	$('.button1 .imageB').spriteOnHover({fps:10, autostart:true, loop:'infinite', onInstance:instance1Handler});
	$('.button2 .imageB').spriteOnHover({fps:10, autostart:true, loop:'infinite', onInstance:instance2Handler});
	$('.button3 .imageB').spriteOnHover({fps:10, autostart:true, loop:'infinite', onInstance:instance3Handler});
}

function initHandlers() {
	$('.button1 .holder').on("mouseover", function(){
		if($(window).width() > 640) TweenMax.to($('.button1 .holder'), 0.5, {top:"-123px", overwrite:1});
	});
	$('.button1 .holder').on("mouseout", function(){
		if($(window).width() > 640) TweenMax.to($('.button1 .holder'), 0.5, {top:"0px", overwrite:1});
	});
	$('.button2 .holder').on("mouseover", function(){
		if($(window).width() > 640) TweenMax.to($('.button2 .holder'), 0.5, {top:"-123px", overwrite:1});
	});
	$('.button2 .holder').on("mouseout", function(){
		if($(window).width() > 640) TweenMax.to($('.button2 .holder'), 0.5, {top:"0px", overwrite:1});
	});
	$('.button3 .holder').on("mouseover", function(){
		if($(window).width() > 640) TweenMax.to($('.button3 .holder'), 0.5, {top:"-123px", overwrite:1});
	});
	$('.button3 .holder').on("mouseout", function(){
		if($(window).width() > 640) TweenMax.to($('.button3 .holder'), 0.5, {top:"0px", overwrite:1});
	});
	$(".arrow1_btn .btn").on("click", function() {
		if($(".header-nav-mobile").css('display') == 'block'){
			$.scrollTo({top:'980px', left:'0px'}, 1000);
		} else {
			$.scrollTo({top:'540px', left:'0px'}, 1000);
		}
	});
	$(".arrow2_btn .btn").on("click", function() {
		$.scrollTo({top:'750px', left:'0px'}, 1000);
	});
	$(".menu_btn .btn").on("click", setMobileMenu);
	$(".header-nav-mobile .register").on("click", setMobileMenu);
	$(".header-nav-mobile .test").on("click", setMobileMenu);
	$(".header-nav-mobile .rules").on("click", setMobileMenu);
	$(".header-nav-mobile .route").on("click", setMobileMenu);
	$(".header-nav-mobile .facebook").on("click", setMobileMenu);
	$(".header-nav-mobile .twitter").on("click", setMobileMenu);
	initButtons();
}
function setMobileMenu() {
	if($(".header-nav-mobile").css('display') == 'none'){
		$.scrollTo({top:'0px', left:'0px'}, 1000);
	} 
    $(".header-nav-mobile").slideToggle(400, function() {
		if($(".header-nav-mobile").css('display') == 'none'){
			$.scrollTo({top:'0px', left:'0px'}, 1000);
			//$("#body .route .close").css("visivility", 'visible');
		} else {
			//$("#body .route .close").css("visivility", 'hidden');
		}
	});
}
function resizeHandler() {
	$(".disable img").attr("width", $(window).width());
	$(".disable img").attr("height", $(window).height());
	$(".register").css("width", '100%');
	$(".register").css("height", '100%');
	
	if($(window).width() > 640) {
		$(".logovw img").attr("src", "Images/header/logo_vw.png");
		$(".logovw img").attr("width", 60);
		$(".logovw img").attr("height", 60);
		
		if($('.logo .state1').css('opacity') == 1) {
			$('.logo .state1').css('opacity',0);
			$('.logo .state2').css('opacity',0);
			$('.logo .state3').css('opacity',1);
		}
	} else {
		$(".logovw img").attr("src", "Images/header/logo_vw_mobile.png");
		$(".logovw img").attr("width", 41);
		$(".logovw img").attr("height", 49);
		
		if($('.logo .state3').css('opacity') == 1) {
			$('.logo .state1').css('opacity',1);
			$('.logo .state2').css('opacity',0);
			$('.logo .state3').css('opacity',0);
		}
		if($(window).width() > 400) {
			var w = 640;
			var w2 = 563;
			var t1 = -(w - $(window).width()) / 2;
			$(".main-map-mobile .map").css("left",t1+'px');
			
			var t2;
			if($(window).width() > w2) {
				t2 =  ($(window).width() - w2)/2 + 60;
			} else {
				t2 = -(w2 - $(window).width())/2 + 60;
			} 
			$(".main-map-mobile .map2").css("left",t2+'px');
		} else {
			if($(window).width() > 270) {
				var w = 480;
				var w2 = 338;
				var t1 = -(w - $(window).width()) / 2;
				$(".main-map-mobile .map").css("left",t1+'px');
				
				var t2;
				if($(window).width() > w2) {
					t2 =  ($(window).width() - w2)/2 + 5;
				} else {
					t2 = -(w2 - $(window).width())/2 + 5;
				} 
				$(".main-map-mobile .map2").css("left",t2+'px');
			}
		}
	}
}

function shareFacebook() {
	var widthW = 500;
	var heightW = 400;
	var leftW = (screen.width-widthW)/2;
	var topW = (screen.height-heightW)/2;
	liga = "http://volkswagen-nuevovento.com.mx";
	image = "http://volkswagen-nuevovento.com.mx/share.jpg";
	title = "Conduce tu creatividad hasta llegar a la meta";
	summary = "Te has preguntado, ¿qué pasaría si por lo menos una de tus grandes ideas, la llevaras a cabo? Volkswagen te invita a descubrirlo en la Ruta de las Ideas";
	var sharer = "http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(liga);
	
	if($(window).width() > 640) {
		window.open(sharer, "_blank", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + widthW + ",height=" + heightW + ",left=" + leftW + ",top=" + topW);
	} else {
		//return url;
	}
	/*window.open("http://www.facebook.com/sharer.php?s=100&p[url]=" + encodeURIComponent(liga) + "&p[images][0]=" + encodeURIComponent(image) + "&p[title]=" + encodeURIComponent(title) + "&p[summary]=" + encodeURIComponent(summary), "_blank", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + widthW + ",height=" + heightW + ",left=" + leftW + ",top=" + topW);*/
	
}

function shareTwitter() {
	var widthW = 500;
	var heightW = 400;
	var leftW = (screen.width-widthW)/2;
	var topW = (screen.height-heightW)/2;
	descripcion = "¿Qué pasaría si una de tus ideas la llevaras a cabo? Volkswagen te invita a descubrirlo";
	hashtag = "";
	liga = "http://volkswagen-nuevovento.com.mx";
	var tweet = "https://twitter.com/intent/tweet?text=" + encodeURIComponent(descripcion) + " " + encodeURIComponent(hashtag) + "&url=" + encodeURIComponent(liga);
	if($(window).width() > 640) {
		window.open(tweet, "_blank", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + widthW + ",height=" + heightW + ",left=" + leftW + ",top=" + topW);
	} else {
	}
}