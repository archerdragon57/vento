<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ranking.aspx.cs" Inherits="Vento.Viaje.Ranking" %>
<div class='rankingsCont sidebarCont'>
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
      <div class='rankings'>
        <div class='firstCont'>
          <div class='imgCont'>
            <img alt='' id='firstplaceImg' runat='server' src=''>
          </div>
          <a class='backBtn' currentid='' href='#' id='backRanking' request='Auto.aspx' runat='server'>
            <p>
              Regresar
            </p>
            <span></span>
          </a>
          <div class='placeOne'>
            <p>
              1
            </p>
            <div class='votes'>
              <p class='votesNumber' id='votesFirst' runat='server'>
                1500
              </p>
              <p class='votesTitle'>
                votos
              </p>
            </div>
          </div>
          <p class='personName' id='firstName' runat='server'>
            Esteban Ramirez
          </p>
        </div>
        <div class='secondCont'>
          <div class='imgCont'>
            <img alt='' id='secondplaceImg' runat='server' src=''>
          </div>
          <div class='placeTwo'>
            <p>
              2
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesSecond' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='secondCont'>
          <div class='imgCont'>
            <img alt='' id='thirdplaceImg' runat='server' src=''>
          </div>
          <div class='placeTwo'>
            <p>
              3
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesThird' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='fourthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              4
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesFourth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont middle'>
          <div class='imgCont'>
            <img alt='' id='fifthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              5
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesFifth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='sixthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              6
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesSixth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='seventhplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              7
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesSeventh' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont middle'>
          <div class='imgCont'>
            <img alt='' id='eighthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              8
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesEighth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='ninethplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              9
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesNineth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='tenthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              10
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesTenth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont middle'>
          <div class='imgCont'>
            <img alt='' id='eleventhplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              11
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesEleventh' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
        <div class='thirdCont'>
          <div class='imgCont'>
            <img alt='' id='twelfthplaceImg' runat='server' src=''>
          </div>
          <div class='placeThree'>
            <p>
              12
            </p>
          </div>
          <div class='votes'>
            <p class='votesNumber' id='votesTwelfth' runat='server'>
              950
              <span>
                Votos
              </span>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src='js/sidebar.js'></script>
<script>
  sideMenu("#backRanking");
  $(".backBtn").on("click", function(){
  var menuclick = "#menuRight #vento"+$(this).attr("currentid");
  $(menuclick).addClass("active");
  });
</script>
