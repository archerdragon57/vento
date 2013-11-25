(function() {
  $(function() {
    $(".showRank").on("click", function() {
      return $("#menuRight .item").removeClass("active");
    });
    $('.autoContent .animation').sprite({
      fps: 16,
      no_of_frames: 27
    }).active();
    return sideMenu(".autoContent .showRank");
  });

}).call(this);
