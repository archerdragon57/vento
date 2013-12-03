var currentPaint, i, insContent, insString, j, preloadimages, startSprites, swipestart, toSection, twContent, twString, _i, _j, _len, _len1, _ref, _ref1;

swipestart = "activo";

currentPaint = 1;

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

toSection = function(section) {
  var distance, distanceF;
  distance = ($(window).width() * section) * -1;
  distanceF = ($(window).width() / 6) * section;
  $("#sectionsCont").css({
    "-webkit-transform": "translate3d(" + distance + "px,0px,0px)"
  });
  return $("#square").css({
    "-webkit-transform": "translate3d(" + distanceF + "px,0px,0px)"
  });
};

preloadimages(imageFiles).done(function(images) {
  return $('#preloader .ui-spinner').fadeOut("fast", function() {
    return $('#preloader').fadeOut(function() {
      return $(this).remove();
    });
  });
});

$(function() {
  return FastClick.attach(document.body);
});

$(".drag").draggable({
  containment: [$(window).width() - 4096, $(window).height() - 2400, 0, 0]
});

_ref = apis.twits;
for (_i = 0, _len = _ref.length; _i < _len; _i++) {
  i = _ref[_i];
  twString = "<div class='pinTwitter' aidi='" + i.id + "'  id='pinTwit" + i.id + "'> <div class='pinPoint'></div> <div class='pinTwitBack'></div> <div class='pinTwitIcon'></div>  </div>";
  twContent = "<div class='pinTwitCont " + i.id + "'> <div class='infobox'> <div class='twicoinfow'></div><div class='closeTw'><div class='closeBack'></div><div class='closeIcon'></div></div> <div class='titleUsertwinfo'> <span>@</span>" + i.screen_name + "</div> <div class='descriptiontwinfo'>" + i.content + " </div> </div> </div>";
  $("#sectionMap .map").append(twString);
  $("#sectionMap .mapCont").append(twContent);
}

_ref1 = insta.instagrams;
for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
  j = _ref1[_j];
  insString = " <div class='pinInstagram' aidi='" + j.id + "' id='pinIns" + j.id + "'> <div class='pinPoint'></div> <div class='pinInstaBack'></div> <div class='pinInstaIcon'></div> </div>";
  insContent = "<div class='pinInstaCont " + j.id + "'> <div class='instagraminfocont'> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'>" + j.username + "</p> </div> <img alt='' class='photo' src='" + j.lowres + "'> <div class='likeandcaptionCont'> <p class='caption'>" + j.captiontext + "</p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> " + j.like_count + "</p> </div> </div> </div> <div class='closeIns'> <div class='closeBack'></div> <div class='closeIcon'></div> </div> </div> ";
  $("#sectionMap .map").append(insString);
  $("#sectionMap .mapCont").append(insContent);
}

$(".pinTwitIcon").on("click", function(e) {
  var aidi;
  e.preventDefault();
  aidi = $(this).parent().attr("aidi");
  return $(".pinTwitCont." + aidi).fadeIn();
});

$(".pinInstaIcon").on("click", function(e) {
  var aidi;
  e.preventDefault();
  aidi = $(this).parent().attr("aidi");
  return $(".pinInstaCont." + aidi).fadeIn();
});

$(".pinTwitCont .closeIcon").on("click", function(e) {
  e.preventDefault();
  return $(".pinTwitCont").fadeOut();
});

$(".pinInstaCont .closeIcon").on("click", function(e) {
  e.preventDefault();
  return $(".pinInstaCont").fadeOut();
});

$(".btnFooter").on("click", function() {
  var section;
  section = $(this).attr("section");
  $("#sectionsCont").swipe("enable");
  return toSection(section);
});

$("#toMap").on("click", function() {
  return $("#sectionsCont").swipe("disable");
});

$("#btSocial").on("click", function() {
  $(".socialPages").toggle();
  return $(".header-btnConfig").toggle();
});

$("#btnChngPaint").on("click", function() {
  var colors, paints;
  paints = ["paint-blanco", "paint-negro", "paint-gris", "paint-rojo", "paint-plata", "paint-azul", "paint-beige"];
  colors = ["Blanco Candy", "Negro Profundo", "Gris Pimienta", "Rojo Flash", "Plata Reflex", "Shadow Blue", "Beige Tierra"];
  if (currentPaint === paints.length - 1) {
    currentPaint = 0;
  }
  $(".carPaint").removeClass("active");
  $("#" + paints[currentPaint]).addClass("active");
  $("#carPaintTitle").html(colors[currentPaint]);
  return currentPaint++;
});

console.log("width " + $(window).width());

console.log("width js" + window.screen.availWidth);
