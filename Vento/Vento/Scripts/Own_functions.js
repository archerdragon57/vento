function display_from_url(e, form) {
    e.preventDefault();
    if (window.selected == 1) {
        _gaq.push(['_trackPageview', 'Participa/Enviados']);
    }
    if (window.selected == 2) {
        _gaq.push(['_trackPageview', 'Prueba/Enviados']);
    }
    var req = $.ajax({
        type: 'POST',
        contentType: "application/x-www-form-urlencoded;charset=UTF-8",
        url: form.attr("action"),
        data: form.serialize(),
        dataType: "json"
    });
    req.complete(function (data) {
        if (data.responseText.indexOf("¡Espera la respuesta!") > -1)
        {
            $(".shade_content_bottom").load("../Exito.aspx");
        }
        else
        {
            $(".shade_content_bottom").load("../Error.aspx");
        }
        //$(".main-content").html(data['responseText']);
        $(".shade_div").css("display", "block");
    });
    $(".shade_close_icon").click(function () {
        close_layers();
    });

}
$(".shade_close_icon").click(function () {
    close_layers();
});
function close_layers() {
    $(".shade_div").css("display", "none");
    $("#CheckBox1").attr('checked', false);
}
$(document).ready(function () {
    $(".chackbox").click(function (e) {
        e.preventDefault();
        $(".main-content").load(
	  		$(this).attr("href"),
	  		function () {
	  		}
	  	);
    });
});