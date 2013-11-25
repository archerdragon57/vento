<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auto.aspx.cs" Inherits="Vento.Viaje.InfoAuto" %>
<div class='autoContent sidebarCont'>
  <div class='cerrar'></div>
  <div class='scrollbar'>
    <div class='track'>
      <div class='thumb'>
        <div class='end'></div>
      </div>
    </div>
  </div>
  <div class='viewport'>
    <div class='overview'>
      <div class='titleAnimation'>
        <p id='hashcoche' runat='server'>
          <span>#</span>
          VentoDos
        </p>
        <div class='animation'></div>
      </div>
      <div class='descriptionAuto'>
        <p class='title' id='titleAuto' runat='server'>
          Lorem Ipsum
        </p>
        <p class='description' id='descriptionAuto' runat='server'>
          Lorem ipsum Aliquip sunt dolor irure non ex cillum magna est nisi amet qui laborum aliqua dolore nulla amet
          <span>
            anim ut anim dolor
          </span>
          non minim ad fugiat dolor deserunt mollit nisi aliquip nisi aute sit.
        </p>
      </div>
      <div class='personsAuto'>
        <p class='titlePersons'>
          Integrantes
        </p>
        <a class='showRank' currentid='' href='#' request='Ranking.aspx'>
          <p class='showrank-txt'>
            ver ranking
          </p>
          <span></span>
        </a>
      </div>
      <div class='personsPictures'>
        <a class='personPicture' currentid='1' href='#' id='personProfile1' request='Participante.aspx' runat='server'>
          <img alt='' id='person1' runat='server' src=''>
          <span>
            <p id='personName1' runat='server'>
              @persona1
            </p>
          </span>
        </a>
        <a class='personPicture' currentid='2' href='#' id='personProfile2' request='Participante.aspx' runat='server'>
          <img alt='' id='person2' runat='server' src=''>
          <span>
            <p id='personName2' runat='server'>
              @persona2
            </p>
          </span>
        </a>
        <a class='personPicture' currentid='3' href='#' id='personProfile3' request='Participante.aspx' runat='server'>
          <img alt='' id='person3' runat='server' src=''>
          <span>
            <p id='personName3' runat='server'>
              @persona3
            </p>
          </span>
        </a>
        <a class='personPicture' currentid='4' href='#' id='personProfile4' request='Participante.aspx' runat='server'>
          <img alt='' id='person4' runat='server' src=''>
          <span>
            <p id='personName4' runat='server'>
              @persona4
            </p>
          </span>
        </a>
      </div>
    </div>
  </div>
</div>
<div id='scriptTags' runat='server'></div>
<script src='js/sidebar.js'></script>
<script src='js/auto.js'></script>
