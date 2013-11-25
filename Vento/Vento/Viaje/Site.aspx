<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Site.aspx.cs" Inherits="Vento.Viaje.Site" %>
<!DOCTYPE html>
<html>
  <head runat='server'>
    <meta charset='iso-8859-1'>
    <meta content='width=device-width, initial-scale=1.0' id='viewport' name='viewport'>
    <!-- %meta{:name=>"viewport", :content=>"width=device-width,minimum-scale=0.5,maximum-scale=0.5,initial-scale=0.5"} -->
    <meta title='Volkswagen Vento - La Ruta de las Ideas'>
    <meta description='En busca de una idea para salvar al planeta de la contaminación. Suena complicado, por suerte, el nuevo Vento de Volkswagen está de su lado'>
    <meta keywords='volkswagen, vento, carros, ideas, creatividad, invaders fest, publicidad, marketing, ruta vento, roadtrip, mejor carro para roadtrip, contaminacion, ecologia, cuidar el planeta'>
    <%: Scripts.Render("~/bundles/modernizr") %>
    <link href='css/style.css' rel='stylesheet'>
  </head>
  <body>
    <div id='fb-root'></div>
    <form runat='server'>
      <asp:ScriptManager runat='server'>
        <Scripts>
          <asp:ScriptReference Name='MsAjaxBundle'></asp:ScriptReference>
          <asp:ScriptReference Name='jquery'></asp:ScriptReference>
          <asp:ScriptReference Name='jquery.ui.combined'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='WebForms.js' Path='~/Scripts/WebForms/WebForms.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='WebUIValidation.js' Path='~/Scripts/WebForms/WebUIValidation.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='MenuStandards.js' Path='~/Scripts/WebForms/MenuStandards.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='GridView.js' Path='~/Scripts/WebForms/GridView.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='DetailsView.js' Path='~/Scripts/WebForms/DetailsView.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='WebParts.js' Path='~/Scripts/WebForms/WebParts.js'></asp:ScriptReference>
          <asp:ScriptReference Assembly='System.Web' Name='Focus.js' Path='~/Scripts/WebForms/Focus.js'></asp:ScriptReference>
          <asp:ScriptReference Name='WebFormsBundle'></asp:ScriptReference>
        </Scripts>
      </asp:ScriptManager>
    </form>
    <script src='js/click_tags.js'></script>
    <div id='leftMenuCont'>
      <a class='link winners active' href='#winners'>
        <img alt='' src='img/win/inicio_menu_icon.png'>
        <p>
          Inicio
        </p>
      </a>
      <a class='link video' href='#intro'>
        <img alt='' src='img/menu_video_icon.png'>
        <p>
          Resumen
        </p>
      </a>
      <a class='link mapa' href='#map'>
        <img alt='' src='img/menu_ruta_icon.png'>
        <p>
          Mapa
        </p>
      </a>
      <a class='link Bitacora' href='#recap'>
        <img alt='' src='img/menu_bitacora_icon.png'>
        <p>
          Bitácora
        </p>
      </a>
      <a class='pruebaManejo' href='http://nuevovento.mx/viaje/registro.aspx' target='_blank'>
        <img alt='' src='img/menu_prueba_de_manejo.png'>
        <p>
          Prueba de Manejo
        </p>
      </a>
    </div>
    <div id='rightMenuCont'></div>
    <div id='leftTwitter'></div>
    <div id='preloader'>
      <div class='preloading' id='preloader-content'>
        <div class='ui-spinner'>
          <div class='wheel'></div>
          <div class='preloader-text'>
            Cargando...
          </div>
        </div>
      </div>
    </div>
    <header>
      <a href='http://www.vw.com.mx' id='logoHeader' target='_blank'></a>
      <a href='#' id='menuLeft'>
        <div class='menuExtend'></div>
      </a>
    </header>
    <div id='mainCont'>
      <div class='container' id='winners'>
        <canvas id='confeti'></canvas>
        <ul class='sliderWinners'>
          <li>
            <div class='photo' id='winnersPhoto1'>
              <img alt='' src='img/win/win01.jpg'>
            </div>
          </li>
          <li>
            <div class='photo' id='winnersPhoto2'>
              <img alt='' src='img/win/win02.jpg'>
            </div>
          </li>
          <li>
            <div class='photo' id='winnersPhoto3'>
              <img alt='' src='img/win/win03.jpg'>
            </div>
          </li>
        </ul>
        <div class='ganadoresSplash'></div>
        <div class='ideaCont sidebarCont'>
          <div class='scrollbar'>
            <div class='track'>
              <div class='thumb'>
                <div class='end'></div>
              </div>
            </div>
          </div>
          <div class='viewport'>
            <div class='overview'>
              <div class='descriptionContainer'>
                <div class='descriptionContent'>
                  <p class='title'>
                    Idea Ganadora
                  </p>
                  <p class='description'>
                    Creativa, innovadora, realizable. La idea capaz de crear una conciencia ecológica de forma exponencial ya aterrizó en el Invader Festival: generar una aplicación que permita al usuario medir el tiempo que pasa sin usar su Smartphone para fomentar la vida análoga. Un juego divertido que optimiza el uso de dispositivos móviles y muestra los beneficios de disfrutar la vida "real”. Desconectarnos para empezar a conectarnos. Sencillo pero increíble.
                  </p>
                  <p class='share'>
                    Compártelo
                  </p>
                  <div class='sharefbtw'>
                    <a class='btnsharefb' href='http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]=http%3A%2F%2Fnuevovento.mx%2FViaje%2FSite.aspx%23winners&amp;p[images][0]=http://nuevovento.mx/viaje/img/logo_vw_100px.png&amp;p[title]=Volkswagen%20Vento%20-%20La%20Ruta%20de%20las%20Ideas&amp;p[summary]=En%20busca%20de%20una%20idea%20para%20salvar%20al%20planeta%20de%20la%20contaminaci%C3%B3n.%20Suena%20complicado,%20por%20suerte,%20el%20nuevo%20Vento%20de%20Volkswagen%20est%C3%A1%20de%20su%20lado' target='_blank'></a>
                    <a class='btnsharetw' href='https://twitter.com/share?text=En%20busca%20de%20una%20idea%20para%20salvar%20al%20planeta.Por%20suerte,%20el%20nuevo%20Vento%20de%20Volkswagen%20est%C3%A1%20de%20su%20lado.&amp;url=http%3A%2F%2Fnuevovento.mx%2FViaje%2FSite.aspx%23winners' target='_blank'></a>
                  </div>
                </div>
                <div class='instagramPhotoGrid'>
                  <img alt='' class='instagramPhoto' src=''>
                  <img alt='' class='instagramPhoto' src=''>
                  <img alt='' class='instagramPhoto' src=''>
                  <img alt='' class='instagramPhoto' src=''>
                </div>
              </div>
            </div>
          </div>
          <div class='close'></div>
        </div>
        <a class='downNav updownnav' current='#winners' href='#intro' id='gotoIntro'>
          Revive la Ruta de Las Ideas
        </a>
      </div>
      <!-- INTRO -->
      <div class='container' id='intro'>
        <!-- %canvas#confeti -->
        <div class='logo'>
          <div class='holder'>
            <div class='title1'></div>
            <div class='title2'></div>
            <div class='title3'></div>
            <div class='title4'></div>
            <div class='title5'></div>
            <div class='car'>
              <!--<a class='click_none fancybox fancybox iframe' data-fancybox-type='iframe' href='http://www.youtube.com/embed/vYBUktTnRaM?autoplay=1&amp;vq=hd1080&amp;controls=0&amp;rel=0&amp;showinfo=0'>-->
                <a class='click_none fancybox fancybox iframe' data-fancybox-type='iframe' href='http://www.youtube.com/embed/vYBUktTnRaM?autoplay=1&amp;vq=hd1080&amp;controls=0&amp;rel=0&amp;showinfo=0'>-->
                <div class='state1'></div>
                <div class='state2'></div>
                <div class='state3'></div>
              </a>
            </div>
            <div class='title6'></div>
          </div>
        </div>
        <div class='share_txt'>
          Comparte
        </div>
        <div class='social-share'>
          <ul id='menu'>
            <li>
              <a class='clickFacebook' href='https://www.facebook.com/VolkswagenMexico?fref=ts' target='_blank'>
                <div class='facebook'></div>
              </a>
            </li>
            <li>
              <a class='clickTwitter' href='https://twitter.com/Volkswagen_MX' target='_blank'>
                <div class='twitter'></div>
              </a>
            </li>
          </ul>
        </div>
        <a class='upNav updownnav' current='#intro' href='#winners'></a>
        <a class='downNav updownnav' current='#intro' href='#map'></a>
      </div>
      <!-- MAP -->
      <div class='container' id='map'>
        <!-- .instagraminfocont -->
        <!-- .userCont -->
        <!-- %img.userPhoto{:src => "", :alt => ""}/ -->
        <!-- %p.user -->
        <!-- VentoUno -->
        <!-- %img.photo{:src => "", :alt => ""}/ -->
        <!-- .likeandcaptionCont -->
        <!-- %p.caption -->
        <!-- Veto está de mi lado -->
        <!-- .likesCont -->
        <!-- .likeIcon -->
        <!-- %p.likesCount -->
        <!-- 50 -->
        <div id='filtromapa'></div>
        <div class='leyendaRutaactual'>
          <p class='tituloRutaActual'>
            Tercer tramo:
            <span>
              La Paz, BCS -Cabo San Lucas, BCS
            </span>
          </p>
          <div class='bottomLabels'>
            <div class='clock'></div>
            <p>2hrs / 188km</p>
            <div class='labelFerry'></div>
            <p>
              Desembarque Ferry
            </p>
            <div class='escudo15'></div>
            <p>
              Carretera México
            </p>
          </div>
        </div>
        <div id='zoom'>
          <div class='in jvectormap-zoomin'>
            +
          </div>
          <!-- .out.jvectormap-zoomout -->
          <div class="out jvectormap-zoomout">	-</div>
        </div>
        <div id='menuRight'>
          <a class='close' href='#'></a>
          <a class='item itemMenu reto' currentid='' href='#' request='Mecanica.aspx'></a>
          <a class='item itemMenu ventoico' currentid='1' href='#' id='vento1' request='Auto.aspx'>
            <div class='rollOver'>
              <p class='titlesection' id='rollOvervento1' runat='server'>
                <span>#</span>
                VentoUno
              </p>
              <div class='arrow'></div>
            </div>
          </a>
          <a class='item itemMenu ventoico' currentid='2' href='#' id='vento2' request='Auto.aspx'>
            <div class='rollOver'>
              <p class='titlesection' id='rollOvervento2' runat='server'>
                <span>#</span>
                VentoDos
              </p>
              <div class='arrow'></div>
            </div>
          </a>
          <a class='item itemMenu ventoico' currentid='3' href='#' id='vento3' request='Auto.aspx'>
            <div class='rollOver'>
              <p class='titlesection' id='rollOvervento3' runat='server'>
                <span>#</span>
                VentoTres
              </p>
              <div class='arrow'></div>
            </div>
          </a>
          <a class='item grid' currentid='' href='#' request='Muro.aspx'></a>
        </div>
        <a class='upNav updownnav' current='#map' href='#intro'></a>
        <a class='downNav updownnav' current='#map' href='#recap'></a>
        <div id='menuHash'>
          <a class='link' href='#'></a>
          <a class='close' href='#'></a>
        </div>
        <div id='mapcontainer'></div>
      </div>
      <!-- RECAP -->
      <div class='container' id='recap'>
        <a class='upNav updownnav' current='#recap' href='#map'></a>
        <div class='recapResume'></div>
        <div class='footer'>
          <div class='footerCont'>
            <p class='footerCenter'>
              <span class='copyright'>
                © Volkswagen México 2013
              </span>
              <a class='legal' href='http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html' target='_blank'>
                Politicas de Privacidad
              </a>
              <a class='terminoscondiciones' href='aspectoslegales.aspx' target='_blank'>
                Términos y Condiciones
              </a>
              <span></span>
            </p>
            <a class='configurador' href='http://nuevovento.mx/viaje/registro.aspx' target='_blank'>
              Prueba de Manejo
            </a>
          </div>
        </div>
      </div>
    </div>
    <link href='js/fancybox/source/jquery.fancybox.css' rel='stylesheet'>
    <script src='js/AnimationFrame.min.js'></script>
    <script src='js/TweenMax.min.js'></script>
    <script src='js/TimelineMax.min.js'></script>
    <script src='js/jquery.scrollTo.min.js'></script>
    <script src='js/jquery.localscroll.min.js'></script>
    <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBprIiRqwGjuc69d-tvNpCY5kptKBALh8E&amp;sensor=false'></script>
    <script src='js/jquery.spriteOnHover-0.2.5.min.js'></script>
    <script src='js/fancybox/source/jquery.fancybox.pack.js'></script>
    <script src='js/tinyscrollbar.js'></script>
    <script src='js/jquery.spritely.js'></script>
    <script src='js/slider.js'></script>
    <script src='js/easing.js'></script>
    <!-- %script{:src=>"js/modernizr-2.5.3.js"} -->
    <!-- %script{:src=>"js/imagesloaded.js"} -->
    <script src='js/uno.js'></script>
    <script src='js/dos.js'></script>
    <script src='js/tres.js'></script>
    <script src='js/cuatro.js'></script>
    <script src='js/confeti.js'></script>
    <script src='js/video.js'></script>
    <script src='js/main.js'></script>
    <!-- %script{:src=>"js/main2.js"} -->
  </body>
</html>
