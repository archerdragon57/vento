var init = false;
window.fbAsyncInit = function () {
    FB.init({
        appId: 230348633788922,
        cookie: true,
        xfbml: true,
        oauth: true
    });
    FB.Event.subscribe('auth.authResponseChange', function (response) {
        if (response.status === 'connected') {
            testAPI();
        } else if (response.status === 'not_authorized') {
            FB.login();
        } else {
            FB.login();
        }
    });
};
(function () {
    var e = document.createElement('script'); e.async = true;
    e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
    document.getElementById('fb-root').appendChild(e);
}());
function login() {
    if (init) {
        return false;
    }
    init = true;
    FB.login(function (response) {
        if (response.authResponse) {
            accessToken = response.authResponse.accessToken;
        } else {
            console.log('User cancelled login or did not fully authorize.');
        }
    }, { scope: 'friends_about_me,user_status' });
}

$("#competitorLike").on('click', function(event) {
    event.preventDefault();
    FB.login();
});
function testAPI() {
    FB.api('/me', function (response) {
        $.ajax({
            type: 'POST',
            contentType: "application/json; charset=utf-8",
            data: "{'fbid':'" + response.id + "','u_id':'" + $("#competitorTwitter").html() + "'}",
            url: "Participante.aspx/Voto",
            dataType: "json",
            success: function (data) {
                console.log(data.d);
            }
        });
    });
}