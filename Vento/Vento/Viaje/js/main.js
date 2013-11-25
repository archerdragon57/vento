var animateController, contentinfoTw, current, currentCont, currentSprite, hashHide, hashShow, imagesFiles, infoWindowsIns, infoWindowsTw, init, initMap, initMap2, insArray, isiOS, loopMap, map, mapOptions, mapOptions2, markers, markersIns, markersTw, menuGridHide, menuGridShow, menuLeftSH, menuRightHide, menuRightShort, menuRightShow, navigation, nextFramemarker, pinesInstagram, points, position, preloadimages, sideMenu, spritesMapa, stateComplete, stateStart, twArray, videoHandler;

window.xt = 0;

position = ["#intro", "#map", "#recap"];

current = 0;

currentCont = position[current];

markers = [];

window.spritecurrent = 0;

window.currentImg = "";

twArray = [];

insArray = [];

markersTw = [];

markersIns = [];

infoWindowsTw = [];

infoWindowsIns = [];

contentinfoTw = [];

window.wH = $(window).height();

window.wW = $(window).width();

currentSprite = [];

if (navigator.userAgent.match(/iPhone/i)) {
  $('#viewport').attr('content', 'width=device-width,minimum-scale=0.8,maximum-scale=0.8,initial-scale=0.8');
}

isiOS = navigator.userAgent.match(/(iPad|iPhone|iPod)/i) !== null;

map = null;

animateController = null;

imagesFiles = ["img/arrow_down.png", "img/arrow_iconos.png", "img/arrow_left.png", "img/arrow_left_dia.png", "img/arrow_right.png", "img/arrow_right_dia.png", "img/arrow_up.png", "img/auto10000.png", "img/back_icons_circulo.png", "img/back_icons_circulo2.png", "img/btn_cerrar_secciones.png", "img/btn_facebook_share_sprite.png", "img/btn_sprite_arrow.png", "img/btn_twitter_feed.png", "img/btn_twitter_share.png", "img/carro_rank.png", "img/confugurador_icon.png", "img/gif_mecanica_site.gif", "img/gif_registro_site.gif", "img/gif_ruta_site.gif", "img/icon_tweet_logo.png", "img/like_fb.png", "img/like_instagram.png", "img/logo.png", "img/logo_mobile.png", "img/logo_vw.jpg", "img/logo_vw_100px.png", "img/mapa_btn_ruta.png", "img/mapa_derecha.png", "img/mapa_galeria_icon.png", "img/mapa_izquierda.png", "img/marker_twitter.png", "img/mecanica_sprite_site.png", "img/menuLeft.png", "img/menuright.png", "img/menu_bitacora_icon.png", "img/menu_prueba_de_manejo.png", "img/menu_ruta_icon.png", "img/menu_video_icon.png", "img/pattern_noise_back.png", "img/pin_inicio_fin.png", "img/pin_mapa.png", "img/play_btn.png", "img/registro_sprite.png", "img/reloj_info_ruta.png", "img/retweet.png", "img/ruta57_info_ruta.png", "img/ruta_15_info_ruta.png", "img/share_photo.png", "img/sprite_ruta_site.png", "img/vento_loader.gif", "img/vento_microsite_contenido_flecha_vermas.png", "img/__logo.png", "img/map/ani/montana2/montana20000.png", "img/map/ani/montana2/montana20001.png", "img/map/ani/montana2/montana20002.png", "img/map/ani/montana2/montana20000.png", "img/map/ani/montana2/montana20001.png", "img/map/ani/montana2/montana20002.png", "img/map/ani/montana1/montana10000.png", "img/map/ani/montana1/montana10001.png", "img/map/ani/montana1/montana10002.png", "img/map/ani/montana2/montana20000.png", "img/map/ani/montana2/montana20001.png", "img/map/ani/montana2/montana20002.png", "img/map/ani/montana1/montana10000.png", "img/map/ani/montana1/montana10001.png", "img/map/ani/montana1/montana10002.png", "img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png", "img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png", "img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png", "img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png", "img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png", "img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png", "img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png", "img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png", "img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png", "img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png", "img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png", "img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png", "img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png", "img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png", "img/map/ani/ancla/ancla0000.png", "img/map/ani/ancla/ancla0001.png", "img/map/ani/ancla/ancla0002.png", "img/map/ani/bailarina/bailarina0000.png", "img/map/ani/bailarina/bailarina0001.png", "img/map/ani/bailarina/bailarina0002.png", "img/map/ani/ballena/ballena0000.png", "img/map/ani/ballena/ballena0001.png", "img/map/ani/ballena/ballena0002.png", "img/map/ani/ferry/ferry0000.png", "img/map/ani/ferry/ferry0001.png", "img/map/ani/ferry/ferry0002.png", "img/map/ani/pelota/pelota0000.png", "img/map/ani/pelota/pelota0001.png", "img/map/ani/pelota/pelota0002.png", "img/map/ani/pez/pez0000.png", "img/map/ani/pez/pez0001.png", "img/map/ani/pez/pez0002.png", "img/map/ani/pez/pez0003.png", "img/map/ani/pez/pez0004.png", "img/map/ani/pez/pez0005.png", "img/map/ani/pulpo/pulpo0000.png", "img/map/ani/pulpo/pulpo0001.png", "img/map/ani/pulpo/pulpo0002.png", "img/map/ani/pulpo/pulpo0003.png", "img/map/ani/pulpo/pulpo0004.png", "img/map/ani/pulpo/pulpo0005.png", "img/map/ani/pulpo/pulpo0006.png", "img/map/ani/pulpo/pulpo0007.png", "img/map/ani/pulpo/pulpo0008.png", "img/map/ani/pulpo/pulpo0009.png", "img/map/ani/pulpo/pulpo0010.png", "img/map/ani/pulpo/pulpo0011.png", "img/map/ani/pulpo/pulpo0012.png", "img/map/ani/pulpo/pulpo0013.png", "img/map/ani/pulpo/pulpo0014.png", "img/map/ani/pulpo/pulpo0015.png", "img/map/ani/sombrilla/sombrilla0000.png", "img/map/ani/sombrilla/sombrilla0001.png", "img/map/ani/sombrilla/sombrilla0002.png", "img/map/ani/sombrero/sombrero0000.png", "img/map/ani/sombrero/sombrero0001.png", "img/map/ani/sombrero/sombrero0002.png", "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0000.png", "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0001.png", "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0002.png", "img/map/ani/volcan/volcan0000.png", "img/map/ani/volcan/volcan0001.png", "img/map/ani/volcan/volcan0002.png", "img/map/ani/volcan/volcan0003.png", "img/map/ani/volcan/volcan0004.png", "img/map/ani/volcan/volcan0005.png", "img/map/ani/volcan/volcan0006.png", "img/map/ani/volcan/volcan0007.png", "img/map/ani/volcan/volcan0008.png", "img/map/ani/fabrica/fabrica0000.png", "img/map/ani/fabrica/fabrica0001.png", "img/map/ani/fabrica/fabrica0002.png", "img/map/ani/palmera/palmera0000.png", "img/map/ani/palmera/palmera0001.png", "img/map/ani/palmera/palmera0002.png", "img/map/ani/palmera/palmera0003.png", "img/map/ani/palmera/palmera0004.png", "img/map/ani/palmera/palmera0005.png", "img/map/ani/palmera/palmera0006.png", "img/map/ani/palmera/palmera0007.png", "img/map/ani/palmera2/palmera20000.png", "img/map/ani/palmera2/palmera20001.png", "img/map/ani/palmera2/palmera20002.png", "img/map/ani/palmera2/palmera20003.png", "img/map/ani/palmera2/palmera20004.png", "img/map/ani/palmera2/palmera20005.png", "img/map/ani/palmera2/palmera20006.png", "img/map/ani/palmera2/palmera20007.png"];

init = function() {
  var tl;
  tl = new TimelineMax({
    autoRemoveChildren: true,
    onComplete: videoHandler
  });
  if ($(window).width() > 640) {
    tl.to($(".logo .title2"), 0.7, {
      css: {
        opacity: 1
      }
    }).to($(".logo .title3"), 0.5, {
      css: {
        'background-size': '278px',
        opacity: 1
      }
    }, "-=0.2").to($(".logo .title4"), 0.3, {
      css: {
        right: '0px',
        visibility: 'visible'
      }
    }, "-=0.1").to($(".logo .title1"), 0.5, {
      css: {
        rotation: 0,
        opacity: 1
      }
    }, "-=0.1").to($(".logo .state3"), 1, {
      css: {
        left: 0,
        opacity: 1
      }
    }).to($(".logo .title5"), 1, {
      css: {
        opacity: 1
      }
    }, "-=0.5").to($(".logo .title5"), 0.5, {
      css: {
        opacity: 0
      }
    });
  } else {
    tl.to($(".logo .title2"), 0.7, {
      css: {
        opacity: 1
      }
    }).to($(".logo .title3"), 0.5, {
      css: {
        'background-size': '278px',
        opacity: 1
      }
    }, "-=0.2").to($(".logo .title4"), 0.3, {
      css: {
        right: '0px',
        visibility: 'visible'
      }
    }, "-=0.1").to($(".logo .title1"), 0.5, {
      css: {
        rotation: 0,
        opacity: 1
      }
    }, "-=0.1").to($(".logo .state3"), 0.1, {
      css: {
        left: 0
      }
    }).to($(".logo .state1"), 1, {
      css: {
        left: 0,
        opacity: 1
      }
    });
  }
  return $(".fancybox").fancybox({
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
      allowfullscreen: true
    },
    wmode: 'transparent'
  });
};

window.showIdea = function() {
  return $("#winners .ideaCont").fadeIn(function() {
    var scrollIdea;
    scrollIdea = $('#winners .ideaCont');
    return scrollIdea.tinyscrollbar();
  });
};

window.hideIdea = function() {
  return $("#winners .ideaCont").fadeOut();
};

preloadimages = function(arr) {
  var a, imageloadpost, loadedimages, newimages, postaction, _i, _len;
  newimages = [];
  loadedimages = 0;
  postaction = function() {
    return arr = (typeof arr !== "object" ? [arr] : arr);
  };
  imageloadpost = function() {
    loadedimages++;
    if (loadedimages === arr.length) {
      return postaction(newimages);
    }
  };
  for (_i = 0, _len = arr.length; _i < _len; _i++) {
    a = arr[_i];
    newimages[_i] = new Image();
    newimages[_i].src = arr[_i];
    newimages[_i].onload = function() {
      return imageloadpost();
    };
    newimages[_i].onerror = function() {
      return imageloadpost();
    };
  }
  return {
    done: function(f) {
      return postaction = f || postaction;
    }
  };
};

preloadimages(imagesFiles).done(function(images) {
  return $('#preloader .ui-spinner').fadeOut("fast", function() {
    return $('#preloader').fadeOut(function() {
      $(this).remove();
      init();
      resizeWindow();
      if (window.location.hash === "#winners") {
        return showIdea();
      }
    });
  });
});

nextFramemarker = function() {
  var actual, i, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = markers.length; _i < _len; _i++) {
    i = markers[_i];
    actual = 0;
    actual = currentSprite[_i];
    actual++;
    if (actual >= spritesMapa[_i][1].length) {
      actual = 0;
    }
    currentSprite[_i] = actual;
    _results.push(i.setIcon(spritesMapa[_i][1][actual]));
  }
  return _results;
};

pinesInstagram = function(dia) {
  return $.ajax({
    type: 'POST',
    contentType: "application/json; charset=utf-8",
    data: "{'dia':'" + dia + "'}",
    url: "../RequestsSocials/Instagram.aspx/getLocations",
    dataType: "json",
    success: function(data) {}
  });
};

loopMap = function(currentMkr, currentImg) {
  return setTimeout(function() {
    return currentMkr.setIcon(currentImg);
  });
};

spritesMapa = [[[21.343701780399353, -99.95539101562497], ["img/map/ani/pino2/pino20000.png", "img/map/ani/pino2/pino20001.png", "img/map/ani/pino2/pino20002.png"]], [[22.32272124164274, -100.69147499999997], ["img/map/ani/pino/pino0000.png", "img/map/ani/pino/pino0001.png", "img/map/ani/pino/pino0002.png"]], [[21.925803840380308, -102.92169960937497], ["img/map/ani/montana2/montana20000.png", "img/map/ani/montana2/montana20001.png", "img/map/ani/montana2/montana20002.png"]], [[24.76985856449465, -104.40485390624997], ["img/map/ani/montana1/montana10000.png", "img/map/ani/montana1/montana10001.png", "img/map/ani/montana1/montana10002.png"]], [[18.3994425733487, -99.96637734374997], ["img/map/ani/montana2/montana20000.png", "img/map/ani/montana2/montana20001.png", "img/map/ani/montana2/montana20002.png"]], [[22.728646421757873, -98.96662148437497], ["img/map/ani/montana1/montana10000.png", "img/map/ani/montana1/montana10001.png", "img/map/ani/montana1/montana10002.png"]], [[24.440230012301264, -92.42975624999997], ["img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png"]], [[20.91329695953451, -96.28595742187497], ["img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png"]], [[24.470232081571336, -113.21588906249997], ["img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png"]], [[21.190129316589303, -112.19416054687497], ["img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png"]], [[22.54612772733311, -107.61286171874997], ["img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png"]], [[19.48014191758085, -94.73688515624997], ["img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png"]], [[13.862700756396402, -111.69977578124997], ["img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png"]], [[16.881386609486402, -108.79938515624997], ["img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png"]], [[11.19250067532966, -105.89899453124997], ["img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png"]], [[15.932893686661505, -105.06403359374997], ["img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png"]], [[13.969339453410871, -95.82453164062497], ["img/map/ani/agua3/agua30000.png", "img/map/ani/agua3/agua30001.png", "img/map/ani/agua3/agua30002.png", "img/map/ani/agua3/agua30003.png", "img/map/ani/agua3/agua30004.png", "img/map/ani/agua3/agua30005.png", "img/map/ani/agua3/agua30006.png", "img/map/ani/agua3/agua30007.png"]], [[10.96608793002811, -96.31891640624997], ["img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png"]], [[25.376868014351917, -95.61579140624997], ["img/map/ani/agua2/agua20000.png", "img/map/ani/agua2/agua20001.png", "img/map/ani/agua2/agua20002.png", "img/map/ani/agua2/agua20003.png", "img/map/ani/agua2/agua20004.png", "img/map/ani/agua2/agua20005.png", "img/map/ani/agua2/agua20006.png", "img/map/ani/agua2/agua20007.png", "img/map/ani/agua2/agua20008.png", "img/map/ani/agua2/agua20009.png"]], [[27.27717016702216, -94.83576210937497], ["img/map/ani/agua1/agua10000.png", "img/map/ani/agua1/agua10001.png", "img/map/ani/agua1/agua10002.png", "img/map/ani/agua1/agua10003.png", "img/map/ani/agua1/agua10004.png", "img/map/ani/agua1/agua10005.png", "img/map/ani/agua1/agua10006.png"]], [[23.54694874887018, -106.04181679687497], ["img/map/ani/ancla/ancla0000.png", "img/map/ani/ancla/ancla0001.png", "img/map/ani/ancla/ancla0002.png"]], [[24.34017157442394, -111.24933632812497], ["img/map/ani/bailarina/bailarina0000.png", "img/map/ani/bailarina/bailarina0001.png", "img/map/ani/bailarina/bailarina0002.png"]], [[25.604955304047067, -113.84210976562497], ["img/map/ani/ballena/ballena0000.png", "img/map/ani/ballena/ballena0001.png", "img/map/ani/ballena/ballena0002.png"]], [[24.51022372042242, -109.85407265624997], ["img/map/ani/ferry/ferry0000.png", "img/map/ani/ferry/ferry0001.png", "img/map/ani/ferry/ferry0002.png"]], [[24.62013507834787, -107.07453164062497], ["img/map/ani/pelota/pelota0000.png", "img/map/ani/pelota/pelota0001.png", "img/map/ani/pelota/pelota0002.png"]], [[20.296288754661532, -108.53571328124997], ["img/map/ani/pez/pez0000.png", "img/map/ani/pez/pez0001.png", "img/map/ani/pez/pez0002.png", "img/map/ani/pez/pez0003.png", "img/map/ani/pez/pez0004.png", "img/map/ani/pez/pez0005.png"]], [[22.088776924425705, -110.78791054687497], ["img/map/ani/pulpo/pulpo0000.png", "img/map/ani/pulpo/pulpo0001.png", "img/map/ani/pulpo/pulpo0002.png", "img/map/ani/pulpo/pulpo0003.png", "img/map/ani/pulpo/pulpo0004.png", "img/map/ani/pulpo/pulpo0005.png", "img/map/ani/pulpo/pulpo0006.png", "img/map/ani/pulpo/pulpo0007.png", "img/map/ani/pulpo/pulpo0008.png", "img/map/ani/pulpo/pulpo0009.png", "img/map/ani/pulpo/pulpo0010.png", "img/map/ani/pulpo/pulpo0011.png", "img/map/ani/pulpo/pulpo0012.png", "img/map/ani/pulpo/pulpo0013.png", "img/map/ani/pulpo/pulpo0014.png", "img/map/ani/pulpo/pulpo0015.png"]], [[26.010466768838505, -108.51374062499997], ["img/map/ani/sombrilla/sombrilla0000.png", "img/map/ani/sombrilla/sombrilla0001.png", "img/map/ani/sombrilla/sombrilla0002.png"]], [[20.182901127508703, -103.84455117187503], ["img/map/ani/sombrero/sombrero0000.png", "img/map/ani/sombrero/sombrero0001.png", "img/map/ani/sombrero/sombrero0002.png"]], [[22.622206644835323, -96.23651894531247], ["img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0000.png", "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0001.png", "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0002.png"]], [[19.687157847278623, -98.33490761718747], ["img/map/ani/volcan/volcan0000.png", "img/map/ani/volcan/volcan0001.png", "img/map/ani/volcan/volcan0002.png", "img/map/ani/volcan/volcan0003.png", "img/map/ani/volcan/volcan0004.png", "img/map/ani/volcan/volcan0005.png", "img/map/ani/volcan/volcan0006.png", "img/map/ani/volcan/volcan0007.png", "img/map/ani/volcan/volcan0008.png"]], [[18.618221615105448, -97.50543984374997], ["img/map/ani/fabrica/fabrica0000.png", "img/map/ani/fabrica/fabrica0001.png", "img/map/ani/fabrica/fabrica0002.png"]], [[22.62727707796158, -104.69049843749997], ["img/map/ani/palmera/palmera0000.png", "img/map/ani/palmera/palmera0001.png", "img/map/ani/palmera/palmera0002.png", "img/map/ani/palmera/palmera0003.png", "img/map/ani/palmera/palmera0004.png", "img/map/ani/palmera/palmera0005.png", "img/map/ani/palmera/palmera0006.png", "img/map/ani/palmera/palmera0007.png"]], [[21.558433078445283, -105.10797890624997], ["img/map/ani/palmera2/palmera20000.png", "img/map/ani/palmera2/palmera20001.png", "img/map/ani/palmera2/palmera20002.png", "img/map/ani/palmera2/palmera20003.png", "img/map/ani/palmera2/palmera20004.png", "img/map/ani/palmera2/palmera20005.png", "img/map/ani/palmera2/palmera20006.png", "img/map/ani/palmera2/palmera20007.png"]]];

$(window).resize(function() {
  return location.reload();
});

points = function(puntos) {
  var i, _i, _len, _results;
  _results = [];
  for (_i = 0, _len = puntos.length; _i < _len; _i++) {
    i = puntos[_i];
    _results.push(new google.maps.LatLng(i[1], i[0]));
  }
  return _results;
};

stateStart = function() {
  if ($(window).width() > 640) {
    $('.logo .state3').css('opacity', 1);
    return $('.logo .state2').css('opacity', 0);
  }
};

stateComplete = function() {
  if ($(window).width() > 640) {
    $('.logo .state2').css('opacity', 0);
    return $('.logo .state1').css('opacity', 1);
  }
};

initMap2 = function() {
  map = new google.maps.Map(document.getElementById("mapcontainer"), mapOptions2);
  console.log("zoomLvl: " + map.getZoom());
  return $.ajax({
    type: 'POST',
    contentType: "application/json; charset=utf-8",
    data: "{'dia':'3'}",
    url: "../RequestsSocials/Instagram.aspx/getLocations",
    dataType: "json",
    success: function(data) {
      var bounds, content, i, infoWindow, j, k, l, line, line2, line3, line4, lineCoordinates, lineCoordinates2, lineCoordinates3, lineCoordinates4, lineSymbol, location, marker, _i, _j, _k, _l, _len, _len1, _len2, _len3, _ref, _ref1;
      _ref = data.d[0];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        i = _ref[_i];
        twArray[_i] = i;
      }
      _ref1 = data.d[1];
      for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
        j = _ref1[_j];
        insArray[_j] = j;
      }
      console.log(data.d);
      console.log(insArray);
      map.set("styles", [
        {
          featureType: "all",
          elementType: "all",
          stylers: [
            {
              "saturation": 26
            }, {
              "lightness": -87
            }, {
              "gamma": 0.96
            }, {
              "hue": "#0000ff"
            }
          ]
        }
      ]);
      lineCoordinates = [points(uno)];
      lineCoordinates2 = [points(dos)];
      lineCoordinates3 = [points(tres)];
      lineCoordinates4 = [points(cuatro)];
      lineSymbol = {
        strokeWeight: 2,
        strokeOpacity: 1,
        scale: 3
      };
      line = new google.maps.Polyline({
        path: lineCoordinates,
        strokeColor: "#FF8B00",
        strokeOpacity: 1,
        map: map
      });
      line2 = new google.maps.Polyline({
        path: lineCoordinates2,
        strokeColor: "#FF8B00",
        strokeOpacity: 1,
        map: map
      });
      line3 = new google.maps.Polyline({
        path: lineCoordinates3,
        strokeColor: "#FF8B00",
        strokeOpacity: 1,
        map: map
      });
      line4 = new google.maps.Polyline({
        path: lineCoordinates4,
        strokeColor: "#FF8B00",
        strokeOpacity: 1,
        map: map
      });
      for (_k = 0, _len2 = twArray.length; _k < _len2; _k++) {
        k = twArray[_k];
        location = new google.maps.LatLng(twArray[_k][3].split(",")[0], twArray[_k][3].split(",")[1]);
        marker = new google.maps.Marker({
          position: location,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: "img/map/marker_twitter.png",
          infoWindowIndex: _k
        });
        content = "" + "<div class='infobox'>" + "<div class='twicoinfow'></div>" + "<div class='titleUsertwinfo'>" + "<span>" + "@" + "</span>" + twArray[_k][2] + "</div>" + "<div class='descriptiontwinfo'>" + twArray[_k][0] + "</div>" + "</div>";
        infoWindow = new google.maps.InfoWindow({
          content: content
        });
        google.maps.event.addListener(marker, "click", function(event) {
          var l, _l, _len3;
          map.panTo(event.latLng);
          for (_l = 0, _len3 = infoWindowsTw.length; _l < _len3; _l++) {
            l = infoWindowsTw[_l];
            l.close();
          }
          return infoWindowsTw[this.infoWindowIndex].open(map, this);
        });
        infoWindowsTw.push(infoWindow);
        markersTw.push(marker);
      }
      for (_l = 0, _len3 = insArray.length; _l < _len3; _l++) {
        l = insArray[_l];
        console.log(l);
        location = new google.maps.LatLng(insArray[_l][7].split(",")[0], insArray[_l][7].split(",")[1]);
        marker = new google.maps.Marker({
          position: location,
          map: map,
          animation: google.maps.Animation.DROP,
          icon: "img/map/marker_instagram.png",
          infoWindowIndex: _l
        });
        content = "<div class='instagraminfocont'><div class='userCont'><img alt='' class='userPhoto' src=''><p class='user'></p></div><img alt='' class='photo' src='" + insArray[_l][4] + "'><div class='likeandcaptionCont'><p class='caption'>" + insArray[_l][0] + "</p><div class='likesCont'><div class='likeIcon'></div><p class='likesCount'>" + insArray[_l][1] + "</p></div></div></div>";
        infoWindow = new google.maps.InfoWindow({
          content: content
        });
        google.maps.event.addListener(marker, "click", function(event) {
          var m, _len4, _m;
          map.panTo(event.latLng);
          for (_m = 0, _len4 = infoWindowsIns.length; _m < _len4; _m++) {
            m = infoWindowsIns[_m];
            m.close();
          }
          return infoWindowsIns[this.infoWindowIndex].open(map, this);
        });
        infoWindowsIns.push(infoWindow);
        markersIns.push(marker);
      }
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(uno[0][1], uno[0][0]),
        map: map,
        icon: "img/pin_inicio_fin.png"
      });
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(cuatro[cuatro.length - 1][1], cuatro[cuatro.length - 1][0]),
        map: map,
        icon: "img/pin_inicio_fin.png"
      });
      bounds = new google.maps.LatLngBounds();
      line3.getPath().forEach(function(e) {
        return bounds.extend(e);
      });
      return map.fitBounds(bounds);
    }
  });
};

initMap = function() {
  var bounds, cityCircle, line, line4, lineCoordinates, lineCoordinates2, lineCoordinates3, lineCoordinates4, lineSymbol, m, marker, populationOptions, _i, _len;
  map = new google.maps.Map(document.getElementById("mapcontainer"), mapOptions);
  console.log(map);
  populationOptions = {
    strokeColor: '#00B2EE',
    strokeOpacity: 1,
    strokeWeight: 4,
    fillColor: '#00275E',
    fillOpacity: 1,
    map: map,
    center: new google.maps.LatLng(tres[1], tres[0]),
    radius: 200
  };
  $.ajax({
    type: 'POST',
    contentType: "application/json; charset=utf-8",
    data: "{'dia':'3'}",
    url: "../RequestsSocials/Instagram.aspx/getLocations",
    dataType: "json",
    success: function(data) {
      var image, marker;
      image = {
        url: "img/auto10000.png",
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 50)
      };
      return marker = new google.maps.Marker({
        position: new google.maps.LatLng(data.d[0][0][3].split(",")[0], data.d[0][0][3].split(",")[1]),
        map: map,
        icon: image,
        optimized: false
      });
    }
  });
  cityCircle = new google.maps.Circle(populationOptions);
  lineCoordinates = [points(uno)];
  lineCoordinates2 = [points(dos)];
  lineCoordinates3 = [points(tres)];
  lineCoordinates4 = [points(cuatro)];
  lineSymbol = {
    path: "M 0,-0.5 0,0.5",
    strokeWeight: 2,
    strokeOpacity: 1,
    scale: 3
  };
  map.set("styles", [
    {
      elementType: "labels",
      stylers: [
        {
          visibility: "off"
        }
      ]
    }, {
      featureType: "landscape",
      elementType: "geometry.fill",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "administrative",
      elementType: "geometry.fill",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "landscape.man_made",
      elementType: "geometry.fill",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "poi",
      elementType: "geometry",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "road",
      elementType: "geometry",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "water",
      elementType: "geometry.fill",
      stylers: [
        {
          color: "#00285C"
        }
      ]
    }, {
      featureType: "transit",
      elementType: "geometry.fill",
      stylers: [
        {
          color: "#000E47"
        }
      ]
    }, {
      featureType: "administrative.province",
      elementType: "geometry",
      stylers: [
        {
          color: "#000b37"
        }
      ]
    }, {
      featureType: "administrative.country",
      elementType: "geometry",
      stylers: [
        {
          color: "#000b37"
        }
      ]
    }
  ]);
  line = new google.maps.Polyline({
    path: lineCoordinates,
    strokeColor: "#FF8B00",
    strokeOpacity: 0,
    icons: [
      {
        icon: lineSymbol,
        offset: "100%",
        repeat: "10px"
      }
    ],
    map: map
  });
  line = new google.maps.Polyline({
    path: lineCoordinates2,
    strokeColor: "#FF8B00",
    strokeOpacity: 0,
    icons: [
      {
        icon: lineSymbol,
        offset: "100%",
        repeat: "10px"
      }
    ],
    map: map
  });
  line = new google.maps.Polyline({
    path: lineCoordinates3,
    strokeColor: "#FF8B00",
    strokeOpacity: 0,
    icons: [
      {
        icon: lineSymbol,
        offset: "100%",
        repeat: "10px"
      }
    ],
    map: map
  });
  line4 = new google.maps.Polyline({
    path: lineCoordinates4,
    strokeColor: "#FF8B00",
    strokeOpacity: 0,
    icons: [
      {
        icon: lineSymbol,
        offset: "100%",
        repeat: "10px"
      }
    ],
    map: map
  });
  markers = [];
  for (_i = 0, _len = spritesMapa.length; _i < _len; _i++) {
    m = spritesMapa[_i];
    markers[_i] = new google.maps.Marker({
      position: new google.maps.LatLng(m[0][0], m[0][1]),
      map: map,
      id: "marker" + _i,
      icon: m[1][0],
      optimized: false
    });
    google.maps.event.addListener(markers[_i], "click", function(event) {});
    currentSprite[_i] = 0;
  }
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(uno[0][1], uno[0][0]),
    map: map,
    icon: "img/pin_inicio_fin.png"
  });
  marker = new google.maps.Marker({
    position: new google.maps.LatLng(cuatro[cuatro.length - 1][1], cuatro[cuatro.length - 1][0]),
    map: map,
    icon: "img/pin_inicio_fin.png"
  });
  animateController = setInterval(function() {
    return nextFramemarker();
  }, 125);
  bounds = new google.maps.LatLngBounds();
  line.getPath().forEach(function(e) {
    return bounds.extend(e);
  });
  return map.fitBounds(bounds);
};

mapOptions = {
  minZoom: 7,
  maxZoom: 7,
  scrollwheel: false,
  mapTypeId: google.maps.MapTypeId.ROADMAP,
  zoomControl: false,
  panControl: false,
  mapTypeControl: false,
  streetViewControl: false,
  zoomControlOptions: {
    position: google.maps.ControlPosition.LEFT_CENTER
  }
};

mapOptions2 = {
  minZoom: 7,
  zoom: 7,
  mapTypeId: google.maps.MapTypeId.ROADMAP,
  zoomControl: false,
  panControl: false,
  mapTypeControl: false,
  streetViewControl: false,
  zoomControlOptions: {
    position: google.maps.ControlPosition.LEFT_CENTER
  }
};

google.maps.event.addDomListener(window, "load", initMap2);

videoHandler = function() {
  var timeoutID, timeoutID2;
  $(".logo .state1").spriteOnHover({
    fps: 5,
    autostart: true,
    loop: "infinite"
  });
  $(".logo .state2").spriteOnHover({
    fps: 20,
    onStart: stateStart,
    onComplete: stateComplete
  });
  $(".logo .state3").spriteOnHover({
    fps: 5,
    autostart: true,
    loop: "infinite"
  });
  $(".logo .state2").on("mouseover", function() {
    if ($(window).width() > 640) {
      $(".logo .state3").css("opacity", 0);
      return $(".logo .state2").css("opacity", 1);
    }
  });
  $(".logo .state2").on("mouseout", function() {
    if ($(window).width() > 640) {
      $(".logo .state2").css("opacity", 1);
      return $(".logo .state1").css("opacity", 0);
    }
  });
  timeoutID = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseover");
  }, 4000);
  timeoutID2 = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseout");
  }, 8000);
  timeoutID = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseover");
  }, 12000);
  timeoutID2 = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseout");
  }, 16000);
  timeoutID = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseover");
  }, 20000);
  return timeoutID2 = window.setTimeout(function() {
    return $(".logo .state2").trigger("mouseout");
  }, 24000);
};

menuLeftSH = function() {
  if ($("#leftMenuCont").css("right") === "0px") {
    TweenMax.to("#leftMenuCont", 0.5, {
      right: "-300px",
      ease: "Quad.easeOut"
    });
    TweenMax.to("#mainCont, header", 0.5, {
      marginLeft: 0,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuLeft", 0.5, {
      right: 0,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuRight", 0.5, {
      right: 2,
      ease: "Quad.easeOut"
    });
    return $("#menuLeft").removeClass("close");
  } else {
    TweenMax.to("#leftMenuCont", 0.5, {
      right: 0,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#mainCont, header", 0.5, {
      marginLeft: -300,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuLeft", 0.5, {
      right: "-60px",
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuRight", 0.5, {
      right: -300,
      ease: "Quad.easeOut"
    });
    return $("#menuLeft").addClass("close");
  }
};

menuRightShow = function() {
  $("#menuRight").css({
    right: 0
  });
  $("#rightMenuCont").css({
    right: "-400px",
    width: "400px"
  });
  TweenMax.to("#rightMenuCont", 0.5, {
    right: 0,
    ease: "Quad.easeOut"
  });
  TweenMax.to("#menuRight", 0.5, {
    right: "402px",
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuRight .close", 0.5, {
    display: "block"
  });
};

menuRightHide = function() {
  TweenMax.to("#rightMenuCont", 0.5, {
    right: "-400px",
    ease: "Quad.easeOut"
  });
  TweenMax.to("#menuRight", 0.5, {
    right: 2,
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuRight .close", 0, {
    display: "none"
  });
};

hashShow = function() {
  $("#menuHash .link").css({
    display: "none"
  });
  $("#menuHash .close").css({
    display: "block"
  });
  TweenMax.to("#leftTwitter", 0.4, {
    left: 0,
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuHash", 0.4, {
    left: "252px",
    ease: "Quad.easeOut"
  });
};

hashHide = function() {
  $("#menuHash .link").css({
    display: "block"
  });
  $("#menuHash .close").css({
    display: "none"
  });
  TweenMax.to("#leftTwitter", 0.4, {
    left: "-250px",
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuHash", 0.4, {
    left: 2,
    ease: "Quad.easeOut"
  });
};

menuRightShort = function() {
  $("#rightMenuCont").css({
    right: "-400px",
    width: "400px"
  });
  return $("#menuRight .close").removeClass("wide");
};

menuGridShow = function() {
  $("#menuRight").css({
    right: 0
  });
  $("#rightMenuCont").css({
    right: "-800px",
    width: "800px"
  });
  $("#menuRight .close").addClass("wide");
  TweenMax.to("#rightMenuCont", 0.5, {
    right: 0,
    ease: "Quad.easeOut"
  });
  TweenMax.to("#menuRight", 0.5, {
    right: "802px",
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuRight .close", 0.5, {
    display: "block"
  });
};

menuGridHide = function() {
  TweenMax.to("#rightMenuCont", 0.5, {
    right: "-800px",
    ease: "Quad.easeOut",
    onComplete: menuRightShort
  });
  TweenMax.to("#menuRight", 0.5, {
    right: 2,
    ease: "Quad.easeOut"
  });
  return TweenMax.to("#menuRight .close", 0, {
    display: "none"
  });
};

navigation = function(currentSection) {
  var nextSection;
  nextSection = currentSection.attr("href");
  return $("#mainCont").scrollTo($(nextSection), 600, {
    easing: "easeOutQuad"
  });
};

sideMenu = function(btn) {
  var currentid, request;
  request = $(btn).attr("request");
  currentid = $(btn).attr("currentid");
  if (currentid !== "") {
    return $(btn).on("click", function() {
      var req;
      req = $.ajax({
        url: request,
        type: 'POST',
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        data: {
          currentID: currentid
        },
        dataType: 'json'
      });
      return req.complete(function(data) {
        return $("#rightMenuCont").html(data['responseText']);
      });
    });
  } else {
    return $(btn).on("click", function() {
      var req;
      req = $.ajax({
        url: request,
        dataType: 'json'
      });
      return req.complete(function(data) {
        return $("#rightMenuCont").html(data['responseText']);
      });
    });
  }
};

$(function() {
  var winnersSlider;
  $("#filtromapa").on("click", function() {
    if ($(this).hasClass("swap")) {
      initMap2();
      $(this).removeClass("swap");
      $(".leyendaRutaactual").show();
      return $("#zoom").show();
    } else {
      clearInterval(animateController);
      initMap();
      $(".leyendaRutaactual").hide();
      $("#zoom").hide();
      return $(this).addClass("swap");
    }
  });
  $("#recap .recapResume").load("Resumen.aspx");
  $("#menuLeft").on("click", function() {
    return menuLeftSH();
  });
  $("#menuRight .grid").on("click", function() {
    var req;
    $("#rightMenuCont").html("");
    menuGridShow();
    req = $.ajax({
      url: "Muro.aspx",
      dataType: 'json'
    });
    return req.complete(function(data) {
      $("#rightMenuCont").html(data['responseText']);
      return $("#muroOverview div").each(function() {
        return TweenMax.from($(this), 0.4, {
          opacity: 0
        });
      });
    });
  });
  $("#menuRight .itemMenu").on("click", function() {
    $("#rightMenuCont").html("");
    return menuRightShow();
  });
  $("#menuHash .link").on("click", function() {
    var req;
    req = $.ajax({
      url: "Feed.aspx",
      dataType: 'json'
    });
    req.complete(function(data) {
      return $("#leftTwitter").html(data['responseText']);
    });
    return hashShow();
  });
  $("#menuHash .close").on("click", function() {
    return hashHide();
  });
  $("#menuRight .close").on("click", function() {
    if ($(this).hasClass("wide")) {
      return menuGridHide();
    } else {
      return menuRightHide();
    }
  });
  $("#rightMenuCont .cerrar").on("click", function() {
    menuRightHide();
    return menuGridHide();
  });
  $(".drag").draggable();
  console.log("test");
  $(".downNav, .upNav").on("click", function(e) {
    e.preventDefault();
    navigation($(this));
    menuRightHide();
    menuGridHide();
    hashHide();
    TweenMax.to("#leftMenuCont", 0.5, {
      right: "-300px",
      ease: "Quad.easeOut"
    });
    TweenMax.to("#mainCont, header", 0.5, {
      marginLeft: 0,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuLeft", 0.5, {
      right: 0,
      ease: "Quad.easeOut"
    });
    TweenMax.to("#menuRight", 0.5, {
      right: 2,
      ease: "Quad.easeOut"
    });
    return $("#menuLeft").removeClass("close");
  });
  $("#leftMenuCont .link").on("click", function(e) {
    e.preventDefault();
    navigation($(this));
    $("#leftMenuCont .link").removeClass('active');
    return $(this).addClass("active");
  });
  $("#menuRight .item").on("click", function() {
    $("#menuRight .item").removeClass("active");
    return $(this).addClass("active");
  });
  sideMenu("#menuRight #vento1");
  sideMenu("#menuRight #vento2");
  sideMenu("#menuRight #vento3");
  sideMenu("#menuRight .reto");
  $(".updownnav").on("click", function() {});
  $("#zoom .in").on("click", function() {
    var currentZoom;
    currentZoom = map.getZoom();
    return map.setZoom(currentZoom + 1);
  });
  $("#zoom .out").on("click", function() {
    var currentZoom;
    currentZoom = map.getZoom();
    return map.setZoom(currentZoom - 1);
  });
  if (isiOS) {
    $('#logoHeader').css({
      backgroundImage: "url(img/logo_vw_150px.png)",
      width: "150px",
      height: "150px",
      left: 0
    });
    init();
  } else {

  }
  if (navigator.userAgent.match(/iPhone/i)) {
    $("#logoHeader").css({
      width: "60px",
      height: "60px"
    });
  }
  if (navigator.userAgent.match(/iPad/i)) {
    $("#logoHeader").css({
      width: "80px",
      height: "80px",
      backgroundSize: "cover"
    });
  }
  $("#map .downNav").on("click", function() {
    return resumenScroll.tinyscrollbar_update();
  });
  if (wH > wW) {
    if (navigator.userAgent.match(/iPhone/i)) {
      window.wH = window.wH * 1.25;
      window.wW = window.wW * 1.25;
    }
    $("#winners .photo img").width(wH * 1.6);
    $("#winners .photo img").height(wH);
    $("#winners .photo img").css({
      position: "absolute",
      top: "50%",
      left: "50%",
      marginLeft: ((wH * 1.6) / 2) * -1 + "px",
      marginTop: (wH / 2) * -1 + "px"
    });
    $("#winners .photo").height(wH);
    $("#winners .photo").width(wW);
  } else {
    if (navigator.userAgent.match(/iPhone/i)) {
      window.wH = window.wH * 1.25;
      window.wW = window.wW * 1.25;
    }
    $("#winners .photo img").width(wW);
    $("#winners .photo img").height(wW / 1.6);
    $("#winners .photo img").css({
      position: "absolute",
      top: "50%",
      left: "50%",
      marginLeft: (wW / 2) * -1 + "px",
      marginTop: ((wW / 1.6) / 2) * -1 + "px"
    });
    $("#winners .photo").height(wH);
    $("#winners .photo").width(wW);
  }
  winnersSlider = $("#winners .sliderWinners").bxSlider({
    mode: 'horizontal',
    auto: true,
    autoDelay: 0,
    autoControls: false,
    controls: false,
    pager: false,
    pause: 6000,
    speed: 400,
    ease: "easeInOutQuad"
  });
  photosWinneres();
  $("#winners .ganadoresSplash").on("click", function() {
    return showIdea();
  });
  return $("#winners .close").on("click", function() {
    return hideIdea();
  });
});
