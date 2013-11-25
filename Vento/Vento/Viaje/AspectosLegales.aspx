<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspectosLegales.aspx.cs" Inherits="Vento.Viaje.AspectosLegales" %>
<%@ Register Assembly="SlimeeLibrary" Namespace="SlimeeLibrary" TagPrefix="cc1" %>
<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>Vento</title>
        <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
          <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference ID="BundleReference1" runat="server" Path="~/Content/css" />
    <!-- <link rel="stylesheet" href="~/Content/mobile.css"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1, user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="P3P" content='CP="IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA"'>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content='Te has preguntado, ¿qué pasaría si por lo menos una de tus grandes ideas, la llevaras a cabo? Volkswagen te invita a descubrirlo en la Ruta de las Ideas' />
<meta name="keywords" content="volkswagen, ruta, idea, mundo, auto" />
<meta property="og:title" content="La ruta de las ideas" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://nuevovento.mx/" />
<meta property="og:image" content="http://nuevovento.mx/share.jpg" />
<meta property="og:description" content='¿Qué pasaría si una de tus ideas la llevaras a cabo? Volkswagen y Nuevo Vento te invitan a descubrirlo' />

</head>
<body>
<noscript>
<img width="1" height="1" style="border:0" src="HTTP://bs.serving-sys.com/BurstingPipe/ActivityServer.bs?cn=as&amp;ActivityID=369561&amp;ns=1"/>
</noscript>
    <script>
        var _gaq = [['_setAccount', 'UA-38641079-14'], ['_trackPageview']];
        (function (d, t) {
            var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
            g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g, s)
        }(document, 'script'));
</script>

    <div id="preloader">
      <div id="preloader-content" class="preloading">
        <div class="ui-spinner">
          <div class="wheel"></div>
          <div class="preloader-text">Cargando...</div>
        </div>
      </div>
    </div>



    <script src="../Scripts/jquery-1.7.1.js"></script>
    <script src="../Scripts/WebForms/WebForms.js"></script>
    <script src="../Scripts/WebForms/WebUIValidation.js"></script>
    <script src="../Scripts/WebForms/MenuStandards.js"></script>
    <script src="../Scripts/WebForms/GridView.js"></script>
    <script src="../Scripts/WebForms/DetailsView.js"></script>
    <script src="../Scripts/WebForms/TreeView.js"></script>
    <script src="../Scripts/WebForms/WebParts.js"></script>
    <script src="../Scripts/WebForms/Focus.js"></script>
    <script src="../Scripts/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="../Scripts/jquery.media.js"></script>
    <script src="../Scripts/jquery.spriteOnHover-0.2.5.min.js"></script>
    <script src="../Scripts/TimelineMax.min.js"></script>
    <script src="../Scripts/TweenMax.min.js"></script>
    <script src="../Scripts/main.js"></script>






    <header>
        <div class="content-wrapper">
          <div class="float-left"> <a id="A1" runat="server" class="logovw" href="~/"><img src="/Images/header/logo_vw.png" alt=""></a> </div>
          <div class="float-center">
            <nav class="header-nav">
              <ul id="menu">
                <li><a href="Registro.aspx" onclick="javascript:window.selected=1;" class="chackbox">
                  <div class="register">Participa</div>
                  </a></li>
                <li>|</li>
                <li><a href="Registro.aspx" onclick="javascript:window.selected=2;" class="chackbox">
                  <div class="test">Prueba de manejo</div>
                  </a></li>
                <li>|</li>
                <li><a id="A2" runat="server" href="mecanica.aspx" class="chackbox">
                  <div class="rules">Mecánica</div>
                  </a></li>
                <li>|</li>
                <li><a id="A3" runat="server" href="ruta.aspx" class="chackbox">
                  <div class="route">Ruta</div>
                  </a></li>
              </ul>
            </nav>
          </div>
          <div class="float-right">
            <div class="menu_btn"><a class="btn" href="#"><img src="Images/header/menu_mobile.png" width="33" height="25" alt=""></a></div>
            <div class="social-share">
              <ul id="share">
                <li><a href="https://www.facebook.com/VolkswagenMexico?fref=ts">
                  <div class="facebook"></div>
                  </a></li>
                <li><a href="https://twitter.com/Volkswagen_MX">
                  <div class="twitter"></div>
                  </a></li>
              </ul>
            </div>
            <section id="login">
              <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                <AnonymousTemplate>
                  <ul>
                    <li><a id="registerLink" runat="server" href="~/Account/Register.aspx">Register</a></li>
                    <li><a id="loginLink" runat="server" href="~/Account/Login.aspx">Log in</a></li>
                  </ul>
                </AnonymousTemplate>
                <LoggedInTemplate>
                  <p>
                    Hello, <a id="A4" runat="server" class="username" href="~/Account/Manage.aspx" title="Manage your account">
                    <asp:LoginName ID="LoginName1" runat="server" CssClass="username" /></a>!
                    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" />
                  </p>
                </LoggedInTemplate>
                </asp:LoginView>
              </section>
          </div>
        </div>
    </header>
    <nav class="header-nav-mobile">
      <ul id="Ul1">
        <li><a id="A5" runat="server" href="Registro.aspx?Selected=1" class="chackbox">
          <div class="register">Participa</div>
          </a></li>
        <li><a href="Registro.aspx" onclick="javascript:window.selected=2;" class="chackbox">
          <div class="test">Prueba de manejo</div>
          </a></li>
        <li><a id="A6" runat="server" href="mecanica.aspx" class="chackbox">
          <div class="rules">Mecánica</div>
          </a></li>
        <li><a id="A7" runat="server" href="ruta.aspx" class="chackbox">
          <div class="route">Ruta</div>
          </a></li>
        <li class="fb"><a href="#"  class="chackbox">
          <div class="facebook">Facebook VW</div>
          </a></li>
        <li class="tw"><a href="#" class="chackbox">
          <div class="twitter">Twitter VW</div>
          </a></li>
      </ul>
    </nav>
    <div id="body">
        <section class="content-wrapper main-content clear-fix">
<script src="../Scripts/jquery-1.7.1.js"></script>
<script src="../Scripts/jquery-ui-1.8.20.js"></script>
<script src="../Scripts/modernizr.custom.js"></script>
<script src="../Scripts/Own_functions.js"></script>
<link rel="stylesheet" href="../Content/component.css">
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<script>
    function changeCheckboxText(checkbox) {
        if (checkbox.checked == true) {
            $("#submit_forma_r").attr("disabled", false);
        }
        else {
            $("#submit_forma_r").attr("disabled", true);
        }
    }
</script>
<style>

    html, body, form#aspnetForm, #body{
        height: 100%;
        width: 100%;
        position: relative;
    }
    .body_registro{
        background: #00d0fe !important;
    }
    .nl-overlay-active{
        opacity: 1 !important;
        visibility: visible !important;
        -webkit-transition-delay: 0s !important;
        -moz-transition-delay: 0s !important;
        transition-delay: 0s !important;
    }
    .shade_first {
        font-size:18px;
        color:#2d3559;
    }
    .shade_second {
        font-size:18px;
        color:#2d3559;
    }
    .shade_div{
        width: 100%;
        height: 100%;
        display: block;
        top: 0;
        z-index: 10000;
        background-color: rgba(0,0,0,.5);
        position: fixed;
        display: none;
    }
    .shade_content{
        width: 420px;
        height: 200px;
        display: block;
        z-index: 15000;
        margin: 0 auto;
        background: #fff;
        z-index: 200;
        position:relative;
        top: 50%;
        margin-top: -200px;

    }
        .shade_content_top {
            width: 100%;
            float:left;
        }
            .shade_close_icon{
                margin: 8px;
                float: right;
                width: 22px;
                height: 22px;
                top: 0px;
                background: url(Images/assets/Messages/sprite_cerrar_alerta.png ) no-repeat scroll 0 0 transparent;
                z-index: 100;
                position: relative;
            }
            .shade_close_icon:hover{
                background-position: -22px 0;
            }
        .shade_content_bottom {
            text-align: center;
        }
            .shade_content_bottom p strong{
                font-weight: bold;
                color: #00b1eb;
                font-family: "VWHeadlineOTBlack";
                font-size: 18px;
            }
            .shade_content_bottom p{
                color: #2d3559;
                font-size: 18px;
                font-family: "VWHeadlineOTSemibold";
            }

            .shade_content_bottom p.italic{
                font-style: italic;
                color: #2d3559;
                font-family: "vwutopia-bkittabmedium_italic";
            }
    /*Formulario*/
    .container_selector_location {
        width: 400px;
        margin: 0 auto;
        margin-top: 35px;
        position: relative;
    }
        #selector_ocupation,
        #selector_location {
            position: absolute;
            width: 481px;
            z-index: 10000;
            top: 25px;
            left: -10px;
        }
            #selector_ocupation span,
            #selector_location span {
                width: 100%;
                position: relative;
                text-align: center;
                float: left;
                background-color: #71cffe;
                font-family: "vwutopia-bkittabmedium_italic";
                padding: 10px;
                cursor: pointer;
                color: #fff;
            }
                #selector_ocupation span:hover,
                #selector_location span:hover {
                    background-color: #86d6fe;
                }
        .location_nl .nl-field-open{
            height: auto;
            position: absolute;
        }

    .header_form{
        position: relative;
        margin-top: 44px;
        background: #00c1f7;
        margin: 29px 0 0 0;
        height: 156px;
    }
        .header_form_content{
            width: 1024px;
            margin: 0 auto;
            position: relative;
        }
            .header_form_content h1{
                padding-top: 55px;
                padding-bottom: 13px;
            }
            .header_form_content .close{
                position: absolute !important;
                margin: 65px 68px 0 0 !important;
                z-index: 100;
                float: right;
                right: 0;
            }
    p.idea{
        width: 800px;
        margin: 0 auto;
        text-align: center;
        color: #fff;
        font-family: 'vwutopia-bkittabmedium_italic';
    }

    @media only screen and (max-width: 1055px) {
        .header_form_content{
            width: auto;
            max-width: 1024px;
        }
        p.idea{
            width: auto;
            max-width: 800px;
        }
        .location_content{
            width: 100%;
            float: left;
            height: 20px;
        }
    }

   @media only screen and (max-width: 850px){
        .location_nl .nl-field-open{
            width: 233px;
            position: relative;
            margin: 0 auto;
        }
        .content_name,
        .content_option,
        .content_telephone,
        .location_content,
        .content_ocupation,
        .content_space{
            width: 100%;
            float: left;
            height: 37px;
        }
        .container_selector_location{
            position: absolute;
            left: 0px;
            width: 100%;
        }
        #selector_ocupation,
        #selector_location{
            width: 100%;
            margin-top: -41px;
            left: 0;
        }
        #selector_ocupation span, #selector_location span{
            padding: 10px 0;
        }
    }
    @media only screen and (max-width: 500px) {
        .nl-field ul li{
            font-size: 1em;
        }
        .shade_content{
            width: 100%;
        }
    }
    @media only screen and (max-width: 650px) {
        .nl-field.nl-field-open{
            float: left;
            left: 19px;
        }
        .header_form_content .close{
            position: absolute;
            left: -1000000px;
            top: -10000000px;
        }
    }

</style>
<div class="shade_div">
    <div class="shade_content">
        <div class="shade_content_top">
            <a href="#" class="click_none">
                <div class="shade_close_icon"></div>
            </a>
        </div>

        <div class="shade_content_bottom">
            <asp:Label ID="lbl_image" runat="server" Text=""></asp:Label>
            <p><strong><asp:Label ID="lblMsg_0" runat="server" Text=""></asp:Label></strong></p>
            <p><asp:Label ID="lblMsg_1" runat="server" Text=""></asp:Label></p>
            <p class="italic"><asp:Label ID="lblMsg_2" runat="server" Text=""></asp:Label></p>
        </div>
    </div>
</div>

<div class="register register_content">
    <div class="header_form">

        <div class="header_form_content">
            <div class="close">
                <a href="/">
                    <div class="btn"></div>
                </a>
            </div>

            <h1 class="t2">Base de la Promoción</h1>
        </div>
    </div>

    <div class="wrapper_registro" style="width: 800px; margin-left: auto; margin-right: auto;">

<h2>&ldquo;LA RUTA DE LAS IDEAS&rdquo;</h2>

<p class="center">A partir del 04 de octubre y hasta el 03 de noviembre del 2013 VOLKSWAGEN DE M&Eacute;XICO, S.A. (en lo sucesivo VWM y/o el organizador de la din&aacute;mica), con sede en Autopista M&eacute;xico-Puebla KM.116, San Lorenzo Almecatla, Cuautlancingo, Puebla, llevar&aacute; a cabo la din&aacute;mica denominada &ldquo;La Ruta de las Ideas&rdquo; (en lo sucesivo la &quot;Din&aacute;mica&rdquo;), misma que se regir&aacute; por las presentes bases y condiciones (en adelante las &quot;Bases&rdquo;).</p>

<h2>I. Organizador:</h2>

<p class="center">VOLKSWAGEN DE M&Eacute;XICO, S.A. DE C.V.</p>

<h2>II. Datos de la Promoci&oacute;n:</h2>

<p><span>A.</span> Nombre.- &ldquo;La Ruta de las Ideas&rdquo;</p>

<p><span>B.</span> Bien o servicio a promocionarse: La marca Volkswagen y Nuevo Vento.</p>

<p><span>C.</span> Convocatoria: VWM invita los participantes a ser uno de los primeros en manejar Nuevo Vento a trav&eacute;s de La Ruta de las Ideas: un recorrido por varios estados de M&eacute;xico con el fin de encontrar una idea innovadora, inteligente, realizable, diferente; una idea capaz de mover conciencias en beneficio del planeta. Los participantes de la Ruta de las Ideas, saldr&aacute;n de la Planta Volkswagen Puebla con direcci&oacute;n a Los Cabos, organizados en 3 equipos de 4 integrantes completamente desconocidos. Durante esta aventura de 3 d&iacute;as y 2 mil km. Nuevo Vento ser&aacute; un aliado para superar una serie de pruebas que encontrar&aacute;n en el camino y que les brindar&aacute;n beneficios adicionales durante el trayecto.</p>

<p><span>D.</span> Cobertura Geogr&aacute;fica: Todo el territorio de los Estados Unidos Mexicanos. </p>

<h2>III. Premio:</h2>

<p class="center">Una estad&iacute;a extendida en Los Cabos, Baja California Sur de 3 d&iacute;as y 2 noches del 1&ordm; al 3 de noviembre 2013 todo incluido para los 4 integrantes del equipo ganador, un paquete de regalos Volkswagen Collection, un certificado de Invaders Festival 2013.</p>

<p class="center">El Organizador se reserva el derecho de sustituir el premio con otro de un valor y calidad similar en cualquier momento sin necesidad de notificaci&oacute;n previa alguna en los casos en los que por causas ajenas al Organizador no se puedan entregar los premios originalmente ofrecidos. Este premio es no transferible, no reembolsable y no podr&aacute; intercambiarse por dinero en efectivo ni ning&uacute;n otro premio.</p>

<p class="center">El Organizador (incluyendo sus funcionarios, empleados o agentes) en ning&uacute;n caso ser&aacute; responsable por los da&ntilde;os y perjuicios que pudieren llegar a ocasion&aacute;rsele a un participante que se relacionen directa o indirectamente de esta din&aacute;mica, incluyendo en forma enunciativa mas no limitativa, (a) de dificultades t&eacute;cnicas o el mal funcionamiento de alg&uacute;n equipo; (b) de cualquier robo, acceso no autorizado o interferencia de cualquier tipo por parte de un tercero; (c) cualquier solicitud de premios que llegue tarde, se pierda, sea alterada, da&ntilde;ada, o dirigida en forma equivocada; o (d) del uso de alg&uacute;n premio.</p>


<h2>IV. Requisitos para participar: </h2>

<ul>
	<li>Ser persona f&iacute;sica y estar en pleno goce y ejercicio de todos sus derechos.</li>
	<li>Ser residente legal de M&eacute;xico.</li>
	<li>Ser mayor de 18 a&ntilde;os de edad. </li>
	<li>Tener un Smartphone con internet o conexi&oacute;n wi-fi.</li>
	<li>Contar con una cuenta de &quot;Twitter&quot;.</li>
	<li>Haber dado clic en el bot&oacute;n de &quot;Seguir&quot; en la cuenta de Twitter @Volkswagen_mx.</li>
	<li>Contar con una cuenta de &quot;Facebook&quot;.</li>
	<li>Haber dado clic en el bot&oacute;n de &quot;Me Gusta&quot; en la Fan Page de Volkswagen de M&eacute;xico.</li>
	<li>No padecer ning&uacute;n tipo de enfermedad y/o limitaci&oacute;n que provoque o aumente problemas de salud ocasionados por un viaje largo.</li>
	<li>Haber le&iacute;do los t&eacute;rminos y condiciones aqu&iacute; manifestadas.</li>
	<li>Estar disponible para participar del 28 de octubre al 3 de noviembre del 2013.</li>
	<li>El participante debe estar de acuerdo con las reglas de esta din&aacute;mica contenidas en estas bases, por lo que se considerar&aacute; que por el simple  hecho de proporcionar informaci&oacute;n de acuerdo a la mec&aacute;nica que se describe a continuaci&oacute;n, implica que se aceptan de conformidad los t&eacute;rminos y condiciones de la &ldquo;Din&aacute;mica&rdquo; contenidas en estas bases. </li>
	<li>No podr&aacute;n participar todas aquellas personas que trabajen en cualquiera de las Concesionarias Volkswagen, as&iacute; como de las empresas Volkswagen de M&eacute;xico, S.A. de C.V., Volkswagen Servicios de Administraci&oacute;n de Personal, S.A. de C.V., Instituto para Formaci&oacute;n y Desarrollo Volkswagen, SC., Volkswagen Servicios, S.A. de C.V., Volkswagen Bank y Volkswagen leasing, S.A. de C.V. o de alguna sociedad de la que Volkswagen de M&eacute;xico, S.A. de C.V., sea accionista o socios, filiales o subsidia rias, as&iacute; como sus ascendientes o descendientes sin limitaci&oacute;n de grado y colaterales hasta el cuarto grado.</li>
	<li>El participante deber&aacute; firmar un documento en el que libere al Organizador de cualquier responsa bilidad relacionada o que se derive de esta Din&aacute;mica.</li>
</ul>

<h2>V. Vigencia.</h2>

<p class="center">Esta &ldquo;Promoci&oacute;n&rdquo; estar&aacute; vigente a partir del 04 de octubre y hasta el 25 de octubre
del a&ntilde;o 2013 <br />(en adelante, &ldquo;Vigencia&rdquo;).</p>

<h2>VI. Mec&aacute;nica de participaci&oacute;n:</h2>

<ul>
	<li>Registro: Para participar en el proceso de selecci&oacute;n de la &ldquo;Din&aacute;mica&rdquo; La Ruta de las Ideas, deber&aacute;n registrarse en www.larutadelasideas.mx con los siguientes datos:</li>

	<li>Proporcionar nombre completo, edad, Estado de residencia, correo electr&oacute;nico, tel&eacute;fono, profesi&oacute;n.</li>

	<li>Explicar de manera breve y creativa la raz&oacute;n por la cual tiene inter&eacute;s en participar en la Din&aacute;mica.</li>

	<li>Aceptar los t&eacute;rminos y condiciones.</li>

	<li>Selecci&oacute;n: Grupo W Agencia Digital M&eacute;xico S.A. elegir&aacute; de acuerdo a su criterio a 24 personas de entre los registros para una &uacute;ltima fase de selecci&oacute;n, en la que cada seleccionado para participar en la din&aacute;mica por el hecho de haberse registrado, habr&aacute; aceptado las siguientes condiciones.</li>

	<li>Autorizar a VWM para el uso de su imagen en sus redes sociales, canal de You Tube, sitio corporativo, micro sitios y todas sus propiedades digitales.</li>

	<li>Proporcionar sus perfiles de redes sociales (Facebook, Twitter, Google +, Linkedin).</li>

	<li>Participar en una entrevista v&iacute;a webconference por Hangout de Google+ o Skype.</li>

	<li>Viaje: Una vez seleccionados, los 12 participantes deber&aacute;n confirmar su asistencia al viaje a m&aacute;s tardar el 23 de octubre para ser considerados.</li>
</ul>


<p class="center">El viaje se llevar&aacute; a cabo en las siguientes condiciones:</p>

<ul>
	<li>Los 12 seleccionados ser&aacute;n trasladados desde su lugar de residencia a la Ciudad de Puebla el d&iacute;a 28 de octubre del 2013. Los gastos de traslado, alimentaci&oacute;n y hospedaje corren por cuenta de Volkswagen.</li>

	<li>Los participantes seleccionados deber&aacute;n firmar una carta responsiva, un convenio de confidencialidad y la autorizaci&oacute;n de uso de su imagen. </li>

	<li>El 28 de octubre del 2013, los seleccionados saldr&aacute;n a bordo de Nuevo Vento en equipos formados por 4 integrantes de la Planta Volkswagen Puebla con direcci&oacute;n a Los Cabos, BCS para llegar el 31 de octubre  del 2013.</li>

	<li>El 1 de noviembre, los equipos presentar&aacute;n en el Invader Festival, en Los Cabos, BCS una idea innova dora a partir de un brief que recibir&aacute;n durante la primera noche en Puebla, en la que trabajar&aacute;n durante todo el viaje.</li>
</ul>

<p>Designaci&oacute;n de ganador: Durante el trayecto de Puebla a Los Cabos, BCS, los participantes trabajar&aacute;n en equipo para superar una serie de pruebas de habilidad que les permitir&aacute;n obtener puntos y beneficios especiales durante el viaje. Con estas pruebas, los equipos podr&aacute;n acumular hasta 500 puntos.</p>

<p>El proyecto final ser&aacute; evaluado por un jurado designado por VWM durante el Invader Festival, de acuer do a las siguientes consideraciones: Innovaci&oacute;n (25 puntos), Tecnolog&iacute;a (25 puntos), Viabilidad (25 puntos), Presentaci&oacute;n (25 puntos). El jurado estar&aacute; conformado por 5 integrantes que podr&aacute;n otorgar m&aacute;ximo 500 puntos por equipo. Los participantes entienden y aceptan que la decisi&oacute;n del jurado ser&aacute; inapelable.</p>

<p>El equipo ganador ser&aacute; el que acumule la mayor cantidad de puntos durante el viaje y en suma con la evaluaci&oacute;n del jurado. Dicho equipo obtendr&aacute; la estad&iacute;a extendida en los Cabos durante el fin de semana del 1&ordm;. Al 3 de noviembre del 2013, un paquete de art&iacute;culos Volkswagen Collection, difusi&oacute;n de su idea, un reconocimiento y la posibilidad de que se lleve a cabo el proyecto.</p>


<h2>VII. Mec&aacute;nica para la entrega del premio.</h2>


<ul>
	<li>El equipo ganador del premio se dar&aacute; a conocer durante el Invader Festival el 1&ordm;. De noviembre 2013.</li>
	<li>VWM cubrir&aacute; los gastos de traslado tanto de los equipos no ganadores a la Ciudad de M&eacute;xico v&iacute;a a&eacute;rea, el 1&ordm;. De noviembre 2013, como del equipo ganador, el 3 de noviembre 2013.</li>
</ul>

<h2>VIII. Responsabilidades: </h2>


<ul>
	<li>La responsabilidad del &quot;Organizador&quot; finaliza con la entrega del premio.</li>

	<li>En caso que el &ldquo;premio&rdquo; resultara gravado con alg&uacute;n impuesto existente o a crearse en el futuro, el importe correspondiente al mismo ser&aacute; cargado al &ldquo;Participante&rdquo;.</li>

	<li>Al participar en esta promoci&oacute;n el participante reconoce que Facebook y Twitter no patrocina, avala ni administra de modo alguno esta promoci&oacute;n, ni est&aacute; asociado a ella.</li>

	<li>Los participantes aceptan ser entrevistados, fotografiados y/o filmados por el Organizador en cualquier momento con el fin de hacer reportajes y videos sobre la Din&aacute;mica con fines de promoci&oacute;n del veh&iacute;culo Nuevo Vento. Los participantes tambi&eacute;n deber&aacute;n autorizar por escrito al Organizador para utilizar  dichos materiales de la forma que estime conveniente.</li>

	<li>Los participantes por el solo hecho de participar en la promoci&oacute;n, entienden y aceptan que ceder&aacute;n los derechos de uso de la idea generada durante el viaje a VWM.</li>

	<li>VWM se reserva el derecho a eliminar de la competencia a cualquier usuario que genere faltas de respeto, amenazas, violencia verbal o cualquier acci&oacute;n negativa de toda &iacute;ndole contra otros usuarios o  contra VWM.</li>

	<li>Volkswagen M&eacute;xico se reserva el derecho de admisi&oacute;n si el participante invitado incumple con las bases de participaci&oacute;n, se encuentra en estado de ebriedad y/o de &aacute;nimo alterado.</li>
</ul>

<h2>XI. Jurisdicci&oacute;n: </h2>

<p class="center">Para cualquier controversia que se suscite con motivo de la ejecuci&oacute;n e interpretaci&oacute;n de estas bases o que surja con motivo de esta &ldquo;Din&aacute;mica&rdquo;, las partes por el simple hecho de participar en la misma, renuncian expresamente a cualquier jurisdicci&oacute;n que pudiera corresponderles con arreglo a la Ley por raz&oacute;n territorial y aceptan someterse a la jurisdicci&oacute;n y competencia de los Tribunales de la Ciudad de M&eacute;xico, Distrito Federal.</p>

















    </div>
</div>


</section>
    </div>
    <footer>
      <div class="main-footer">
        <div class="copy">
          <p><a id="A8" runat="server" href="http://www.vw.com.mx/" target="_blank">&copy; Volkswagen México 2013</a></p>
        </div>
        <div class="privacy">
          <p><a id="A9" runat="server" href="http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html" target="_blank">Políticas de privacidad</a></p>
        </div>
        <div class="legals">
          <p><a id="A10" runat="server" class="chackbox" href="AspectosLegales.aspx" target="_blank">Términos y condiciones</a></p>
        </div>
      </div>
    </footer>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/979931181/?value=0&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
<style>
    #menu{
        display: none !important;
    }
    footer {
        display: none;

    }
    #share {
        display: none;
    }
    header {
        background: none;
    }
    .logovw {
        width: 100px;
        height: 100px;
    }
    .header_form {
        background: none;
    }
    .header_form .close {
        display: none;
    }
    .t2 {
        color: #005AA6;
        text-align: left;
    }
    h2 {
        margin-top: 43px;
    }
    .wrapper_registro {
        line-height: 22px;
        text-align: left;
    }
</style>
</body>
</html>