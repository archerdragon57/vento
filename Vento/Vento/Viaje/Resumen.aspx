<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resumen.aspx.cs" Inherits="Vento.Viaje.InfoDia" %>
<div class='recapDay sidebarCont'>
  <div class='scrollbar'>
    <div class='track'>
      <div class='thumb'>
        <div class='end'></div>
      </div>
    </div>
  </div>
  <div class='viewport'>
    <div class='overview'>
      <div class='dayHeader'>
        <div class='daynumberCont'>
          <p class='daytext'>
            Día
          </p>
          <p id='dayNumber' runat='server'>
            1
          </p>
          <a currentid='' href='#' id='dayBack' request='Resumen.aspx' runat='server'></a>
          <a currentid='' href='#' id='dayForward' request='Resumen.aspx' runat='server'></a>
        </div>
        <div id='maprouteCont' runat='server'></div>
      </div>
      <div class='routeCont'>
        <p id='routefromTo' runat='server'>
          Puebla-Guadalajara
        </p>
      </div>
      <div class='dayrecapTitle'>
        <p>
          Resumen del Día
        </p>
      </div>
      <div class='feedContainer'>
        <div id='feedContent' runat='server'>
          <div class='instaphotoCont' id='container_video_dia_option' runat='server'>
            <!-- %a.click_none.fancybox.fancybox.iframe#videodelDia{:href=>"http://www.youtube.com/embed/vYBUktTnRaM?autoplay=1&vq=hd1080&controls=0&rel=0&showinfo=0",:runat=>"server", :data=>{:fancybox_type=>"iframe"}} -->
            <!-- %img#id1_in{:src => "", :alt => "", :runat=>"server"}/ -->
          </div>
          <div class='feeddescriptionCont'>
            <p class='feeddescriptionTitle' id='title2' runat='server'>
              Lorem Ipsum
            </p>
            <p class='feedDescription' id='feed_desc_done' runat='server'>
              Lorem ipsum Incididunt proident in cupidatat officia dolore enim fugiat ea mollit fugiat elit eu ut elit ea anim deserunt amet laboris aute sit cupidatat et officia
              <span>
                adipisicing
              </span>
              nostrud laborum est Ut ut esse enim sint cupidatat ut esse.
            </p>
          </div>
          <div class='instavideoCont' id='div_video_lift' runat='server'>
            <video class='video' id='id2_v' runat='server' src=''></video>
            <span></span>
          </div>
          <div class='instaphotoCont' id='div_image_lift' runat='server'>
            <img alt='' id='id2_in' runat='server' src=''>
          </div>
          <div class='instaphotoCont'>
            <img alt='' id='id3_in' runat='server' src=''>
          </div>
          <div class='instaphotoCont'>
            <img alt='' id='id4_in' runat='server' src=''>
          </div>
          <div class='rankingequiposCont'>
            <p class='title'>
              Ranking de Equipos
            </p>
            <div class='ventorankCont'>
              <p id='rankventoUno' runat='server'>
                <span>#</span>
                Vento
                <span>
                  Uno
                </span>
              </p>
              <div class='progressCont'>
                <div class='progress' id='p1' runat='server' style='width: 50px;'></div>
                <div class='car' id='pc1' runat='server'></div>
              </div>
            </div>
            <div class='ventorankCont'>
              <p id='rankventoDos' runat='server'>
                <span>#</span>
                Vento
                <span>
                  Dos
                </span>
              </p>
              <div class='progressCont'>
                <div class='progress' id='p2' runat='server' style='width: 50px;'></div>
                <div class='car' id='pc2' runat='server'></div>
              </div>
            </div>
            <div class='ventorankCont'>
              <p id='rankventoTres' runat='server'>
                <span>#</span>
                Vento
                <span>
                  Tres
                </span>
              </p>
              <div class='progressCont'>
                <div class='progress' id='p3' runat='server' style='width: 50px;'></div>
                <div class='car' id='pc3' runat='server'></div>
              </div>
            </div>
          </div>
          <div class='instaphotoCont'>
            <img alt='' id='id5_in' runat='server' src=''>
          </div>
        </div>
      </div>
      <div id='footerMobile'>
        <div class='footerCont'>
          <a class='configurador' href='http://nuevovento.mx/viaje/registro.aspx' target='_blank'>
            Prueba de Manejo
          </a>
          <a class='legal' href='http://www.vw.com.mx/es/tools/navigation/footer/aspectos_legalesyavisodeprivacidad.html' target='_blank'>
            Politicas de Privacidad
          </a>
          <a class='terminoscondiciones' href='aspectoslegales.aspx' target='_blank'>
            Términos y Condiciones
          </a>
          <span class='copyright'>
            © Volkswagen México 2013
          </span>
        </div>
      </div>
    </div>
  </div>
</div>
<script src='js/resumen.js'></script>
