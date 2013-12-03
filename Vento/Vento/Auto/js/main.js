var $currentHotSpot, copysComodidad, copysConsumo, copysEquipamiento, copysSeguridad, currentFeature, currentPaint, featureIn, featureTitle, init, introVideo, openMap, openTwits, patternOff, patternOn, preloadimages, resize, startSprites, video;

window.wH = void 0;

window.wW = void 0;

openTwits = false;

currentPaint = 1;

$currentHotSpot = void 0;

video = Popcorn("#video");

featureTitle = ["equipamiento"];

currentFeature = 0;

if (navigator.userAgent.match(/iPhone/i)) {
  $('#viewport').attr('content', 'width=device-width,minimum-scale=0.8,maximum-scale=0.8,initial-scale=0.8');
}

openMap = function() {
  $("#map").addClass("openmap");
  return setTimeout(function() {
    return $("#map").css({
      "-webkit-clip-path": "none",
      zIndex: 20
    });
  }, 730);
};

copysComodidad = function() {
  $("#features .title").html(copys.feature.comodidad.title);
  $("#features .subtitle").html(copys.feature.comodidad.subtitle);
  $("#features .description").html(copys.feature.comodidad.description);
  $("#hotuno .titleInfo").html(copys.feature.comodidad.hotspot[0].title);
  $("#hotuno .descriptionInfo").html(copys.feature.comodidad.hotspot[0].description);
  $("#hotuno .hotspotImage").attr({
    href: copys.feature.comodidad.hotspot[0].big
  });
  $("#hotuno .hotspotImage img").attr({
    src: copys.feature.comodidad.hotspot[0].thumb
  });
  $("#hotdos .titleInfo").html(copys.feature.comodidad.hotspot[1].title);
  $("#hotdos .descriptionInfo").html(copys.feature.comodidad.hotspot[1].description);
  $("#hotdos .hotspotImage").attr({
    href: copys.feature.comodidad.hotspot[1].big
  });
  $("#hotdos .hotspotImage img").attr({
    src: copys.feature.comodidad.hotspot[1].thumb
  });
  $("#hottres .titleInfo").html(copys.feature.comodidad.hotspot[2].title);
  $("#hottres .descriptionInfo").html(copys.feature.comodidad.hotspot[2].description);
  $("#hottres .hotspotImage").attr({
    href: copys.feature.comodidad.hotspot[2].big
  });
  $("#hottres .hotspotImage img").attr({
    src: copys.feature.comodidad.hotspot[2].thumb
  });
  $("#features .hotspotVideoCont").attr({
    href: copys.feature.comodidad.video
  });
  $("#features .fbShareCont").attr({
    href: copys.feature.comodidad.facebook
  });
  return $("#features .twShareCont").attr({
    href: copys.feature.comodidad.twitter
  });
};

copysSeguridad = function() {
  $("#features .title").html(copys.feature.seguridad.title);
  $("#features .subtitle").html(copys.feature.seguridad.subtitle);
  $("#features .description").html(copys.feature.seguridad.description);
  $("#hotuno .titleInfo").html(copys.feature.seguridad.hotspot[0].title);
  $("#hotuno .descriptionInfo").html(copys.feature.seguridad.hotspot[0].description);
  $("#hotuno .hotspotImage").attr({
    href: copys.feature.seguridad.hotspot[0].big
  });
  $("#hotuno .hotspotImage img").attr({
    src: copys.feature.seguridad.hotspot[0].thumb
  });
  $("#hotdos .titleInfo").html(copys.feature.seguridad.hotspot[1].title);
  $("#hotdos .descriptionInfo").html(copys.feature.seguridad.hotspot[1].description);
  $("#hotdos .hotspotImage").attr({
    href: copys.feature.seguridad.hotspot[1].big
  });
  $("#hotdos .hotspotImage img").attr({
    src: copys.feature.seguridad.hotspot[1].thumb
  });
  $("#hottres .titleInfo").html(copys.feature.seguridad.hotspot[2].title);
  $("#hottres .descriptionInfo").html(copys.feature.seguridad.hotspot[2].description);
  $("#hottres .hotspotImage").attr({
    href: copys.feature.seguridad.hotspot[2].big
  });
  $("#hottres .hotspotImage img").attr({
    src: copys.feature.seguridad.hotspot[2].thumb
  });
  $("#features .hotspotVideoCont").attr({
    href: copys.feature.seguridad.video
  });
  $("#features .fbShareCont").attr({
    href: copys.feature.seguridad.facebook
  });
  return $("#features .twShareCont").attr({
    href: copys.feature.seguridad.twitter
  });
};

copysEquipamiento = function() {
  $("#features .title").html(copys.feature.equipamiento.title);
  $("#features .subtitle").html(copys.feature.equipamiento.subtitle);
  $("#features .description").html(copys.feature.equipamiento.description);
  $("#hotuno .titleInfo").html(copys.feature.equipamiento.hotspot[0].title);
  $("#hotuno .descriptionInfo").html(copys.feature.equipamiento.hotspot[0].description);
  $("#hotuno .hotspotImage").attr({
    href: copys.feature.equipamiento.hotspot[0].big
  });
  $("#hotuno .hotspotImage img").attr({
    src: copys.feature.equipamiento.hotspot[0].thumb
  });
  $("#hotdos .titleInfo").html(copys.feature.equipamiento.hotspot[1].title);
  $("#hotdos .descriptionInfo").html(copys.feature.equipamiento.hotspot[1].description);
  $("#hotdos .hotspotImage").attr({
    href: copys.feature.equipamiento.hotspot[1].big
  });
  $("#hotdos .hotspotImage img").attr({
    src: copys.feature.equipamiento.hotspot[1].thumb
  });
  $("#hottres .titleInfo").html(copys.feature.equipamiento.hotspot[2].title);
  $("#hottres .descriptionInfo").html(copys.feature.equipamiento.hotspot[2].description);
  $("#hottres .hotspotImage").attr({
    href: copys.feature.equipamiento.hotspot[2].big
  });
  $("#hottres .hotspotImage img").attr({
    src: copys.feature.equipamiento.hotspot[2].thumb
  });
  $("#features .hotspotVideoCont").attr({
    href: copys.feature.equipamiento.video
  });
  $("#features .fbShareCont").attr({
    href: copys.feature.equipamiento.facebook
  });
  return $("#features .twShareCont").attr({
    href: copys.feature.equipamiento.twitter
  });
};

copysConsumo = function() {
  $("#features .title").html(copys.feature.consumo.title);
  $("#features .subtitle").html(copys.feature.consumo.subtitle);
  $("#features .description").html(copys.feature.consumo.description);
  $("#hotuno .titleInfo").html(copys.feature.consumo.hotspot[0].title);
  $("#hotuno .descriptionInfo").html(copys.feature.consumo.hotspot[0].description);
  $("#hotuno .hotspotImage").attr({
    href: copys.feature.consumo.hotspot[0].big
  });
  $("#hotuno .hotspotImage img").attr({
    src: copys.feature.consumo.hotspot[0].thumb
  });
  $("#hotdos .titleInfo").html(copys.feature.consumo.hotspot[1].title);
  $("#hotdos .descriptionInfo").html(copys.feature.consumo.hotspot[1].description);
  $("#hotdos .hotspotImage").attr({
    href: copys.feature.consumo.hotspot[1].big
  });
  $("#hotdos .hotspotImage img").attr({
    src: copys.feature.consumo.hotspot[1].thumb
  });
  $("#hottres .titleInfo").html(copys.feature.consumo.hotspot[2].title);
  $("#hottres .descriptionInfo").html(copys.feature.consumo.hotspot[2].description);
  $("#hottres .hotspotImage").attr({
    href: copys.feature.consumo.hotspot[2].big
  });
  $("#hottres .hotspotImage img").attr({
    src: copys.feature.consumo.hotspot[2].thumb
  });
  $(".hotspotVideoCont").attr({
    href: copys.feature.consumo.video
  });
  $("#features .fbShareCont").attr({
    href: copys.feature.consumo.facebook
  });
  return $("#features .twShareCont").attr({
    href: copys.feature.consumo.twitter
  });
};

startSprites = function() {
  $("#sprt-carro1").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-carro2").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-sombrilla").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-maguey").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-sombrero").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-pulpo").sprite({
    fps: 8,
    no_of_frames: 16
  });
  $("#sprt-pez").sprite({
    fps: 8,
    no_of_frames: 6
  });
  $("#sprt-palmera1").sprite({
    fps: 8,
    no_of_frames: 8
  });
  $("#sprt-palmera2").sprite({
    fps: 8,
    no_of_frames: 8
  });
  $("#sprt-ferry").sprite({
    fps: 8,
    no_of_frames: 6
  });
  $("#sprt-bailarina").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-fabrica").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-ancla").sprite({
    fps: 8,
    no_of_frames: 3
  });
  $("#sprt-agua3").sprite({
    fps: 8,
    no_of_frames: 8
  });
  $("#sprt-agua2").sprite({
    fps: 8,
    no_of_frames: 10
  });
  $("#sprt-agua1").sprite({
    fps: 8,
    no_of_frames: 7
  });
  return $("#sprt-volcan").sprite({
    fps: 8,
    no_of_frames: 9
  });
};

patternOn = function() {
  TweenMax.to($(".pattern"), 0.3, {
    opacity: 0
  });
  return TweenMax.to($(".pattern2"), 0.3, {
    opacity: 1
  });
};

patternOff = function() {
  TweenMax.to($(".pattern2"), 0.3, {
    opacity: 0
  });
  return TweenMax.to($(".pattern"), 0.3, {
    opacity: 1
  });
};

introVideo = function(time) {
  video.currentTime(time);
  video.play();
  return patternOff();
};

init = function() {
  copysEquipamiento();
  video.play();
  timelineVideoPointActiveIn("videouno");
  $(".videoPoint#videouno").addClass("active");
  return interfaceIn();
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

preloadimages(imageFiles).done(function(images) {
  return $('#preloader .ui-spinner').fadeOut("fast", function() {
    return $('#preloader').fadeOut(function() {
      $(this).remove();
      return init();
    });
  });
});

resize = function() {
  var ratio, wH, wW;
  wH = $(window).height();
  wW = $(window).width();
  ratio = wW / wH;
  if (wW > wH) {
    if (ratio > 1.777) {
      $("#features #video").width(wW);
      $("#features #video").height("auto");
      return $("#features #video").css({
        position: "absolute",
        top: "50%",
        left: "50%",
        marginLeft: (wW / 2) * -1 + "px",
        marginTop: ($("#features #video").height() / 2) * -1 + "px"
      });
    } else {
      $("#features #video").width(wH * 1.777);
      $("#features #video").height(wH);
      return $("#features #video").css({
        position: "absolute",
        top: "50%",
        left: "50%",
        marginLeft: ((wH * 1.777) / 2) * -1 + "px",
        marginTop: (wH / 2) * -1 + "px"
      });
    }
  } else {
    $("#features #video").height(wH);
    $("#features #video").width(wH * 1.777);
    return $("#features #video").css({
      position: "absolute",
      top: "50%",
      left: "50%",
      marginLeft: ((wH * 1.777) / 2) * -1 + "px",
      marginTop: (wH / 2) * -1 + "px"
    });
  }
};

resize();

featureIn = function(feature) {
  var title, titleMask, titleMaskCont;
  titleMaskCont = $("#" + feature + " .titleMaskCont");
  titleMask = $("#" + feature + " .titleMask");
  title = $("#" + feature + " .title");
  return featureTitleIn();
};

$(function() {
  var i, insString, j, twString, _i, _j, _len, _len1, _ref, _ref1;
  $(".fancybox").fancybox({
    fitToView: true,
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
      allowfullscreen: true,
      wmode: 'transparent'
    }
  });
  $(".videoPoint ").on("click", function() {
    var time;
    time = $(this).attr("time");
    if (time === 0) {
      introVideo(time);
      copysEquipamiento();
      $(".videoPoint").removeClass("stop");
      $(".videoPoint").removeClass("active");
      $(this).addClass("active");
    }
    if ($(".videoPointPlay").hasClass("spotsShowed")) {
      hotspotsBtnsClose();
      $(this).removeClass("stop");
      patternOff();
      video.play(time);
      return $(".videoPointPlay ").removeClass("spotsShowed");
    } else {
      $(this).removeClass("stop");
      featureTitleOutWH("equipamiento");
      patternOff();
      return video.play(time);
    }
  });
  video.code({
    start: 6.7,
    onStart: function() {
      copysEquipamiento();
      video.pause();
      patternOn();
      featureTitleIn("equipamiento");
      timelineVideoPointActiveIn("videodos");
      $(".videoPoint#videodos").addClass("active");
      $(".videoPoint").removeClass("stop");
      $(".videoPoint#videodos").addClass("stop");
      return click_equipamiento();
    }
  });
  video.code({
    start: 13.7,
    onStart: function() {
      copysComodidad();
      video.pause();
      patternOn();
      featureTitleIn("equipamiento");
      timelineVideoPointActiveIn("videotres");
      $(".videoPoint#videotres").addClass("active");
      $(".videoPoint").removeClass("stop");
      $(".videoPoint#videotres").addClass("stop");
      return click_comodidad();
    }
  });
  video.code({
    start: 20.7,
    onStart: function() {
      copysConsumo();
      video.pause();
      patternOn();
      featureTitleIn("equipamiento");
      timelineVideoPointActiveIn("videocuatro");
      $(".videoPoint#videocuatro").addClass("active");
      $(".videoPoint").removeClass("stop");
      $(".videoPoint#videocuatro").addClass("stop");
      return click_consumo();
    }
  });
  video.code({
    start: 28,
    onStart: function() {
      copysSeguridad();
      video.pause();
      patternOn();
      featureTitleIn("equipamiento");
      timelineVideoPointActiveIn("videocinco");
      $(".videoPoint#videocinco").addClass("active");
      $(".videoPoint").removeClass("stop");
      $(".videoPoint#videocinco").addClass("stop");
      return click_seguridad();
    }
  });
  video.on("timeupdate", function() {
    var ct, d, percent, w;
    ct = this.currentTime();
    d = this.duration();
    w = 100;
    percent = (ct * w) / d;
    return $(".videoProgressbar").width(percent + "%");
  });
  $(".colorsLinkCont").hover(function() {
    return colorsLinkBtnIn();
  }, function() {
    return colorsLinkBtnOut();
  });
  $("#features .hotspotbtn").hover(function() {
    $currentHotSpot = $(this);
    return hotspotOpenedBtnOver($currentHotSpot);
  }, function() {
    return hotspotOpenedBtnOut($currentHotSpot);
  });
  $("#paintBtn").hover(function() {
    return paintPageBtnOver();
  }, function() {
    return paintPageBtnOut();
  });
  $("#mapBtn").hover(function() {
    return mapPageBtnOver();
  }, function() {
    return mapPageBtnOut();
  });
  $(".InsPageCont").hover(function() {
    return instaPageBtnOver();
  }, function() {
    return instaPageBtnOut();
  });
  $(".fbPageCont").hover(function() {
    return fbPageBtnIn();
  }, function() {
    return fbPageBtnOut();
  });
  $(".twPageCont").hover(function() {
    return twPageBtnIn();
  }, function() {
    return twPageBtnOut();
  });
  $(".knowMoreCont").hover(function() {
    return knowMoreTextBtnIn("features");
  }, function() {
    return knowMoreTextBtnOut("features");
  });
  $("#features .hotspotCloseCont").on("click", function(ee) {
    var currentHS;
    ee.preventDefault();
    currentHS = $(this).attr("hotspot");
    hotspotClose(currentHS);
    $(".hotspotIdle, .hotspotOver").css({
      visibility: "visible"
    });
    return hotspotsBtnsOpen();
  });
  $("#features .hotspotOver").on("click", function(e) {
    var currentHS;
    e.preventDefault();
    currentHS = $(this).attr("hotspot");
    console.log(currentHS);
    $("#" + currentHS + " .hotspotOpenContainer").css({
      visibility: "visible"
    });
    hotspotOpen(currentHS);
    hotspotsBtnsClose();
    return $(".hotspotIdle, .hotspotOver").css({
      visibility: "hidden"
    });
  });
  $(".hotmapOver").on("click", function() {
    var currentId;
    currentId = $(this).parent().attr("id");
    console.log(currentId);
    return hotspotMapOpen(currentId);
  });
  $(".map .hotspotCloseCont").on("click", function() {
    var currentId;
    currentId = $(this).parent().parent().attr("id");
    console.log(currentId);
    return hotspotMapClose(currentId);
  });
  $(".hotspotCont").hover(function() {
    var currentHS;
    currentHS = $(this).attr("hotspot");
    return hotspotBtnOver(currentHS);
  }, function() {
    var currentHS;
    currentHS = $(this).attr("hotspot");
    return hotspotBtnOut(currentHS);
  });
  $(".knowMoreCont").on("click", function(e) {
    e.preventDefault();
    $(".videoPointPlay").addClass("spotsShowed");
    featureTitleOut("features");
    return $(".hotspotCont").css({
      display: "block"
    });
  });
  $("#paintBtn").on("click", function() {
    if ($("#paintBtn").hasClass("flipped")) {
      paintOut();
      $("#mapBtn").fadeIn();
    } else {
      $("#mapBtn").fadeOut();
      paintIn();
    }
    return $("#paintBtn").toggleClass("flipped");
  });
  $("#mapBtn").on("click", function() {
    if ($("#mapBtn").hasClass("flipped")) {
      mapOut();
      $("#paintBtn").fadeIn();
    } else {
      $("#paintBtn").fadeOut();
      mapIn();
    }
    return $("#mapBtn").toggleClass("flipped");
  });
  $(".changePaint").on("click", function() {
    var colors, paints;
    paints = ["paint-blanco", "paint-negro", "paint-gris", "paint-rojo", "paint-plata", "paint-azul", "paint-beige"];
    colors = ["Blanco Candy", "Negro Profundo", "Gris Pimienta", "Rojo Flash", "Plata Reflex", "Shadow Blue", "Beige Tierra"];
    if (currentPaint === paints.length - 1) {
      currentPaint = 0;
    }
    $(".cochePaint").removeClass("active");
    $("#" + paints[currentPaint]).addClass("active");
    $("#paintColor").html(colors[currentPaint]);
    console.log(currentPaint);
    return currentPaint++;
  });
  $("#features .hotspotbtn").on("click", function() {
    var cont, hotspot;
    $(".hotspotbtn").removeClass("active");
    $(this).addClass("active");
    cont = $(this).attr("hscont");
    hotspot = $(this).parent().parent().attr("hotspot");
    console.log(hotspot);
    console.log(cont);
    $(this).parent().parent().find(".contentCont").hide();
    $("#" + cont).show();
    return hotspotInfoOpen(hotspot);
  });
  $(".map .hotspotbtn").on("click", function() {
    var currentCont, currentHotSpot;
    $(".map .hotspotbtn").removeClass("active");
    $(this).addClass("active");
    currentCont = $(this).attr("hscont");
    currentHotSpot = $(this).parent().parent().attr("id");
    $("#" + currentHotSpot + " .contentCont").hide();
    $("#" + currentCont).show();
    return hotspotInfoOpen(currentHotSpot);
  });
  $("#pictureGalleryCont .pictureGalleryClose").on("click", function() {
    return fullScreenPhotoOut();
  });
  if (window.location.hash === "#comodidad") {
    $("#videotres").trigger("click");
  }
  if (window.location.hash === "#consumo") {
    $("#videocuatro").trigger("click");
  }
  if (window.location.hash === "#consumo") {
    $("#videocinco").trigger("click");
  }
  if (window.location.hash === "#colores") {
    $("#paintBtn").trigger("click");
  }
  if (window.location.hash === "#ruta") {
    $("#mapBtn").trigger("click");
  }
  startSprites();
  _ref = apis.twits;
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    i = _ref[_i];
    if (i.dia_id = "1") {
      twString = "<div class='pinTwitter'  id='pinTwit" + i.id + "'> <div class='pinPoint'></div> <div class='pinTwitBack'></div> <div class='pinTwitIcon'></div> <div class='pinTwitCont'> <div class='infobox'> <div class='twicoinfow'></div><div class='closeTw'><div class='closeBack'></div><div class='closeIcon'></div></div> <div class='titleUsertwinfo'> <span>@</span>" + i.screen_name + "</div> <div class='descriptiontwinfo'>" + i.content + " </div> </div> </div> </div>";
      $("#map .map").append(twString);
    }
  }
  _ref1 = insta.instagrams;
  for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
    j = _ref1[_j];
    insString = " <div class='pinInstagram'  id='pinIns" + j.id + "'> <div class='pinPoint'></div> <div class='pinInstaBack'></div> <div class='pinInstaIcon'></div> <div class='pinInstaCont'> <div class='instagraminfocont'> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'>" + j.username + "</p> </div> <img alt='' class='photo' src='" + j.lowres + "'> <div class='likeandcaptionCont'> <p class='caption'>" + j.captiontext + "</p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + j.like_count + "</p> </div> </div> </div> <div class='closeIns'> <div class='closeBack'></div> <div class='closeIcon'></div> </div> </div> </div>";
    $("#map .map").append(insString);
  }
  $(".drag").draggable({
    containment: [$(window).width() - 4096, $(window).height() - 2400, 0, 0]
  });
  $(".pinTwitIcon").on("click", function() {
    var currentTw;
    currentTw = $(this).parent().attr("id");
    return pinTwitContIn(currentTw);
  });
  $(".pinTwitter .closeIcon").on("click", function() {
    var currentTw;
    currentTw = $(this).parent().parent().parent().parent().attr("id");
    return pinTwitContOut(currentTw);
  });
  $(".pinInstaIcon").on("click", function() {
    var currentIns;
    currentIns = $(this).parent().attr("id");
    return pinInstaContIn(currentIns);
  });
  return $(".pinInstagram .closeIcon").on("click", function() {
    var currentIns;
    currentIns = $(this).parent().parent().parent().attr("id");
    return pinInstaContOut(currentIns);
  });
});

if (navigator.userAgent.match(/iPad/i)) {
  $("#map .map").css({
    backgroundSize: "cover"
  });
  $("#features .videoPinFeatures").css({
    display: "block"
  });
  $("#features .videoPinFeatures, #mapBtn, #paintBtn").on("click", function() {
    $("#features .videoPinFeatures").hide();
    return $("#video").get(0).play();
  });
}

$(window).resize(function() {
  return resize();
});
