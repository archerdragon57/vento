<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vento.aspx.cs" Inherits="Vento.Auto.Vento" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head runat='server'>
    <meta charset='iso-8859-1'>
    <meta content='width=device-width, initial-scale=1.0' id='viewport' name='viewport'>
    <!-- %meta{:name=>"viewport", :content=>"width=device-width,minimum-scale=0.5,maximum-scale=0.5,initial-scale=0.5"} -->
    <meta title='Volkswagen Vento - La Ruta de las Ideas'>
    <meta description='En busca de una idea para salvar al planeta de la contaminaci�n. Suena complicado, por suerte, el nuevo Vento de Volkswagen est� de su lado'>
    <meta keywords='volkswagen, vento, carros, ideas, creatividad, invaders fest, publicidad, marketing, ruta vento, roadtrip, mejor carro para roadtrip, contaminacion, ecologia, cuidar el planeta'>
    <%: Scripts.Render("~/bundles/modernizr") %>
    <link href='css/style.css' rel='stylesheet'>
    <script type="text/javascript">
    if (navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/iPhone/i)) {window.location.href = "http://nuevovento.mx/auto/mobile"; }
    <!-- * <![CDATA[ */ -->
    var google_conversion_id = 979931181;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    <!-- * ]]> */ -->
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
    <div style="display:inline; display: none;">
    <img height="1" width="1" style="border-style:none; display: none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/979931181/?value=0&amp;guid=ON&amp;script=0"/>
    </div>
    </noscript>
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
          <asp:ScriptReference Name='WebFormsBundle'></asp:ScriptReference>
        </Scripts>
      </asp:ScriptManager>
    </form>
    <!-- %script{:src=>"js/click_tags.js"} -->
    <div id='splash'>
      <a class='btnConfigurador' href='http://www.configuratuvw.mx/Vento' target='_blank'>
        Config�ralo
      </a>
      <div class='headerSplash'>
        <a class='logoSplash' href='http://www.vw.com.mx' target='_blank'></a>
        <div class='socialSplash'>
          <a class='fbPageCont' href='http://www.facebook.com/VolkswagenMexico' target='_blank'>
            <div class='fbPageBack'></div>
            <div class='fbPageIcon'></div>
          </a>
          <a class='twPageCont' href='https://twitter.com/Volkswagen_MX' target='_blank'>
            <div class='twPageBack'></div>
            <div class='twPageIcon'></div>
          </a>
          <a class='InsPageCont' href='http://instagram.com/volkswagenmexico' target='_blank'>
            <div class='InsPageBack'></div>
            <div class='InsPageIcon'></div>
          </a>
        </div>
      </div>
      <div class='contentSplash'>
        <div class='titleVentoCont'>
          <div class='titleVentoMask'>
            <div class='titleVento'>
              <div class='titleVentoImg'></div>
            </div>
          </div>
        </div>
        <div class='coche'>
          <div class='cocheCont'>
            <div class='cochePaintCont'>
              <div class='cocheShadow'></div>
              <div class='cochePaint active' id='paint-white'></div>
            </div>
          </div>
        </div>
      </div>
      <div class='footerSplash'>
        <div class='footerSplashContainer'>
          <a class='btncopyright' href='http://www.volkswagen.mx/es/models/nuevo-vento/galeria.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
            <p class='copyright'>
              � Volkswagen M�xico 2013
            </p>
          </a>
          <a class='btnpoliticas' href='http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html' target='_blank'>
            <p class='politicas'>
              Pol�ticas de Privacidad
            </p>
          </a>
          <a class='btnficha' href='http://www.vw.com.mx/es/models/nuevo-vento/versiones.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
            <p class='fichatec'>
              Ficha T�cnica
            </p>
          </a>
          <a class='btnprueba' href='http://www.volkswagen.mx/es/models/nuevo-vento/atencion-personalizada.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
            <p class='pruebamanejo'>
              Prueba de Manejo
            </p>
          </a>
        </div>
      </div>
    </div>
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
    <div id='overlay'>
      <a href='http://www.vw.com.mx' id='logoHeader' target='_blank'></a>
      <div id='socialHeader'>
        <a class='colorsLinkCont' href='http://www.configuratuvw.mx/Vento' target='_blank'>
          <div class='colorsLink'></div>
          <div class='colorscoche'></div>
          <p class='colorsText'>
            Config�ralo
          </p>
        </a>
        <a class='fbPageCont' href='http://www.facebook.com/VolkswagenMexico' target='_blank'>
          <div class='fbPageBack'></div>
          <div class='fbPageIcon'></div>
        </a>
        <a class='twPageCont' href='https://twitter.com/Volkswagen_MX' target='_blank'>
          <div class='twPageBack'></div>
          <div class='twPageIcon'></div>
        </a>
        <a class='InsPageCont' href='http://instagram.com/volkswagenmexico' target='_blank'>
          <div class='InsPageBack'></div>
          <div class='InsPageIcon'></div>
        </a>
      </div>
      <a href='#colores' id='paintBtn'>
        <div class='paintBtnBack'></div>
        <div class='paintBtnIcon'>
          <div class='paintBtnIconBack'></div>
          <div class='paintBtnIconFront'></div>
        </div>
      </a>
      <a href='#ruta' id='mapBtn'>
        <div class='whiteback'></div>
        <div class='mapBtnBack'></div>
        <div class='mapBtnIcon'>
          <div class='mapBtnIconBack'></div>
          <div class='mapBtnIconFront'></div>
        </div>
      </a>
      <div id='videoNav'>
        <div class='videoNavCont'>
          <div class='videoProgressCont'>
            <div class='videoProgressbar'></div>
          </div>
          <a class='videoPoint' href='#' id='videouno' time='0'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'></div>
          </a>
          <a class='videoPoint' href='#' id='videodos' time='7'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'>
              <div class='videoPlayBack'></div>
              <div class='videoPlayIcon'></div>
            </div>
            <div class='videoFeature'>
              <div class='videoFeatureBack'></div>
              <div class='videoFeatureIcon vequipamiento'></div>
              <p class='videoFeatureText'>
                Equipamiento
              </p>
            </div>
          </a>
          <a class='videoPoint' href='#' id='videotres' time='14'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'>
              <div class='videoPlayBack'></div>
              <div class='videoPlayIcon'></div>
            </div>
            <div class='videoFeature'>
              <div class='videoFeatureBack'></div>
              <div class='videoFeatureIcon vcomodidad'></div>
              <p class='videoFeatureText'>
                Comodidad
              </p>
            </div>
          </a>
          <a class='videoPoint' href='#' id='videocuatro' time='21'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'>
              <div class='videoPlayBack'></div>
              <div class='videoPlayIcon'></div>
            </div>
            <div class='videoFeature'>
              <div class='videoFeatureBack'></div>
              <div class='videoFeatureIcon vconsumo'></div>
              <p class='videoFeatureText'>
                Bajo Consumo
              </p>
            </div>
          </a>
          <a class='videoPoint' href='#' id='videocinco' time='28'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'>
              <div class='videoPlayBack'></div>
              <div class='videoPlayIcon'></div>
            </div>
            <div class='videoFeature'>
              <div class='videoFeatureBack'></div>
              <div class='videoFeatureIcon vseguridad'></div>
              <p class='videoFeatureText'>
                Seguridad
              </p>
            </div>
          </a>
          <a class='videoPoint' href='#' id='videoseis' time='0'>
            <div class='videoPointActive'></div>
            <div class='videoPointPlay'></div>
          </a>
        </div>
      </div>
    </div>
    <div id='mainCont'>
      <div class='container' id='features'>
        <div class='videoPinFeatures'>
          <div class='vpBack'></div>
          <div class='vpIcon'></div>
        </div>
        <video autplay='' id='video' preload='auto'>
          <source src='img/hotspots/hotspots.mp4' type='video/mp4'></source>
          <source src='img/hotspots/hotspots.ogv' type='video/ogg'></source>
          <source src='img/hotspots/hotspots.webm' type='video/webm'></source>
        </video>
        <div class='pattern'></div>
        <div class='pattern2'></div>
        <div class='feature' id='equipamiento'>
          <div class='featureCont'>
            <div class='titleCont'>
              <div class='titleMaskCont'>
                <div class='titleMask'>
                  <p class='title'>
                    Equipamiento
                  </p>
                </div>
              </div>
            </div>
            <div class='subtitleCont'>
              <p class='subtitle'>
                Mayor espacio para las grandes ideas.
              </p>
            </div>
            <div class='descriptionCont'>
              <p class='description'>
                Una buena raz�n para continuar lo que empezaste.
                Nuevo Vento, est� de tu lado.
              </p>
            </div>
            <a class='knowMoreCont' href='#'>
              <div class='knowMore'></div>
              <p class='knowMoreText'>
                Conoce m�s
              </p>
            </a>
          </div>
          <div class='hotspotCont drag' hotspot='hotuno' href='#' id='hotuno'>
            <div class='hotspotIdle'></div>
            <div class='hotspotOver' hotspot='hotuno'></div>
            <div class='hotspotOpenContainer'>
              <div class='hotspotOpen'>
                <div class='hotspotMask'>
                  <div class='hotspotContent'>
                    <div class='contentInfo contentCont active'>
                      <p class='titleInfo'>
                        Escucha
                      </p>
                      <p class='descriptionInfo'>
                        El mundo est� hablando y tiene algo que decirte a trav�s del Radio AM/FM, lector de CD/MP3, conexi�n telef�nica manos libres, Aux-in, USB con control para iPod, SD Card.
                      </p>
                      <p class='compartir'>
                        compartir
                      </p>
                      <div class='shareCont'>
                        <a class='twShareCont' href='#' target='_blank'>
                          <div class='twShareBack'></div>
                          <div class='twShareIcon'></div>
                        </a>
                        <a class='fbShareCont' href='#' target='_blank'>
                          <div class='fbShareBack'></div>
                          <div class='fbShareIcon'></div>
                        </a>
                      </div>
                    </div>
                    <div class='contentImagen contentCont'>
                      <a class='hotspotImage fancybox' href='img/fotos_full/escucha.png'>
                        <img alt='' src='img/hotspots_images/foto_escucha_hotspot.png'>
                      </a>
                    </div>
                    <div class='contentVideo contentCont'>
                      <div class='playBtnCont'>
                        <div class='playBtnBack'></div>
                        <div class='playBtnIcon'></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class='hotspotCloseCont hotspotbtn' hotspot='hotuno' href='#' hscont='hotuno .contentInfo'>
                <div class='hotspotCloseBack hotspotbtnBack'></div>
                <div class='hotspotCloseIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hotuno .contentInfo'>
                <div class='hotspotInfoBack hotspotbtnBack'></div>
                <div class='hotspotInfoIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotImageCont hotspotbtn' href='#' hscont='hotuno .contentImagen'>
                <div class='hotspotImageBack hotspotbtnBack'></div>
                <div class='hotspotImageIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotVideoCont fancybox hotspotbtn' data-fancybox-type='iframe' href='#' hscont='hotuno .contentInfo'>
                <div class='hotspotVideoBack hotspotbtnBack'></div>
                <div class='hotspotVideoIcon hotspotbtnIcon'></div>
              </a>
            </div>
          </div>
          <div class='hotspotCont drag' hotspot='hotdos' href='#' id='hotdos'>
            <div class='hotspotIdle'></div>
            <div class='hotspotOver' hotspot='hotdos'></div>
            <div class='hotspotOpenContainer'>
              <div class='hotspotOpen'>
                <div class='hotspotMask'>
                  <div class='hotspotContent'>
                    <div class='contentInfo contentCont active'>
                      <p class='titleInfo'>
                        Buen tiempo
                      </p>
                      <p class='descriptionInfo'>
                        En nuevo Vento siempre hay clima perfecto gracias a su aire acondicionado de ajuste autom�tico: Climatronic. Adem�s, disfruta del ambiente exterior con sus elevadores el�ctricos en cristales.
                      </p>
                      <p class='compartir'>
                        compartir
                      </p>
                      <div class='shareCont'>
                        <a class='twShareCont' href='#' target='_blank'>
                          <div class='twShareBack'></div>
                          <div class='twShareIcon'></div>
                        </a>
                        <a class='fbShareCont' href='#' target='_blank'>
                          <div class='fbShareBack'></div>
                          <div class='fbShareIcon'></div>
                        </a>
                      </div>
                    </div>
                    <div class='contentImagen contentCont'>
                      <a class='hotspotImage fancybox' href='img/fotos_full/tiempo.png'>
                        <img alt='' src='img/hotspots_images/foto_tiempo_hotspot.png'>
                      </a>
                    </div>
                    <div class='contentVideo contentCont'>
                      <div class='playBtnCont'>
                        <div class='playBtnBack'></div>
                        <div class='playBtnIcon'></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class='hotspotCloseCont hotspotbtn' hotspot='hotdos' href='#' hscont='hotdos .contentInfo'>
                <div class='hotspotCloseBack hotspotbtnBack'></div>
                <div class='hotspotCloseIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hotdos .contentInfo'>
                <div class='hotspotInfoBack hotspotbtnBack'></div>
                <div class='hotspotInfoIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotImageCont hotspotbtn' href='#' hscont='hotdos .contentImagen'>
                <div class='hotspotImageBack hotspotbtnBack'></div>
                <div class='hotspotImageIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotVideoCont fancybox hotspotbtn' data-fancybox-type='iframe' href='#' hscont='hotdos .contentInfo'>
                <div class='hotspotVideoBack hotspotbtnBack'></div>
                <div class='hotspotVideoIcon hotspotbtnIcon'></div>
              </a>
            </div>
          </div>
          <div class='hotspotCont drag' hotspot='hottres' href='#' id='hottres'>
            <div class='hotspotIdle'></div>
            <div class='hotspotOver' hotspot='hottres'></div>
            <div class='hotspotOpenContainer'>
              <div class='hotspotOpen'>
                <div class='hotspotMask'>
                  <div class='hotspotContent'>
                    <div class='contentInfo contentCont active'>
                      <p class='titleInfo'>
                        T� dices a d�nde
                      </p>
                      <p class='descriptionInfo'>
                        Gu�a tu proyecto por buen camino con la computadora de viaje, disponible en la versi�n Tiptronic, que registra consumo, kilometraje, combustible y desempe�o del auto.
                      </p>
                      <p class='compartir'>
                        compartir
                      </p>
                      <div class='shareCont'>
                        <a class='twShareCont' href='#' target='_blank'>
                          <div class='twShareBack'></div>
                          <div class='twShareIcon'></div>
                        </a>
                        <a class='fbShareCont' href='#' target='_blank'>
                          <div class='fbShareBack'></div>
                          <div class='fbShareIcon'></div>
                        </a>
                      </div>
                    </div>
                    <div class='contentImagen contentCont'>
                      <a class='hotspotImage fancybox' href='img/fotos_full/computadora.png'>
                        <img alt='' src='img/hotspots_images/foto_computadora_hotspot.png'>
                      </a>
                    </div>
                    <div class='contentVideo contentCont'>
                      <div class='playBtnCont'>
                        <div class='playBtnBack'></div>
                        <div class='playBtnIcon'></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class='hotspotCloseCont hotspotbtn' hotspot='hottres' href='#' hscont='hottres .contentInfo'>
                <div class='hotspotCloseBack hotspotbtnBack'></div>
                <div class='hotspotCloseIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hottres .contentInfo'>
                <div class='hotspotInfoBack hotspotbtnBack'></div>
                <div class='hotspotInfoIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotImageCont hotspotbtn' href='#' hscont='hottres .contentImagen'>
                <div class='hotspotImageBack hotspotbtnBack'></div>
                <div class='hotspotImageIcon hotspotbtnIcon'></div>
              </a>
              <a class='hotspotVideoCont fancybox hotspotbtn' data-fancybox-type='iframe' href='#' hscont='hottres .contentInfo'>
                <div class='hotspotVideoBack hotspotbtnBack'></div>
                <div class='hotspotVideoIcon hotspotbtnIcon'></div>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class='container' id='map'>
        <div class='mapCont'>
          <div class='mapCont2'>
            <div class='map drag'>
              <div class='animated' id='sprt-carro1'></div>
              <div class='animated' id='sprt-carro2'></div>
              <div class='animated' id='sprt-sombrilla'></div>
              <div class='animated' id='sprt-maguey'></div>
              <div class='animated' id='sprt-sombrero'></div>
              <div class='animated' id='sprt-pulpo'></div>
              <div class='animated' id='sprt-pez'></div>
              <div class='animated' id='sprt-palmera1'></div>
              <div class='animated' id='sprt-palmera2'></div>
              <div class='animated' id='sprt-ferry'></div>
              <div class='animated' id='sprt-bailarina'></div>
              <div class='animated' id='sprt-fabrica'></div>
              <div class='animated' id='sprt-ancla'></div>
              <div class='animated' id='sprt-agua3'></div>
              <div class='animated' id='sprt-agua2'></div>
              <div class='animated' id='sprt-agua1'></div>
              <div class='animated' id='sprt-volcan'></div>
              <div class='equipo01'>
                <div class='back'></div>
                <div class='icon'></div>
              </div>
              <a class='videoRecap fancybox' data-fancybox-type='iframe' href='http://www.youtube.com/embed/FVVd_nFiOtA?autoplay=1&amp;amp;vq=hd1080&amp;amp;controls=0&amp;amp;rel=0&amp;amp;showinfo=0'></a>
              <a class='videoPinMap fancybox' data-fancybox-type='iframe' href='http://www.youtube.com/embed/Fsw5Cfsasd4?autoplay=1&amp;amp;vq=hd1080&amp;amp;controls=0&amp;amp;rel=0&amp;amp;showinfo=0' id='videoMap01'>
                <div class='vpBack'></div>
                <div class='vpIcon'></div>
              </a>
              <a class='videoPinMap fancybox' data-fancybox-type='iframe' href='http://www.youtube.com/embed/P4sYsWzpN_k?autoplay=1&amp;amp;vq=hd1080&amp;amp;controls=0&amp;amp;rel=0&amp;amp;showinfo=0' id='videoMap02'>
                <div class='vpBack'></div>
                <div class='vpIcon'></div>
              </a>
              <a class='videoPinMap fancybox' data-fancybox-type='iframe' href='http://www.youtube.com/embed/tdVw-9U_4bY?autoplay=1&amp;amp;vq=hd1080&amp;amp;controls=0&amp;amp;rel=0&amp;amp;showinfo=0' id='videoMap03'>
                <div class='vpBack'></div>
                <div class='vpIcon'></div>
              </a>
              <!-- %a.videoPinMap#videoMap04.fancybox{:href => "http://www.youtube.com/embed/AUWcaJ7tsys?autoplay=1&amp;vq=hd1080&amp;controls=0&amp;rel=0&amp;showinfo=0", :data=>{:fancybox_type=>"iframe"}} -->
              <!-- .vpBack -->
              <!-- .vpIcon -->
              <a class='videoPinMap fancybox' data-fancybox-type='iframe' href='http://www.youtube.com/embed/xH-pAdgegvc?autoplay=1&amp;amp;vq=hd1080&amp;amp;controls=0&amp;amp;rel=0&amp;amp;showinfo=0' id='videoMap00'>
                <div class='vpBack'></div>
                <div class='vpIcon'></div>
              </a>
              <div class='pinInstagram' id='pinIns01'>
                <div class='pinPoint'></div>
                <div class='pinInstaBack'></div>
                <div class='pinInstaIcon'></div>
                <div class='pinInstaCont'>
                  <div class='instagraminfocont'>
                    <div class='userCont'>
                      <img alt='' class='userPhoto' src=''>
                      <p class='user'>
                        VentoUno
                      </p>
                    </div>
                    <img alt='' class='photo' src=''>
                    <div class='likeandcaptionCont'>
                      <p class='caption'>
                        Veto est� de mi lado
                      </p>
                      <div class='likesCont'>
                        <div class='likeIcon'></div>
                        <p class='likesCount'>
                          10
                        </p>
                      </div>
                    </div>
                  </div>
                  <div class='closeIns'>
                    <div class='closeBack'></div>
                    <div class='closeIcon'></div>
                  </div>
                </div>
              </div>
              <div class='pinInstagram' id='pinIns02'>
                <div class='pinPoint'></div>
                <div class='pinInstaBack'></div>
                <div class='pinInstaIcon'></div>
                <div class='pinInstaCont'>
                  <div class='instagraminfocont'>
                    <div class='userCont'>
                      <img alt='' class='userPhoto' src=''>
                      <p class='user'>
                        VentoUno
                      </p>
                    </div>
                    <img alt='' class='photo' src=''>
                    <div class='likeandcaptionCont'>
                      <p class='caption'>
                        Veto est� de mi lado
                      </p>
                      <div class='likesCont'>
                        <div class='likeIcon'></div>
                        <p class='likesCount'>
                          10
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class='pinTwitter' id='pinTwit01'>
                <div class='pinPoint'></div>
                <div class='pinTwitBack'></div>
                <div class='pinTwitIcon'></div>
                <div class='pinTwitCont'>
                  <div class='infobox'>
                    <div class='twicoinfow'></div>
                    <div class='titleUsertwinfo'>
                      <span>@gamanox</span>
                    </div>
                    <div class='descriptiontwinfo'>
                      Desde Navoleto vengo dicen que nac� en el norte.... Nuevo Vento #LaRutaDeLasIdeas http://t.co/LdwzsSpNFy
                    </div>
                  </div>
                </div>
              </div>
              <div class='hotspotMapCont drag' hotspot='hotmap01' href='#' id='hotmap01'>
                <div class='hotspotIdle'></div>
                <div class='hotspotOver hotmapOver' hotspot='hotmap01'></div>
                <div class='hotspotOpenContainer'>
                  <div class='hotspotOpen'>
                    <div class='hotspotMask'>
                      <div class='hotspotContent'>
                        <div class='contentInfo contentCont active'>
                          <p class="titleInfo">#xperiVento</p>
                          <p class='descriptionInfo'>
                            Una fil�sofa, una apasionada de las redes sociales, un emprendedor y un fot�grafo, perfiles diversos con un simple objetivo: cambiar el mundo con una idea generada a bordo de nuevo Vento.
                          </p>
                          <p class='compartir'>
                            compartir
                          </p>
                          <div class='shareCont'>
                            <a class='twShareCont' href='#'>
                              <div class='twShareBack'></div>
                              <div class='twShareIcon'></div>
                            </a>
                            <a class='fbShareCont' href='#'>
                              <div class='fbShareBack'></div>
                              <div class='fbShareIcon'></div>
                            </a>
                          </div>
                        </div>
                        <div class='contentImagen contentCont'>
                          <a class='hotspotImage' href='#'>
                            <img alt='' src='img/map/equipo_1_ganador.png'>
                          </a>
                        </div>
                        <div class='contentVideo contentCont'>
                          <div class='playBtnCont'>
                            <div class='playBtnBack'></div>
                            <div class='playBtnIcon'></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a class='hotspotCloseCont hotspotbtn' hotspot='hotmap01' href='#' hscont='hotmap01 .contentInfo'>
                    <div class='hotspotCloseBack hotspotbtnBack'></div>
                    <div class='hotspotCloseIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hotmap01 .contentInfo'>
                    <div class='hotspotInfoBack hotspotbtnBack'></div>
                    <div class='hotspotInfoIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotImageCont hotspotbtn' href='#' hscont='hotmap01 .contentImagen'>
                    <div class='hotspotImageBack hotspotbtnBack'></div>
                    <div class='hotspotImageIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotVideoCont fancybox hotspotbtn' data-fancybox-type='iframe' href='https://dl.dropboxusercontent.com/u/72722605/vento/xperiVento.mp4' hscont='hotmap01 .contentInfo'>
                    <div class='hotspotVideoBack hotspotbtnBack'></div>
                    <div class='hotspotVideoIcon hotspotbtnIcon'></div>
                  </a>
                </div>
              </div>
              <div class='hotspotMapCont drag' hotspot='hotmap02' href='#' id='hotmap02'>
                <div class='hotspotIdle'></div>
                <div class='hotspotOver hotmapOver' hotspot='hotmap02'></div>
                <div class='hotspotOpenContainer'>
                  <div class='hotspotOpen'>
                    <div class='hotspotMask'>
                      <div class='hotspotContent'>
                        <div class='contentInfo contentCont active'>
                          <p class="titleInfo">#vamonosdeaVenton</p>
                          <p class='descriptionInfo'>
                            Procedentes de ciudades diferentes y de carreras totalmente distintas, un bi�logo, una dise�adora, un comunic�logo y un ingeniero en electr�nica, demostrar�n que la brecha generacional que existe entre ellos no es impedimento para generar una gran idea.
                          </p>
                          <p class='compartir'>
                            compartir
                          </p>
                          <div class='shareCont'>
                            <a class='twShareCont' href='#'>
                              <div class='twShareBack'></div>
                              <div class='twShareIcon'></div>
                            </a>
                            <a class='fbShareCont' href='#'>
                              <div class='fbShareBack'></div>
                              <div class='fbShareIcon'></div>
                            </a>
                          </div>
                        </div>
                        <div class='contentImagen contentCont'>
                          <a class='hotspotImage' href='#'>
                            <img alt='' src='img/map/equipo2.png'>
                          </a>
                        </div>
                        <div class='contentVideo contentCont'>
                          <div class='playBtnCont'>
                            <div class='playBtnBack'></div>
                            <div class='playBtnIcon'></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a class='hotspotCloseCont hotspotbtn' hotspot='hotmap02' href='#' hscont='hotmap02 .contentInfo'>
                    <div class='hotspotCloseBack hotspotbtnBack'></div>
                    <div class='hotspotCloseIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hotmap02 .contentInfo'>
                    <div class='hotspotInfoBack hotspotbtnBack'></div>
                    <div class='hotspotInfoIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotImageCont hotspotbtn' href='#' hscont='hotmap02 .contentImagen'>
                    <div class='hotspotImageBack hotspotbtnBack'></div>
                    <div class='hotspotImageIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotVideoCont fancybox hotspotbtn' href='#' hscont='hotmap02 .contentInfo'>
                    <div class='hotspotVideoBack hotspotbtnBack'></div>
                    <div class='hotspotVideoIcon hotspotbtnIcon'></div>
                  </a>
                </div>
              </div>
              <div class='hotspotMapCont drag' hotspot='hotmap03' href='#' id='hotmap03'>
                <div class='hotspotIdle'></div>
                <div class='hotspotOver hotmapOver' hotspot='hotmap03'></div>
                <div class='hotspotOpenContainer'>
                  <div class='hotspotOpen'>
                    <div class='hotspotMask'>
                      <div class='hotspotContent'>
                        <div class='contentInfo contentCont active'>
                          <p class="titleInfo">#greenVentors</p>
                          <p class='descriptionInfo'>
                            Ensenada, Estado de M�xico, Distrito Federal y Michoac�n. Aventureros, exploradores y, �porqu� no? tambi�n creativos caben en este equipo. Diferentes personalidades, grandes experiencias y mucha expectativa ser�n las constantes de los participantes de nuevo Vento.
                          </p>
                          <p class='compartir'>
                            compartir
                          </p>
                          <div class='shareCont'>
                            <a class='twShareCont' href='#'>
                              <div class='twShareBack'></div>
                              <div class='twShareIcon'></div>
                            </a>
                            <a class='fbShareCont' href='#'>
                              <div class='fbShareBack'></div>
                              <div class='fbShareIcon'></div>
                            </a>
                          </div>
                        </div>
                        <div class='contentImagen contentCont'>
                          <a class='hotspotImage' href='#'>
                            <img alt='' src='img/map/equipo3img.png'>
                          </a>
                        </div>
                        <div class='contentVideo contentCont'>
                          <div class='playBtnCont'>
                            <div class='playBtnBack'></div>
                            <div class='playBtnIcon'></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <a class='hotspotCloseCont hotspotbtn' hotspot='hotmap03' href='#' hscont='hotmap03 .contentInfo'>
                    <div class='hotspotCloseBack hotspotbtnBack'></div>
                    <div class='hotspotCloseIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotInfoCont hotspotbtn active' href='#' hscont='hotmap03 .contentInfo'>
                    <div class='hotspotInfoBack hotspotbtnBack'></div>
                    <div class='hotspotInfoIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotImageCont hotspotbtn' href='#' hscont='hotmap03 .contentImagen'>
                    <div class='hotspotImageBack hotspotbtnBack'></div>
                    <div class='hotspotImageIcon hotspotbtnIcon'></div>
                  </a>
                  <a class='hotspotVideoCont fancybox hotspotbtn' href='#' hscont='hotmap03 .contentInfo'>
                    <div class='hotspotVideoBack hotspotbtnBack'></div>
                    <div class='hotspotVideoIcon hotspotbtnIcon'></div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class='container' id='paint'>
        <div class='paintContAll'>
          <div class='bgCont'></div>
          <div class='titleVentoCont'>
            <div class='titleVentoMask'>
              <div class='titleVento'>
                <div class='titleVentoImg'></div>
              </div>
              <div class='paintColorCont'>
                <p id='paintColor'>
                  Blanco Candy
                </p>
              </div>
            </div>
          </div>
          <div class='coche'>
            <div class='cocheCont'>
              <div class='cochePaintCont'>
                <div class='cocheShadow'></div>
                <div class='cochePaint active' id='paint-blanco'></div>
                <div class='cochePaint' id='paint-negro'></div>
                <div class='cochePaint' id='paint-gris'></div>
                <div class='cochePaint' id='paint-rojo'></div>
                <div class='cochePaint' id='paint-plata'></div>
                <div class='cochePaint' id='paint-azul'></div>
                <div class='cochePaint' id='paint-beige'></div>
              </div>
              <div class='changePaint'>
                <div class='changePaintBack'></div>
                <div class='changePaintIcon'></div>
                <p class='changePaintText'>
                  Colores
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class='container' id='pictureGalleryCont'>
        <div class='pictureGalleryAll'>
          <img alt='' class='pictureGallery' src='img/fotos_full/aqui_cabe_todo.png'>
          <div class='pictureGalleryClose'>
            <div class='pictureGalleryCloseBack'></div>
            <div class='pictureGalleryCloseIcon'></div>
          </div>
        </div>
      </div>
    </div>
    <div id='footer'>
      <div id='footerContainer'>
        <a class='btncopyright' href='http://www.volkswagen.mx/es/models/nuevo-vento/galeria.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
          <p class='copyright'>
            � Volkswagen M�xico 2013
          </p>
        </a>
        <a class='btnpoliticas' href='http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html' target='_blank'>
          <p class='politicas'>
            Pol�ticas de Privacidad
          </p>
        </a>
        <a class='btnficha' href='http://www.vw.com.mx/es/models/nuevo-vento/versiones.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
          <p class='fichatec'>
            Ficha T�cnica
          </p>
        </a>
        <a class='btnprueba' href='http://www.volkswagen.mx/es/models/nuevo-vento/atencion-personalizada.html?tc=oa-vento-mx-minisite-footer' target='_blank'>
          <p class='pruebamanejo'>
            Prueba de Manejo
          </p>
        </a>
      </div>
    </div>
    <link href='js/fancybox/source/jquery.fancybox.css' rel='stylesheet'>
    <script src='js/TweenMax.min.js'></script>
    <script src='js/TimelineMax.min.js'></script>
    <script src='js/jquery.scrollTo.min.js'></script>
    <script src='js/jquery.localscroll.min.js'></script>
    <!-- %script{:src=>"js/jquery.spriteOnHover-0.2.5.min.js"} -->
    <script src='js/fancybox/source/jquery.fancybox.pack.js'></script>
    <script src='js/tinyscrollbar.js'></script>
    <script src='js/jquery.spritely.js'></script>
    <script src='js/easing.js'></script>
    <!-- %script{:src=>"js/modernizr-2.5.3.js"} -->
    <script src='js/animations/animation.js'></script>
    <script src='js/animations/animation_carColor.js'></script>
    <script src='js/animations/animation_map.js'></script>
    <script src='js/cuepoints.js'></script>
    <script src='js/imageFiles.js'></script>
    <script src='js/copys.js'></script>
    <script src='js/drag.js'></script>
    <script src='js/clicktags.js'></script>
    <script src='js/main.js'></script>
  </body>
</html>
