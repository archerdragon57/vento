(function() {
  var isTouch;

  isTouch = Modernizr.touch !== false;

  $(function() {
    $(".menu-btn").on("click", function() {
      return $(".header-nav").slideToggle();
    });
    if (isTouch) {

    } else {
      return alert("not touch");
    }
  });

}).call(this);
