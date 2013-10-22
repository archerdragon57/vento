<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AspectosLegales.aspx.cs" Inherits="Vento.AspectosLegales" %>
<script src="Scripts/jquery-1.7.1.js"></script>
<script src="Scripts/jquery-ui-1.8.20.js"></script>
<script src="Scripts/modernizr.custom.js"></script>
<script src="Scripts/Own_functions.js"></script>
<link rel="stylesheet" href="Content/component.css">
<script>
    function changeCheckboxText(checkbox) {
        if (checkbox.checked == true) {
            $("#submit_forma_r").attr("disabled", false);
        }
        else {
            $("#submit_forma_r").attr("disabled", true);
        }
    }
    $(document).ready(function() {
    		$('body').removeClass('body_legales');

	        $('html, footer, section').removeClass('rutas');
    });
</script>
<style>
    .body_legales, .register_content{
    	background-color: #13234b !important;
    }
    .register{
    	position: relative !important;
    }
    .shade_image {
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
        background: #13234b;
        margin: 31px 0 0 0;
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
                color: #fff;
            }
            .header_form_content .close{
                position: absolute !important;
                margin: 65px 68px 0 0 !important;
                z-index: 100;
                float: right;
                right: 0;
            }
            .header_form_content .close .btn{
            	background: url("../Images/route/sprite_cerrar_ruta_mobile.png") no-repeat scroll 0 0 transparent;
				background-size: 66px auto;
				width: 33px;
				height: 33px
            }
    .wrapper_registro{
    	width: 700px;
    	margin: 0 auto;
    	position: relative;
    }
    	.wrapper_registro h2{
    		text-align: center;
    	}
    	.wrapper_registro p{
    		color: #fff;
    		text-align: left;
    		font-size: 14px;
    		padding-bottom: 25px;
    	}
    	.wrapper_registro p.center{
    		text-align: center;

    	}
    	.wrapper_registro h2{
    		font-size: 18px;
    		padding: 20px 0 55px 0;
    		margin: 0;
    	}
    	.wrapper_registro h2,
    	.wrapper_registro p span{
    		color: #00b1eb;
    	}
    	.wrapper_registro ul{
    		padding: 0 0 25px 35px;
    		margin: 0;
    	}
    	.wrapper_registro li{
    		text-align: left;
    		font-size: 14px;
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
    }
    @media only screen and (max-width: 800px ){
        .header_form_content .close{
            position: absolute;
            left: -1000000px;
            top: -10000000px;
        }
    }
    @media only screen and (max-width: 700px ){
    	.wrapper_registro{
	    	max-width: 700px;
			width: auto;
			padding: 0 30px;
    	}
    }
    @media only screen and (max-width: 450px) {
        
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

            <h1 class="t2">BASES DE LA PROMOCI&Oacute;N</h1>
        </div>
    </div>
    
    <div class="wrapper_registro">

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
