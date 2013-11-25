<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Participante.aspx.cs" Inherits="Vento.Viaje.Participante" %>
<div class='competitorCont sidebarCont'>
  <div class='scrollbar'>
    <div class='track'>
      <div class='thumb'>
        <div class='end'></div>
      </div>
    </div>
  </div>
  <div class='viewport'>
    <div class='overview'>
      <div class='competitor'>
        <a class='backBtn' currentid='' href='#' id='backParticipante' request='Auto.aspx' runat='server'>
          <p>
            Regresar
          </p>
          <span></span>
        </a>
        <div class='imgCont'>
          <img id='competitorImg' runat='server'>
        </div>
        <div class='nameandlikeCont'>
          <p class='name' id='competitorName' runat='server'>
            Esteban Ramirez
          </p>
          <a class='like' href='#' id='competitorLike' runat='server'>
            Like Me
          </a>
        </div>
        <div class='competitorData'>
          <p class='description' id='competitorBio' runat='server'>
            Lorem ipsum Anim enim dolor Excepteur Duis dolor commodo incididunt magna exercitation in cupidatat anim do qui minim in laboris reprehenderit amet reprehenderit amet ad anim in fugiat Ut est Excepteur laborum nostrud et dolor do velit est enim ea.
          </p>
          <div class='contData'>
            <p class='data'>
              Edad:
              <span id='competitorAge' runat='server'>
                29
              </span>
            </p>
            <p class='data'>
              Origen:
              <span id='competitorCity' runat='server'>
                GDL
              </span>
            </p>
            <p class='data'>
              <span id='competitorOcupation' runat='server'>
                Arquitecto
              </span>
            </p>
            <p class='data'>
              @
              <span id='competitorTwitter' runat='server'>
                Esteban_R
              </span>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id='clickTags' runat='server'></div>
<script src='js/sidebar.js'></script>
<script src='js/participante.js'></script>
<script>
    sideMenu("#backParticipante");
    $(document).ready(function () {
        eval($("#scriptTags").html());
    });
</script>
