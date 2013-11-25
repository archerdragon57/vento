  var resumenScroll;
  resumenScroll = $('#recap .sidebarCont');
(function() {





  $(function() {
      return $(".instavideoCont").on("click", function () {
        // if ($(".instavideoCont").first().find("video").attr("src").indexOf("dropbox") > -1) {
        //     $(".instavideoCont").first().css("width", "705px");
        //     $(".instavideoCont").first().css("height", "402px");
        //     $(".instavideoCont").first().find("video").css("width", "712px");
        //     $(".instavideoCont").first().find("video").css("height", "402px");
        // }
        return $(this).find("video").get(0).play();
    });
  });

}).call(this);

$(function () {
		$("#dayBack").click(function (e) {
			if ($(this).attr('href') != "" && $(this).attr('href') != "#") {
				e.preventDefault();
				var req = $.ajax({
					type: 'POST',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					url: $(this).attr('href'),
					data: {},
					dataType: "json"
				});
				req.complete(function (data) {
					$(".recapResume").html(data.responseText.substring(data.responseText.indexOf("<div class='recapDay sidebarCont'>")), data.responseText.indexOf("<script src='js/resumen.js'>"));
				});
			}
		})
		$("#dayForward").click(function (e) {
			if ($(this).attr('href') != "" && $(this).attr('href') != "#") {
				e.preventDefault();
				var req = $.ajax({
					type: 'POST',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					url: $(this).attr('href'),
					data: {},
					dataType: "json"
				});
				req.complete(function (data) {
					$(".recapResume").html(data.responseText.substring(data.responseText.indexOf("<div class='recapDay sidebarCont'>")), data.responseText.indexOf("<script src='js/resumen.js'>"));
				});
			}
		})


});

$(document).ready(function(){
	resumenScroll.tinyscrollbar();

    // resumenScroll.tinyscrollbar_update();
	$("#div_video_lift").css("display", "none");
});

window.onload = (function(){
	  // resumenScroll.tinyscrollbar();

    resumenScroll.tinyscrollbar_update();
    $("#div_video_lift").css("display", "none");
});