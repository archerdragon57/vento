<%@ Page Title="Vento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vento._Default" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

  <style>
    .fancybox-lock .fancybox-overlay{
      z-index: 20000;
    }
  </style>
    <script src="Scripts/jquery-ui-1.8.20.min.js"></script>
    <script src="Scripts/Own_functions.js"></script>
        <link rel="stylesheet" href="Scripts/fancybox/source/jquery.fancybox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="Scripts/fancybox/source/jquery.fancybox.pack.js"></script>



            <div class="home">
                <div class="logo">
                    <div class="holder">
                        <div class="title1"></div>
                        <div class="title2"></div>
                        <div class="title3"></div>
                        <div class="title4"></div>
                        <div class="title5"></div>
                        <div class="car"><a href="http://www.youtube.com/embed/vYBUktTnRaM?autoplay=1&vq=hd1080&controls=0&rel=0&showinfo=0" class="click_none fancybox fancybox.iframe">
                            <div class="state1"></div>
                            <div class="state2"></div>
                            <div class="state3"></div>
                            </a> </div>
                        <div class="title6"></div>
                    </div>
                </div>
                <div class="arrow1_btn"><a href="#">
                    <div class="btn"></div>
                    </a></div>
                <div class="video_btn"><a href="#">
                    <div class="btn"></div>
                    </a></div>
                <div class="video2_btn"><a href="#"></a></div>
                <div class="share_txt">Comparte</div>
                <div class="social-share">
                    <ul id="menu">
                        <li><a href="">
                            <div class="facebook"></div>
                            </a></li>
                        <li><a href="">
                            <div class="twitter"></div>
                            </a></li>
                    </ul>
                </div>
                <div class="arrow2_btn"><a href="#">
                    <div class="btn"></div>
                    </a></div>
                <div class="content">
                    <h1 class="c3">Conduce tu creatividad</h1>
                    <h2 class="c4">hasta llegar a la meta</h2>
                    <p class="c5"><span class="c1">Volkswagen</span> te invita a ser uno de los primeros en manejar <span class="c1">Nuevo Vento</span> a través de <span class="c2">La Ruta de las Ideas:</span> un recorrido por varios estados de México con el fin de encontrar una idea innovadora, inteligente, realizable, diferente; una idea capaz de mover conciencias en beneficio del planeta.</p>
                    <p class="c5">Los participantes de la Ruta de las Ideas, saldrán de la Planta <span class="c1">Volkswagen Puebla</span> con dirección a Los Cabos, organizados en 3 equipos de 4 integrantes completamente desconocidos. Durante esta aventura de 3 días y 2 mil km. <span class="c1">Nuevo Vento</span> será un aliado para superar una serie de pruebas que encontrarán en el camino y que les brindarán beneficios adicionales durante el trayecto.</p>
                    <p class="c5">Para seguir la Ruta de las Ideas, <span class="c1">Nuevo Vento</span> estará equipado con cámaras de video que registrarán cada actividad y que nos permitirán ser testigos de esta experiencia innovadora.</p>
                    <div class="home-footer"><h3 class="c6">¡Regístrate, participa y gana una estadía extendida en Los Cabos y la posibilidad de llevar a cabo tu idea!</h3></div>
                </div>
                <div class="bottom-arrow"><div class="barrow"></div></div>
                <div class="buttons">
                    <div class="button1"> <a runat="server" href="Registro.aspx" onclick="javascript:window.selected=1;" class="chackbox">
                        <div class="holder">
                            <div class="imageA"></div>
                            <div class="imageB"></div>
                            <div class="text">
                                <div class="text1">Participa</div>
                                <div class="text2">Ver más <img src="Images/home/vento_microsite_contenido_flecha_vermas.png" class="arrow" alt=""></div>
                            </div>
                        </div>
                        </a> </div>
                    <div class="button2"> <a runat="server" href="Mecanica.aspx" class="chackbox">
                        <div class="holder">
                            <div class="imageA"></div>
                            <div class="imageB"></div>
                            <div class="text">
                                <div class="text1">Mecánica</div>
                                <div class="text2">Ver más <img src="Images/home/vento_microsite_contenido_flecha_vermas.png" class="arrow" alt=""></div>
                            </div>
                        </div>
                        </a> </div>
                    <div class="button3"> <a runat="server" href="Ruta.aspx" class="chackbox">
                        <div class="holder">
                            <div class="imageA"></div>
                            <div class="imageB"></div>
                            <div class="text">
                                <div class="text1">Ruta</div>
                                <div class="text2">Ver más <img src="Images/home/vento_microsite_contenido_flecha_vermas.png" class="arrow" alt=""></div>
                            </div>
                        </div>
                        </a> </div>
                </div>
            </div>


            

</asp:Content>
