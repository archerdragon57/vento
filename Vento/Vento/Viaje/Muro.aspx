<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Muro.aspx.cs" Inherits="Vento.Viaje.Muro" %>
<div class='muroContent sidebarCont'>
  <div class='cerrar'></div>
  <div class='scrollbar'>
    <div class='track'>
      <div class='thumb'>
        <div class='end'></div>
      </div>
    </div>
  </div>
  <div class='viewport'>
    <div class='overview' id='muroOverview' runat='server'>
      <div class='twitterModule'>
        <p class='twTitle'>
          @Esteban_R
        </p>
        <p class='twText'>
          Aún puedes inscribirte para ser de los primeros en manejar Nuevo Vento y recorrer La Ruta de Las Ideas.
          <span>
            http://nuevovento.mx/
          </span>
        </p>
        <a class='reTwbtn' href='#'></a>
      </div>
      <div class='instagramModule'>
        <div class='instagramPhotoCont'>
          <img alt='' class='photo' id='profilePic' runat='server' src=''>
          <span>
            <div class='userCont'>
              <img alt='' class='userPhoto' src=''>
              <p class='user'>
                VentoUno
              </p>
            </div>
            <p class='caption'>
              Veto está de mi lado
            </p>
            <div class='likesCont'>
              <div class='likeIcon'></div>
              <p class='likesCount'>
                50
              </p>
            </div>
            <a class='shareLink' href='#'></a>
          </span>
        </div>
        <div class='instagramPhotoCont video'>
          <img alt='' class='photo' src=''>
          <a class='play' href='#'></a>
          <span>
            <div class='userCont'>
              <img alt='' class='userPhoto' src=''>
              <!-- %vide.userPhoto{:src => "", :alt => ""}/ -->
              <p class='user'>
                VentoUno
              </p>
            </div>
            <p class='caption'>
              Veto está de mi lado
            </p>
            <div class='likesCont'>
              <div class='likeIcon'></div>
              <p class='likesCount'>
                50
              </p>
            </div>
            <a class='shareLink' href='#'></a>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>
<script src='js/sidebar.js'></script>
