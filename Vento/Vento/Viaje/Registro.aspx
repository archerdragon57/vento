<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Vento.Viaje.Registro" %>
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
    <!-- Segment Pixel - Headway Digital - Mediacom MX - VW Vento Segment Include - DO NOT MODIFY -->
<img src="http://ads.resultsaccelerator.net/seg?add=1051539&t=2" width="0" height="0" style="display: none;"/>
<!-- End of Segment Pixel -->

</head>
<body>
<script type='text/javascript'>
    var ebRand = Math.random() + '';
    ebRand = ebRand * 1000000;
    //<![CDATA[
    document.write('<scr' + 'ipt src="HTTP://bs.serving-sys.com/BurstingPipe/ActivityServer.bs?cn=as&amp;ActivityID=369561&amp;rnd=' + ebRand + '"></scr' + 'ipt>');
    //]]>
</script>
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

            <h1 class="t2">Registro</h1>
            <p class="t3">Ingresa tu información</p>
        </div>
    </div>

    <div class="main-form main">



    <form id="form1" runat="server" class="nl-form form_send_ajax">

        <div class="t4">
            Me llamo
            <span class="content_name" id="content_name">
                <asp:TextBox
                    ID="txtNombre"
                    placeholder="Nombre y apellido"
                    data-subline="Ejemplo: Esteban Ramírez"
                    runat="server">
                </asp:TextBox>
            </span>
            <br />
            tengo
            <span class="ageTxt" id="ageTxt">
                <asp:TextBox
                    ID="txtEdad"
                    placeholder="XX"
                    runat="server"
                    data-subline="Ejemplo: 29">
                    </asp:TextBox>
            </span>
            años de edad
            <br />
            y vivo en
            <span class="location_content" id="location_content">
                <span class="residencia_nl location_nl">
                    <asp:TextBox
                        ID="txtResidencia"
                        placeholder="Ciudad, Estado"
                        data-subline="Ejemplo: Pachuca, Hidalgo"
                        runat="server" >
                    </asp:TextBox>
                    <span class="container_selector_location">
                        <span id="selector_location">
                        </span>
                    </span>
                </span>
            </span>
        </div>

        <p class="t4">
            Mi correo es
            <span class="emailer_content content_space" id="emailer_content">
            <asp:TextBox ID="txtEmail" placeholder="Correo electrónico" data-subline="Ejemplo: usuario@dominio.com" runat="server"></asp:TextBox>
                </span>
            <br />
            y mi teléfono es
            <span class="content_telephone" id="content_telephone">
                <asp:TextBox ID="txtTelefono" placeholder="Número y lada" runat="server" data-subline="Ejemplo: (55) 1234-5678"></asp:TextBox>
            </span>
        </p>

        <div class="selector">
        <p class="t4">me gustaría
            Una prueba de manejo
        </p>
        </div>
        <br>
        <div class="check-all">
        <div class="check-data">
            <div class="check-content">
                <div class="check"><asp:CheckBox ID="CheckBox1" runat="server" onclick="changeCheckboxText(this);" /><label for="CheckBox1"></label></div>
            </div>
            <div class="check-text">
                <p class="t6">
                He leído <a href="http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html" class="link-terms" target="_blank">Políticas de privacidad</a>
                <br>
                y acepto <a href="Terminos.aspx" class="link-terms chackbox">Términos y condiciones</a>.
            </p>
            </div>
        </div>
        </div>
        <div class="nl-submit-wrap">
        <button id="submit_forma_r" class="nl-submit" onclick="$(#form1).submit();" type="submit" />
        </div>
        <div class="nl-overlay"></div>
    </form>
</div></div>

    <script src="../Scripts/nlform.js"></script>
    <script>
        var nlform = new NLForm(document.getElementById('form1'));
    </script>

    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (!(charCode > 31 && (charCode < 48 || charCode > 57))) {
                return $(".ageTxt .nl-ti-input input[type=text]").val();
            }
            return $(".ageTxt .nl-ti-input input[type=text]").val().substring(0, $(".ageTxt .nl-ti-input input[type=text]").val().length - 1);
        }
        $(document).ready(function () {
            $(".ageTxt .nl-ti-input input[type=text]").keyup(function (event) {
                $(".ageTxt .nl-ti-input input[type=text]").val(isNumber(event));
            });
            $('html, footer, section, body').removeClass('rutas');

            $('.nl-overlay, button .nl-field-go').on('click', function (e) {
                $("#selector_location").html("");
                if ($('.nl-overlay').hasClass('nl-overlay-active')) {
                    $('.nl-overlay').removeClass('nl-overlay-active');
                } else {

                }
            });

            $('.nl-field-toggle').on('click', function (e) {
                $('.nl-overlay').addClass('nl-overlay-active');


            });
        });
        $(".residencia_nl .nl-ti-input input[type=text]").keypress(function () {
            runScript1();
        });
        $(".form_send_ajax").submit(function (e) {
            display_from_url(e, $(this));
        });

        $("#submit_forma_r").attr("disabled", true);
        function runScript1(e) {
            if ($(".residencia_nl .nl-ti-input input[type=text]").val() != "") {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Registro.aspx/GetLocations",
                    data: "{'hint':'" + $(".residencia_nl .nl-ti-input input[type=text]").val() + "'}",
                    dataType: "json",
                    success: function (data) {
                        console.log(data.d);
                        $("#selector_location").html("");
                        $("#selector_location").html(data.d);
                        $("#selector_location span").on('click', function () {
                            $(".residencia_nl .nl-ti-input input[type=text]").val($(this).text());
                            $("#selector_location").html("");
                        });
                    },
                    error: function (result) {
                    }
                });
            }
            else {
                $("#selector_location").html("");
            }
        }
        $("body").keypress(function (e) {

            console.log(e.which)
            if (e.which == 13) {
                $('.nl-overlay').removeClass('nl-overlay-active');
                $("#selector_location").html("");
            }
        });
        $(".residencia_nl .nl-field-go").on('click', function () {
            $("#selector_location").html("");
        });

        $('#txtResidencia').keypress(function (e) {
            runScript1(event);
        });
        $('#txtResidencia').keyup(function (e) {
            runScript1(event);
        });

    </script>
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
    <script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 979931181;
        var google_custom_params = window.google_tag_params;
        var google_remarketing_only = true;
        /* ]]> */
</script>
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
</style>
</body>
</html>
