(function() {
  $(function() {
    var slider1, slider2, slider3, slider4;
    slider1 = $("#slider1 .slider").bxSlider({
      mode: 'horizontal',
      auto: true,
      autoDelay: 0,
      autoControls: false,
      controls: false,
      pager: false,
      pause: 5000,
      speed: 400,
      ease: "easeInOutQuad"
    });
    $("#slider1 .right").on("click", function() {
      slider1.goToNextSlide();
      return false;
    });
    $("#slider1 .left").on("click", function() {
      slider1.goToPrevSlide();
      return false;
    });
    slider2 = $("#slider2 .slider").bxSlider({
      mode: 'horizontal',
      auto: true,
      autoDelay: 200,
      autoControls: false,
      controls: false,
      pager: false,
      pause: 5000,
      speed: 400,
      ease: "easeInOutQuad"
    });
    $("#slider2 .right").on("click", function() {
      slider2.goToNextSlide();
      return false;
    });
    $("#slider2 .left").on("click", function() {
      slider2.goToPrevSlide();
      return false;
    });
    slider3 = $("#slider3 .slider").bxSlider({
      mode: 'horizontal',
      auto: true,
      autoDelay: 400,
      autoControls: false,
      controls: false,
      pager: false,
      pause: 5000,
      speed: 400,
      ease: "easeInOutQuad"
    });
    $("#slider3 .right").on("click", function() {
      slider3.goToNextSlide();
      return false;
    });
    $("#slider3 .left").on("click", function() {
      slider3.goToPrevSlide();
      return false;
    });
    slider4 = $("#slider4 .slider").bxSlider({
      mode: 'horizontal',
      auto: true,
      autoDelay: 600,
      autoControls: false,
      controls: false,
      pager: false,
      pause: 5000,
      speed: 400,
      ease: "easeInOutQuad"
    });
    $("#slider4 .right").on("click", function() {
      slider4.goToNextSlide();
      return false;
    });
    return $("#slider4 .left").on("click", function() {
      slider4.goToPrevSlide();
      return false;
    });
  });

}).call(this);
