<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Vento.Registro" %>
<%@ Register Assembly="SlimeeLibrary" Namespace="SlimeeLibrary" TagPrefix="cc1" %>
<script src="Scripts/jquery-1.7.1.js"></script>
<script src="Scripts/jquery-ui-1.8.20.js"></script>
<script src="Scripts/modernizr.custom.js"></script>
<script src="Scripts/Own_functions.js"></script>
<link rel="stylesheet" href="Content/component.css">
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
            <span class="content_option">
                <select id="choice" runat="server" name="sel1">
                    <option value="Ninguno">Elegir opción</option>
                    <option value="Registro">Participar</option>
                    <option value="Prueba">Una prueba de manejo</option>
                </select>
            </span> 
        </p>
        </div>
        <div id="form_secondary">
            <br>
            <div class="ocupation_nl">
                <div class="t4 location_nl">
                    Soy
                    <span class="content_ocupation" id="content_ocupation">
                        <asp:TextBox ID="txtOcupacion" placeholder="Ocupación" data-subline="Ejemplo: Estudiante" runat="server" onkeypress="javascript:runScript2(event)"></asp:TextBox>
                        <span class="container_selector_location">
                            <span id="selector_ocupation">
                            </span>
                        </span>
                    </span> 
                    y mi
                </div>
            </div>
            
            <p class="t4">
                <span class="content_space">idea eco-amigable es:</span>
            </p>

            <br />
            <p class="t4" class="idea">
                <span class = "experiencetxt" id = "experiencetxt">
                    <asp:TextBox ID="txtExperiencia" placeholder='"Escribe tu idea"' data-subline="Ejemplo: Escribe tu idea" onkeyup="checkLenght();" runat="server"></asp:TextBox>
                </span>
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

    <script src="Scripts/nlform.js"></script>
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
            return $(".ageTxt .nl-ti-input input[type=text]").val().substring(0, $(".ageTxt .nl-ti-input input[type=text]").val().length-1);
        }
        function set_analitycs()
        {
            $('#content_name .nl-field-toggle').unbind("click");
            $('#ageTxt .nl-field-toggle').unbind("click");
            $('#location_content .nl-field-toggle').unbind("click");
            $('#emailer_content .nl-field-toggle').unbind("click");
            $('#content_telephone .nl-field-toggle').unbind("click");
            $('#content_ocupation .nl-field-toggle').unbind("click");
            $('#experiencetxt .nl-field-toggle').unbind("click");
            if(window.selected==1)
            {
                $('#content_name .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Nombre']);
                    $("#content_name .nl-ti-input input[type=text]").focus();
                });
                $('.ageTxt .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Edad']);
                    $(".ageTxt .nl-ti-input input[type=text]").focus();
                });
                $('.location_content .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Ciudad']);
                    $(".location_content .nl-ti-input input[type=text]").focus();
                });
                $('.emailer_content .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Correo']);
                    $(".emailer_content .nl-ti-input input[type=text]").focus();
                });
                $('.content_telephone .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Telefono']);
                    $(".content_telephone .nl-ti-input input[type=text]").focus();
                });
                $('.content_ocupation .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Ocupación']);
                    $(".content_ocupation .nl-ti-input input[type=text]").focus();
                });
                $('.experiencetxt .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Participa/Ideas']);
                    $(".experiencetxt .nl-ti-input input[type=text]").focus();
                    $(".experiencetxt ul").width($(document).width()/2);
                });
            }
            if (window.selected == 2) {
                $('#content_name .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Prueba/Nombre']);
                    $("#content_name .nl-ti-input").focus();
                });
                $('.ageTxt .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Prueba/Edad']);
                    $(".ageTxt .nl-ti-input input[type=text]").focus();
                });
                $('.location_content .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Prueba/Ciudad']);
                    $(".location_content .nl-ti-input input[type=text]").focus();
                });
                $('#emailer_content .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Prueba/Correo']);
                    $(".emailer_content .nl-ti-input input[type=text]").focus();
                });
                $('#content_telephone .nl-field-toggle').on('click', function (e) {
                    _gaq.push(['_trackPageview', 'Prueba/Telefono']);
                    $(".content_telephone .nl-ti-input input[type=text]").focus();
                });
            }
        }
        $(document).ready(function () {
            $(".ageTxt .nl-ti-input input[type=text]").keyup(function (event) {
                $(".ageTxt .nl-ti-input input[type=text]").val(isNumber(event));
            });
            set_analitycs();
            $('html, footer, section, body').removeClass('rutas');

            $('.nl-overlay, button .nl-field-go').on('click', function(e){
               $("#selector_ocupation").html("");
               $("#selector_location").html("");
                if( $('.nl-overlay' ).hasClass( 'nl-overlay-active' ) ){
                    $( '.nl-overlay' ).removeClass( 'nl-overlay-active' );
                }else{
                    
                }
            });
                
            $('.nl-field-toggle').on('click', function(e){
                $( '.nl-overlay' ).addClass( 'nl-overlay-active' );

                
            });
        });
        
        function checkLenght() {
            var limit = 0;
            limit = 400 - parseInt($('#txtExperiencia').val().length);
            if (limit < 0)
                limit = 0;
            $('#lblLimit').html(limit);
            $('#txtExperiencia').val($('#txtExperiencia').val().substring(0, 400));
        }
        $(function () {
            var opcion_selector = window.selected;
            set_analitycs();
            if (opcion_selector == null) {
                $('body').addClass('body_registro');
                $("#form_secondary").css("display", "block");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(1)").addClass("nl-dd-checked");
                $(".selector a .nl-field-toggle").text($(".selector .nl-field li:nth-child(1)").text());
                $("#choice").prop('selectedIndex', 0);
            }
            if (opcion_selector == 0) {
                $('body').addClass('body_registro');
                $("#form_secondary").css("display", "block");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(1)").addClass("nl-dd-checked");
                $(".selector a.nl-field-toggle").text($(".selector .nl-field li:nth-child(1)").text());
                $("#choice").prop('selectedIndex', 0);
            }
            if (opcion_selector == 1) {
                $('body').addClass('body_registro');
                $("#form_secondary").css("display", "block");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(2)").addClass("nl-dd-checked");
                $(".selector a.nl-field-toggle").text($(".selector .nl-field li:nth-child(2)").text());
                $("#choice").prop('selectedIndex', 1);
            }
            if (opcion_selector == 2) {
                $('body').addClass('body_registro');
                $("#form_secondary").css("display", "none");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(3)").addClass("nl-dd-checked");
                $(".selector a.nl-field-toggle").text($(".selector .nl-field li:nth-child(3)").text());
                $("#choice").prop('selectedIndex', 2);
            }
        });
        //
        $(".residencia_nl .nl-ti-input input[type=text]").keypress(function () {
            runScript1();
        });
        $(".ocupation_nl .nl-ti-input input[type=text]").keypress(function () {
            runScript2();
        });
        //
        $(".form_send_ajax").submit(function (e) {
            display_from_url(e, $(this));
        });
        $(".selector .nl-field li").on('click', function () {
            if ($(this).text() == "Elegir opción") {
                $("#form_secondary").css("display", "block");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(1)").addClass("nl-dd-checked");
                $("#choice").prop('selectedIndex', 0);
                window.selected = 0;
                set_analitycs();
            }
            else if ($(this).text() == "Participar") {
                $("#form_secondary").css("display", "block");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(2)").addClass("nl-dd-checked");
                $("#choice").prop('selectedIndex', 1);
                window.selected = 1;
                set_analitycs();
            }
            else if ($(this).text() == "Una prueba de manejo") {
                $("#form_secondary").css("display", "none");
                $(".selector .nl-field li").removeClass('nl-dd-checked');
                $(".selector .nl-field li:nth-child(3)").addClass("nl-dd-checked");
                $("#choice").prop('selectedIndex', 2);
                window.selected = 2;
                set_analitycs();
            }
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
        function runScript2(e) {
            if ($(".ocupation_nl .nl-ti-input input[type=text]").val() != "") {
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "Registro.aspx/GetOcupations",
                    data: "{'hint':'" + $(".ocupation_nl .nl-ti-input input[type=text]").val() + "'}",
                    dataType: "json",
                    success: function (data) {
                        console.log(data.d);
                        $("#selector_ocupation").html("");
                        $("#selector_ocupation").html(data.d);

                        $("#selector_ocupation span").on('click', function () {
                            $(".ocupation_nl .nl-ti-input input[type=text]").val($(this).text());
                            $("#selector_ocupation").html("");
                        });
                    },
                    error: function (result) {
                    }
                });
            }
            else {
                $("#selector_ocupation").html("");
            }
        }
        $("body").keypress( function( e ){

            console.log(e.which )
            if( e.which == 13 ) {
                $( '.nl-overlay' ).removeClass( 'nl-overlay-active' );
                $("#selector_location").html("");
                $("#selector_ocupation").html("");
            }
        });
        $(".residencia_nl .nl-field-go").on('click', function () {
            $("#selector_location").html("");
        });
        $(".ocupation_nl .nl-field-go").on('click', function () {
            $("#selector_ocupation").html("");
        });

        $('#txtResidencia').keypress( function(e){
            runScript1(event);
        });
        $('#txtResidencia').keyup( function(e){
            runScript1(event);
        });
        
    </script>
