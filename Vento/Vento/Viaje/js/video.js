(function() {
  window.photosWinneres = function() {
    return $.ajax({
      type: 'POST',
      contentType: "application/json; charset=utf-8",
      url: "../RequestsSocials/Instagram.aspx/getPhase3",
      dataType: "json",
      success: function(data) {
        var i, videourl, _i, _len, _ref;
        console.log(data.d);
        videourl = "https://dl.dropboxusercontent.com/u/72722605/vento/xperiVento.mp4";
        $("#winners .instagramPhotoGrid").html("");
        $("#winners .instagramPhotoGrid").append("<a id='' class='instavideoCont fancybox' data-fancybox-type='iframe' href='" + videourl + "'> <span></span> </a>");
        _ref = data.d;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          i = _ref[_i];
          $("#winners .instagramPhotoGrid").append("<img alt='' class='instagramPhoto' src='" + i[4] + "'>");
        }
        return $(".instavideoCont").on("click", function() {
          return $(this).find("video").get(0).play();
        });
      }
    });
  };

}).call(this);
