$(document).ready(function () {
    $("meta:nth-child(15)").attr("content", window.location);
    $("meta:nth-child(16)").attr("content", window.location + "share.jpg");

    /*init();
    resizeHandler();*/

    $('body').css('overflow', 'hidden');
    $('body').css('height', '100%');

    preloadimages(
    [
        "http://vento.grwpo.net/Images/home/registro_sprite.png",
        "http://vento.grwpo.net/Images/home/mecanica_sprite_site.png",
        "http://vento.grwpo.net/Images/home/sprite_ruta_site.png",
        "http://vento.grwpo.net/Images/home/gif_registro_site.gif",
        "http://vento.grwpo.net/Images/home/gif_mecanica_site.gif",
        "http://vento.grwpo.net/Images/home/gif_ruta_site.gif",
        "http://vento.grwpo.net/Images/header/btn_facebook_header.png",
        "http://vento.grwpo.net/Images/header/btn_facebook_header.png",
        "http://vento.grwpo.net/Images/header/btn_twitter_header.png",
        "http://vento.grwpo.net/Images/header/btn_twitter_header.png",
        "http://vento.grwpo.net/Images/home/btn_sprite_arrow.png",
        "http://vento.grwpo.net/Images/home/btn_sprite_arrow.png",
        "http://vento.grwpo.net/Images/home/video/vento_microsite_home_logo_txt_volkswaguen.png",
        "http://vento.grwpo.net/Images/home/video/vento_microsite_home_logo_txt_la.png",
        "http://vento.grwpo.net/Images/home/video/vento_microsite_home_logo_txt_ruta.png",
        "http://vento.grwpo.net/Images/home/video/vento_microsite_home_logo_txt_delas.png",
        "http://vento.grwpo.net/Images/home/video/vento_microsite_home_logo_ver_video.png",
        "http://vento.grwpo.net/Images/home/video/todo.png",
        "http://vento.grwpo.net/Images/home/video/sprite_loop_play.png",
        "http://vento.grwpo.net/Images/home/video/sprite_rollover_video.png",
        "http://vento.grwpo.net/Images/home/video/sprite_loop_vento.png",
        "http://vento.grwpo.net/Images/home/arrow_iconos.png",
        "http://vento.grwpo.net/Images/home/btn_facebook_share_sprite.png",
        "http://vento.grwpo.net/Images/home/btn_twitter_share.png",
        "http://vento.grwpo.net/Images/register/btn_cerrar.png",
        "http://vento.grwpo.net/Images/register/btn_enviar.png",
        "http://vento.grwpo.net/Images/register/btn_enviar.png",
        "http://vento.grwpo.net/Images/route/sprite_cerrar_ruta_mobile.png",
        "http://vento.grwpo.net/Images/route/sprite_cerrar_ruta_mobile.png",
        "http://vento.grwpo.net/Images/route/mapa_background.png",
        "http://vento.grwpo.net/Images/route/mapa_back.png",
        "http://vento.grwpo.net/Images/route/ruta_camino.png",
        "http://vento.grwpo.net/Images/route/ruta_titulo.png",
        "http://vento.grwpo.net/Images/home/back_icons_circulo.png",
        "http://vento.grwpo.net/Images/rules/back_requisitos_mecanica.png",
        "http://vento.grwpo.net/Images/rules/back_consideraciones.png",
        "http://vento.grwpo.net/Images/rules/vento_auto.png",
        "http://vento.grwpo.net/Images/rules/requisitos_back_mobile.png",
        "http://vento.grwpo.net/Images/rules/back_consideraciones_mobile.png",
        "http://vento.grwpo.net/Images/home/mapa_izquierda.png",
        "http://vento.grwpo.net/Images/home/mapa_derecha.png"
    ]).done(function (images) {
        $('#preloader .ui-spinner').fadeOut('fast', function () {
            $('#preloader').fadeOut(function () {
                $(this).remove();
                init();
                resizeHandler();


            });
        });
    });


});

function preloadimages(arr) {
    var newimages = [],
        loadedimages = 0
    var postaction = function () {}
    var arr = (typeof arr != "object") ? [arr] : arr

        function imageloadpost() {
            loadedimages++
            if (loadedimages == arr.length) {
                postaction(newimages) //call postaction and pass in newimages array as parameter
            }
        }
    for (var i = 0; i < arr.length; i++) {
        newimages[i] = new Image()
        newimages[i].src = arr[i]
        newimages[i].onload = function () {
            imageloadpost()
        }
        newimages[i].onerror = function () {
            imageloadpost()
        }
    }
    return { //return blank object with done() method
        done: function (f) {
            postaction = f || postaction //remember user defined callback functions to be called when images load
        }
    }
}

function init(){
    //$('body').css('background', 'url("../Images/home/mapa_izquierda.png") no-repeat left top, url("../Images/home/mapa_derecha.png") no-repeat right top');
    //$('body').css('background-color', '#022358');

    $('body').css('overflow', 'auto');
    $('body').css('height', 'auto');

    $(window).resize(resizeHandler).trigger("resize");
    //$(document)._scrollable();
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


            var timeoutID = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseover");
                // $('.logo .state2').trigger("mouseout");
            }, 4000);
            var timeoutID2 = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseout");
                // $('.logo .state2').trigger("mouseout");
            }, 8000);
            var timeoutID = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseover");
                // $('.logo .state2').trigger("mouseout");
            }, 12000);
            var timeoutID2 = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseout");
                // $('.logo .state2').trigger("mouseout");
            }, 16000);
            var timeoutID = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseover");
                // $('.logo .state2').trigger("mouseout");
            }, 20000);
            var timeoutID2 = window.setTimeout(function(){
                $('.logo .state2').trigger("mouseout");
                // $('.logo .state2').trigger("mouseout");
            }, 24000);


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
        if($(window).width() > 625) TweenMax.to($('.button1 .holder'), 0.5, {top:"-180px", overwrite:1});
    });
    $('.button1 .holder').on("mouseout", function(){
        if($(window).width() > 625) TweenMax.to($('.button1 .holder'), 0.5, {top:"0px", overwrite:1});
    });
    $('.button2 .holder').on("mouseover", function(){
        if($(window).width() > 625) TweenMax.to($('.button2 .holder'), 0.5, {top:"-180px", overwrite:1});
    });
    $('.button2 .holder').on("mouseout", function(){
        if($(window).width() > 625) TweenMax.to($('.button2 .holder'), 0.5, {top:"0px", overwrite:1});
    });
    $('.button3 .holder').on("mouseover", function(){
        if($(window).width() > 625) TweenMax.to($('.button3 .holder'), 0.5, {top:"-180px", overwrite:1});
    });
    $('.button3 .holder').on("mouseout", function(){
        if($(window).width() > 625) TweenMax.to($('.button3 .holder'), 0.5, {top:"0px", overwrite:1});
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

    $(".header-nav-mobile .register").on("click", function(){ setMobileMenu(); _gaq.push(['_trackPageview', 'Home/Participa']); });
    $(".header-nav-mobile .test").on("click", function(){ setMobileMenu(); _gaq.push(['_trackPageview', 'Home/Prueba_de_manejo']); });
    $(".header-nav-mobile .rules").on("click", function(){ setMobileMenu(); _gaq.push(['_trackPageview', 'Home/Mecanica']); });
    $(".header-nav-mobile .route").on("click", function(){ setMobileMenu(); _gaq.push(['_trackPageview', 'Home/Ruta']); });
    $(".header-nav-mobile .facebook").on("click", function(){ window.open('https://www.facebook.com/VolkswagenMexico?fref=ts', "_blank"); setMobileMenu(); _gaq.push(['_trackPageview', 'Like/FB']); });
    $(".header-nav-mobile .twitter").on("click", function(){ window.open('https://twitter.com/Volkswagen_MX', "_blank"); setMobileMenu(); _gaq.push(['_trackPageview', 'Like/Twiter']); });
    $(".home .social-share .facebook").on("click", function(){ shareFacebook(); _gaq.push(['_trackPageview', 'Comparte/FB']); });
    $(".home .social-share .twitter").on("click", function(){ shareTwitter(); _gaq.push(['_trackPageview', 'Comparte/Twiter']); });

    $(".float-left .logovw").on("click", function(){ _gaq.push(['_trackPageview', 'Home']);});
    $(".header-nav .register").on("click", function(){ _gaq.push(['_trackPageview', 'Home/Participa']);});
    $(".header-nav .test").on("click", function(){ _gaq.push(['_trackPageview', 'Home/Prueba_de_manejo']);});
    $(".header-nav .route").on("click", function(){ _gaq.push(['_trackPageview', 'Home/Ruta']);});
    $(".header-nav .rules").on("click", function(){ _gaq.push(['_trackPageview', 'Home/Mecanica']);});
    $(".header-nav .facebook").on("click", function(){ _gaq.push(['_trackPageview', 'Like/FB']);});
    $(".header-nav .twitter").on("click", function(){ _gaq.push(['_trackPageview', 'Like/Twiter']);});


    $(".button1").on("click", function(){ _gaq.push(['_trackPageview', 'Participa/2']);});
    $(".button2").on("click", function(){ _gaq.push(['_trackPageview', 'Mecánica/2 ']);});
    $(".button3").on("click", function(){ _gaq.push(['_trackPageview', 'Ruta/2']);});
    $(".main-footer copy").on("click", function(){ _gaq.push(['_trackPageview', 'VW2013']);});
    $(".main-footer .legals").on("click", function(){ _gaq.push(['_trackPageview', 'Terminos_y_condiciones']);});

    initButtons();
}
function setMobileMenu() {
    $(window).scrollTop();
    if($(".header-nav-mobile").css('display') == 'none'){
        $(window).scrollTop('0px');
    }
    $(".header-nav-mobile").slideToggle(400, function() {
        if($(".header-nav-mobile").css('display') == 'none'){
            $(window).scrollTop('0px');
        }
    });
    resizeHandler();
    setTimeout(resizeHandler,500);
    setTimeout(resizeHandler,1000);
    setTimeout(resizeHandler,1500);
}

function resizeHandler() {
    $(".disable img").attr("width", $(window).width());
    $(".disable img").attr("height", $(window).height());
    $(".register").css("width", '100%');
    $(".register").css("height", '100%');

    if($(window).width() > 625) {
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
    var leftW = ($(window).width()-widthW)/2;
    var topW = ($(window).height()-heightW)/2;
    liga = "http://nuevovento.mx/";
    image = "http://nuevovento.mx/share.jpg";
    title = "La ruta de las ideas";
    summary = "¿Qué pasaría si una de tus ideas la llevaras a cabo? Volkswagen y Nuevo Vento te invitan a descubrirlo";
    var sharer = "http://www.facebook.com/sharer/sharer.php?u=" + encodeURIComponent(liga);

    if($(window).width() > 640) {
        window.open(sharer, "_blank", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + widthW + ",height=" + heightW + ",left=" + leftW + ",top=" + topW);
    } else {
        window.open(sharer, "_blank");

    }
}

function shareTwitter() {
    var widthW = 500;
    var heightW = 400;
    var leftW = ($(window).width()-widthW)/2;
    var topW = ($(window).height()-heightW)/2;
    descripcion = "¿Qué pasaría si una de tus ideas la llevaras a cabo? Volkswagen y Nuevo Vento te invitan a descubrirlo";
    hashtag = "";
    liga = "http://nuevovento.mx/";
    var tweet = "https://twitter.com/intent/tweet?text=" + encodeURIComponent(descripcion) + " " + encodeURIComponent(hashtag) + "&url=" + encodeURIComponent(liga);
    if($(window).width() > 640) {
        window.open(tweet, "_blank", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=" + widthW + ",height=" + heightW + ",left=" + leftW + ",top=" + topW);
    } else {
        window.open(tweet, "_blank");
    }
}