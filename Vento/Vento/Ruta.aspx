<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ruta.aspx.cs" Inherits="Vento.Ruta" %>

    <script>

    $(document).ready(function() {
        $('html, footer, section, body').addClass('rutas');
    });
    </script>
    <form id="form1" runat="server">
    <div>
	    <div class="route">
    		<div class="main-route">
            	<div class="close">
                	<a href="/"><div class="btn"></div></a>
                </div>
                <div class="main-map">
                	<div class="map"></div>
                </div>
                <div class="main-map-mobile">
                	<div class="holder"></div>
                	<div class="map"></div>
                    <div class="map2"></div>
                </div>
                <div class="main-content" style="height: 1px; ">
                	<div class="title"></div>
                    <div class="detail">
                        <div class="line1">
                            <span class="d1">1<span class="e1">-</span></span> 
                            <span class="d2">Puebla<span class="e1">:</span> </span>
                            <span class="d3">Escenario de cañadas y serranías</span>
                        </div>
                        <div class="line2">
                            <span class="d1">2<span class="e1">-</span></span>
                            <span class="d2">Guadalajara<span class="e1">:</span> </span>
                            <span class="d3">El auténtico jaripeo</span>
                        </div>
                        <div class="line3">
                            <span class="d1">3<span class="e1">-</span></span>
                            <span class="d2">Mazatlán<span class="e1">:</span> </span>
                            <span class="d3">Un océano de estrellas</span>
                        </div>
                        <div class="line4">
                            <span class="d1">4<span class="e1">-</span></span>
                            <span class="d2">La Paz<span class="e1">:</span> </span>
                            <span class="d3">Armonía en equilibrio</span>
                        </div>
                        <div class="line5">
                            <span class="d1">5<span class="e1">-</span></span>
                            <span class="d2">Los Cabos<span class="e1">:</span> </span>
                            <span class="d3">A la orilla de la tierra</span>
                        </div>
                    </div>
                </div>
        	</div>
		</div>
    </div>
    </form>