///PIN TWITTER///

function pinInstaContIn(pin_id){
	var pinInsta_In = new TimelineMax();

	var pinInstaBack = $("#"+pin_id+" .pinInstaBack");
	var pinInstaIcon = $("#"+pin_id+" .pinInstaIcon");
	var pinInstaCont = $("#"+pin_id+" .pinInstaCont");

	pinInsta_In.add("in", 0);

	pinInsta_In.fromTo(pinInstaCont, .01, {zIndex: 1,opacity:0}, {zIndex: 10,opacity:1}, "in" );
	pinInsta_In.fromTo(pinInstaCont, .01, {opacity:0}, {opacity:1}, "in" );
	pinInsta_In.fromTo(pinInstaCont, .26, {scaleX:.2, scaleY:.16}, {scaleX:1.07, scaleY:1.07, ease:"Sine.easeOut"}, "in" );
	pinInsta_In.fromTo(pinInstaCont, .16, {scaleX:1.07, scaleY:1.07}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "in+=.26" );

	// pinInsta_In.fromTo(pinInstaBack, .29, {scaleX:1, scaleY:1}, {scaleX:1.15, scaleY:1.15, ease:"Cubic.easeOut"}, "in" );
	// pinInsta_In.fromTo(pinInstaIcon, .29, {top: 0}, {top: -3, ease:"Cubic.easeOut"}, "in" );
}

function pinInstaContOut(pin_id){
	var pinInsta_Out = new TimelineMax();

	var pinInstaBack = $("#"+pin_id+" .pinInstaBack");
	var pinInstaIcon = $("#"+pin_id+" .pinInstaIcon");
	var pinInstaCont = $("#"+pin_id+" .pinInstaCont");

	pinInsta_Out.add("in", 0);
	pinInsta_Out.add("btnOut", .29);

	pinInsta_Out.fromTo(pinInstaCont, .01, {zIndex: 10, opacity:1}, {opacity:0, zIndex: 1}, "in+=.29" );
	pinInsta_Out.fromTo(pinInstaCont, .29, {scaleX:1, scaleY:1}, {scaleX:0, scaleY:0, ease:"Cubic.easeIn"}, "in" );
	pinInsta_Out.fromTo(pinInstaCont, .01, {opacity:1}, {opacity:0}, "in+=.29" );

	pinInsta_Out.fromTo(pinInstaBack, .13, {scaleX:1.2, scaleY:1.2}, {scaleX:.95, scaleY:.95, ease:"Sine.easeOut"}, "btnOut" );
	pinInsta_Out.fromTo(pinInstaBack, .1, {scaleX:.9, scaleY:.9}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "btnOut+=.13" );
	pinInsta_Out.fromTo(pinInstaIcon, .01, {top: -3}, {top: 0, ease:"Cubic.easeOut"}, "in" );
}


function pinInstaOver(pin_id){
	var pin_Over = new TimelineMax();

	var pinInstaBack = $("#"+pin_id+" .pinInstaBack");
	var pinInstaIcon = $("#"+pin_id+" .pinInstaIcon");
	var pinInstaCont = $("#"+pin_id+" .pinInstaCont");

	pin_Over.add("in", 0);

	pin_Over.fromTo(pinInstaBack, .29, {scaleX:1, scaleY:1}, {scaleX:1.15, scaleY:1.15, ease:"Cubic.easeOut"}, "in" );
	pin_Over.fromTo(pinInstaIcon, .29, {top: 0}, {top: -3, ease:"Cubic.easeOut"}, "in" );
}

function pinInstaOut(pin_id){
	var pin_Out = new TimelineMax();

	var pinInstaBack = $("#"+pin_id+" .pinInstaBack");
	var pinInstaIcon = $("#"+pin_id+" .pinInstaIcon");
	var pinInstaCont = $("#"+pin_id+" .pinInstaCont");

	pin_Out.add("in", 0);

	pin_Out.fromTo(pinInstaBack, .13, {scaleX:1.15, scaleY:1.15}, {scaleX:1, scaleY:1, ease:"Cubic.easeOut"}, "in" );
	pin_Out.fromTo(pinInstaIcon, .13, {top: -3}, {top: 0, ease:"Cubic.easeOut"}, "in" );
}

///PIN TWITTER///

function pinTwitContIn(pin_id){

	var pinTwit_In = new TimelineMax();

	var pinTwitBack = $("#"+pin_id+" .pinTwitBack");
	var pinTwitIcon = $("#"+pin_id+" .pinTwitIcon");
	var pinTwitCont = $("#"+pin_id+" .pinTwitCont");

	pinTwit_In.add("in", 0);

	pinTwit_In.fromTo(pinTwitCont, .01, {zIndex: 1,opacity:0}, {zIndex: 10,opacity:1}, "in" );
	pinTwit_In.fromTo(pinTwitCont, .26, {scaleX:.182, scaleY:.239}, {scaleX:1.07, scaleY:1.07, ease:"Sine.easeOut"}, "in" );
	pinTwit_In.fromTo(pinTwitCont, .16, {scaleX:1.07, scaleY:1.07}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "in+=.26" );

	// pinTwit_In.fromTo(pinTwitBack, .29, {scaleX:1, scaleY:1}, {scaleX:1.15, scaleY:1.15, ease:"Cubic.easeOut"}, "in" );
	// pinTwit_In.fromTo(pinTwitIcon, .29, {top: 0}, {top: -3, ease:"Cubic.easeOut"}, "in" );
}

function pinTwitContOut(pin_id){
	var pinTwit_Out = new TimelineMax();

	var pinTwitBack = $("#"+pin_id+" .pinTwitBack");
	var pinTwitIcon = $("#"+pin_id+" .pinTwitIcon");
	var pinTwitCont = $("#"+pin_id+" .pinTwitCont");

	pinTwit_Out.add("in", 0);
	pinTwit_Out.add("btnOut", .29);

	pinTwit_Out.fromTo(pinTwitCont, .29, {scaleX:1, scaleY:1}, {scaleX:0, scaleY:0, ease:"Cubic.easeIn"}, "in" );
	pinTwit_Out.fromTo(pinTwitCont, .01, {zIndex: 10, opacity:1}, {opacity:0, zIndex: 1}, "in+=.29" );

	pinTwit_Out.fromTo(pinTwitBack, .13, {scaleX:1.2, scaleY:1.2}, {scaleX:.95, scaleY:.95, ease:"Sine.easeOut"}, "btnOut" );
	pinTwit_Out.fromTo(pinTwitBack, .1, {scaleX:.9, scaleY:.9}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "btnOut+=.13" );
	pinTwit_Out.fromTo(pinTwitIcon, .01, {top: -3}, {top: 0, ease:"Cubic.easeOut"}, "in" );
}


function pinTwitOver(pin_id){
	var pin_Over = new TimelineMax();

	var pinTwitBack = $("#"+pin_id+" .pinTwitBack");
	var pinTwitIcon = $("#"+pin_id+" .pinTwitIcon");
	var pinTwitCont = $("#"+pin_id+" .pinTwitCont");

	pin_Over.add("in", 0);

	pin_Over.fromTo(pinTwitBack, .29, {scaleX:1, scaleY:1}, {scaleX:1.15, scaleY:1.15, ease:"Cubic.easeOut"}, "in" );
	pin_Over.fromTo(pinTwitIcon, .29, {top: 0}, {top: -3, ease:"Cubic.easeOut"}, "in" );
}

function pinTwitOut(pin_id){
	var pin_Out = new TimelineMax();

	var pinTwitBack = $("#"+pin_id+" .pinTwitBack");
	var pinTwitIcon = $("#"+pin_id+" .pinTwitIcon");
	var pinTwitCont = $("#"+pin_id+" .pinTwitCont");

	pin_Out.add("in", 0);

	pin_Out.fromTo(pinTwitBack, .13, {scaleX:1.15, scaleY:1.15}, {scaleX:1, scaleY:1, ease:"Cubic.easeOut"}, "in" );
	pin_Out.fromTo(pinTwitIcon, .13, {top: -3}, {top: 0, ease:"Cubic.easeOut"}, "in" );
}

///ANIMACIÓN DE MAPA////

function mapAnimatedIn(anim_id) {
	var animated = $("#"+anim_id+" .animated");

	pinTwit_In.fromTo(animated, .01, {opacity:0}, {opacity:1}, "in" );
	pinTwit_In.fromTo(animated, .26, {scaleX:.3, scaleY:.3}, {scaleX:1, scaleY:1, ease:"Cubic.easeOut"}, "in" );
}

//HOTSPOTS//

function hotspotMapOpen(feature){
	$("#"+feature+" .hotspotOpenContainer").css({visibility: "visible"})
	
	var hotspot_Open = new TimelineMax();
	hotspot_Open.add("init", 0);
	hotspot_Open.add("button1", .29);
	hotspot_Open.add("button2", .42);
	hotspot_Open.add("button3", .55);
	hotspot_Open.add("button4", .68);
	var hotspotOpen = $("#"+feature+" .hotspotOpen");
	var hotspotCloseBack = $("#"+feature+" .hotspotCloseBack");
	var hotspotCloseIcon = $("#"+feature+" .hotspotCloseIcon");
	var hotspotInfoBack = $("#"+feature+" .hotspotInfoBack");
	var hotspotInfoIcon = $("#"+feature+" .hotspotInfoIcon");
	var hotspotImageBack = $("#"+feature+" .hotspotImageBack");
	var hotspotImageIcon = $("#"+feature+" .hotspotImageIcon");
	var hotspotVideoBack = $("#"+feature+" .hotspotVideoBack");
	var hotspotVideoIcon = $("#"+feature+" .hotspotVideoIcon");

	console.log("hotspotMapOpen")

	//Over
	hotspot_Open.fromTo(hotspotOpen, .01, {opacity: 0}, {opacity: 1}, "init");
	hotspot_Open.fromTo(hotspotOpen, .26, {scaleX:.112, scaleY:.112, rotation:-152}, {scaleX:1.07, scaleY:1.07, rotation:4.5, ease:"Sine.easeOut"}, "init");
	hotspot_Open.fromTo(hotspotOpen, .16, {scaleX:1.07, scaleY:1.07, rotation:4.5}, {scaleX:1, scaleY:1, rotation:0, ease:"Sine.easeOut"}, "init+=.26");

	hotspot_Open.fromTo(hotspotCloseBack, .01, {opacity: 0}, {opacity: 1}, "button1");
	hotspot_Open.fromTo(hotspotCloseBack, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button1");
	hotspot_Open.fromTo(hotspotCloseBack, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button1+=.23");
	hotspot_Open.fromTo(hotspotCloseIcon, .01, {opacity: 0}, {opacity: 1}, "button1");
	hotspot_Open.fromTo(hotspotCloseIcon, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button1");
	hotspot_Open.fromTo(hotspotCloseIcon, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button1+=.23");

	hotspot_Open.fromTo(hotspotInfoBack, .01, {opacity: 0}, {opacity: 1}, "button2");
	hotspot_Open.fromTo(hotspotInfoBack, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button2");
	hotspot_Open.fromTo(hotspotInfoBack, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button2+=.23");
	hotspot_Open.fromTo(hotspotInfoIcon, .01, {opacity: 0}, {opacity: 1}, "button2");
	hotspot_Open.fromTo(hotspotInfoIcon, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button2");
	hotspot_Open.fromTo(hotspotInfoIcon, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button2+=.23");

	hotspot_Open.fromTo(hotspotImageBack, .01, {opacity: 0}, {opacity: 1}, "button3");
	hotspot_Open.fromTo(hotspotImageBack, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button3");
	hotspot_Open.fromTo(hotspotImageBack, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button3+=.23");
	hotspot_Open.fromTo(hotspotImageIcon, .01, {opacity: 0}, {opacity: 1}, "button3");
	hotspot_Open.fromTo(hotspotImageIcon, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button3");
	hotspot_Open.fromTo(hotspotImageIcon, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button3+=.23");

	hotspot_Open.fromTo(hotspotVideoBack, .01, {opacity: 0}, {opacity: 1}, "button4");
	hotspot_Open.fromTo(hotspotVideoBack, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button4");
	hotspot_Open.fromTo(hotspotVideoBack, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button4+=.23");
	hotspot_Open.fromTo(hotspotVideoIcon, .01, {opacity: 0}, {opacity: 1}, "button4");
	hotspot_Open.fromTo(hotspotVideoIcon, .23, {scaleX:.3, scaleY:.3}, {scaleX:1.1, scaleY:1.1, ease:"Sine.easeOut"}, "button4");
	hotspot_Open.fromTo(hotspotVideoIcon, .13, {scaleX:1.1, scaleY:1.1}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "button4+=.23");
}

//HOTSPOTS CLOSE//
function hotspotMapClose(feature){
	var hotspot_Close = new TimelineMax({onComplete: function(){
		$("#" + feature + " .hotspotOpenContainer").css({
		  visibility: "hidden"
		});
	}});
	hotspot_Close.add("close", .06);
	hotspot_Close.add("button1", 0);
	hotspot_Close.add("button2", .09);
	hotspot_Close.add("button3", .18);
	hotspot_Close.add("button4", .27);
	hotspot_Close.add("idleBtn", "close+=.36");
	var hotspotOpen = $("#"+feature+" .hotspotOpen");
	var hotspotCloseBack = $("#"+feature+" .hotspotCloseBack");
	var hotspotCloseIcon = $("#"+feature+" .hotspotCloseIcon");
	var hotspotInfoBack = $("#"+feature+" .hotspotInfoBack");
	var hotspotInfoIcon = $("#"+feature+" .hotspotInfoIcon");
	var hotspotImageBack = $("#"+feature+" .hotspotImageBack");
	var hotspotImageIcon = $("#"+feature+" .hotspotImageIcon");
	var hotspotVideoBack = $("#"+feature+" .hotspotVideoBack");
	var hotspotVideoIcon = $("#"+feature+" .hotspotVideoIcon");
	
	var hotspotIdle = $("#"+feature+" .hotspotIdle");

	

	//Over

	hotspot_Close.fromTo(hotspotCloseBack, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button1");
	hotspot_Close.fromTo(hotspotCloseIcon, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button1");
	hotspot_Close.fromTo(hotspotCloseBack, .01, {opacity: 1}, {opacity: 0}, "button1+=.29");
	hotspot_Close.fromTo(hotspotCloseIcon, .01, {opacity: 1}, {opacity: 0}, "button1+=.29");

	hotspot_Close.fromTo(hotspotOpen, .4, {scaleX:1, scaleY:1, rotation:0}, {scaleX:.078, scaleY:.078, rotation:104, ease:"Cubic.easeIn"}, "close");
	hotspot_Close.fromTo(hotspotOpen, .01, {opacity: 1}, {opacity: 0}, "close+=.4");

	hotspot_Close.fromTo(hotspotInfoBack, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button2");
	hotspot_Close.fromTo(hotspotInfoIcon, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button2");
	hotspot_Close.fromTo(hotspotInfoBack, .01, {opacity: 1}, {opacity: 0}, "button2+=.29");
	hotspot_Close.fromTo(hotspotInfoIcon, .01, {opacity: 1}, {opacity: 0}, "button2+=.29");

	hotspot_Close.fromTo(hotspotImageBack, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button3");
	hotspot_Close.fromTo(hotspotImageIcon, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button3");
	hotspot_Close.fromTo(hotspotImageBack, .01, {opacity: 1}, {opacity: 0}, "button3+=.29");
	hotspot_Close.fromTo(hotspotImageIcon, .01, {opacity: 1}, {opacity: 0}, "button3+=.29");

	hotspot_Close.fromTo(hotspotVideoBack, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeIn"}, "button4");
	hotspot_Close.fromTo(hotspotVideoIcon, .29, {scaleX:1, scaleY:1}, {scaleX:.455, scaleY:.455, ease:"Sine.easeOut"}, "button4");
	hotspot_Close.fromTo(hotspotVideoBack, .01, {opacity: 1}, {opacity: 0}, "button4+=.29");
	hotspot_Close.fromTo(hotspotVideoIcon, .01, {opacity: 1}, {opacity: 0}, "button4+=.29");

	hotspot_Close.fromTo(hotspotIdle, .13, {scaleX:1.2, scaleY:1.2}, {scaleX:.95, scaleY:.95, ease:"Sine.easeOut"}, "idleBtn" );
	hotspot_Close.fromTo(hotspotIdle, .1, {scaleX:.9, scaleY:.9}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "idleBtn+=.13" );
}

///MAP IN/OUT////


function mapIn(){
	$("#map").css({display: "block"});
	var map_In = new TimelineMax();

	var map = $("#map");
	var mapCont2 = $(".mapCont2");

	map_In.add("in", 0);

	map_In.fromTo(map, .4, {height: "0%", top:"100%"}, {height: "100%", top:"0%", ease:"Cubic.easeOut"}, "in" );

	map_In.fromTo(mapCont2, .2, {top: 90}, {top: -7, ease:"Cubic.easeOut"}, "in" );
	map_In.fromTo(mapCont2, .13, {top: -7}, {top: 0, ease:"Sine.easeOut"}, "in+=.2" );
}

function mapOut(){
	var map_Out = new TimelineMax({onComplete:function(){
		$("#map").css({display: "none"});
	}});

	/////////////////TITLE//////////////////////

	var map = $("#map");
	var mapCont2 = $(".mapCont2");

	map_Out.add("in", 0);

	map_Out.fromTo(map, .3, {height: "100%", top:"0%"}, {height: "0%", top:"100%", ease:"Cubic.easeIn"}, "in" );
	map_Out.fromTo(mapCont2, .3, {top: 0}, {top: 90, ease:"Cubic.easeIn"}, "in" );

}
