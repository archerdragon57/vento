/* Init GA */

var _gaq = _gaq || [];

  _gaq.push(['_setAccount', 'UA-38641079-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
/* end Init GA */

/* base function for pageViews */
 function pageViewTrack(variable) {
   //for page views
  _gaq.push(['_trackPageview', variable]);
}

/* base function for event Tracking  */
 function eventTrack(variable) {
  //for events
  _gaq.push(['_trackEvent', 'Site', 'click', variable]);
}


$(function() {

  /* call function on click */

  $('.social-share .clickFacebook').on('click', function (e) {
    pageViewTrack('ruta/share/facebook');
  });
  $('.social-share .clickTwitter').on('click', function (e) {
    pageViewTrack('ruta/share/twitter');
  });
  $('#leftMenuCont .video').on('click', function (e) {
    pageViewTrack('ruta/intro');
  });
  $('#leftMenuCont .mapa').on('click', function (e) {
    pageViewTrack('ruta/mapa');
  });
  $('#leftMenuCont .Bitacora').on('click', function (e) {
    pageViewTrack('ruta/bitacora');
  });
  $('#leftMenuCont .pruebaManejo').on('click', function (e) {
    pageViewTrack('ruta/pruebaManejo');
  });


  $('#menuRight .reto').on('click', function (e) {
    pageViewTrack('ruta/reto');
  });
  $('#menuRight #vento1').on('click', function (e) {
    pageViewTrack('ruta/vento1');
  });
  $('#menuRight #vento2').on('click', function (e) {
    pageViewTrack('ruta/vento2');
  });
  $('#menuRight #vento3').on('click', function (e) {
    pageViewTrack('ruta/vento3');
  });
  $('#menuRight .grid').on('click', function (e) {
    pageViewTrack('ruta/feedRS');
  });

  $('.footer .configurador').on('click', function (e) {
    pageViewTrack('ruta/footer/pruebamanejo');
  });



});