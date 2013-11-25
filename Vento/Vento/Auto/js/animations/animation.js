

//FEATURE TITLE//



$( document ).ready(function() {
	defineTweens("equipamiento");
});



function defineTweens(feature) {

}

//FUNCTIONS//

function featureTitleIn(feature){
	var featureTitle_In = new TimelineMax();
	console.log("featureTitleIn");
	/////////////////TITLE//////////////////////
	var titleMaskCont = $("#"+feature+" .titleMaskCont");
	var titleMask = $("#"+feature+" .titleMask");
	var title = $("#"+feature+" .title");

	var subtitle = $("#"+feature+" .subtitle");
	var description = $("#"+feature+" .description");

	var knowMore = $("#"+feature+" .knowMore");
	var knowMoreText = $("#"+feature+" p.knowMoreText");

	featureTitle_In.add("in", 0);

	//IN
	featureTitle_In.fromTo(titleMaskCont, .35, {top: 30}, {top: 0, ease:"Cubic.easeOut"}, "in" );
	featureTitle_In.fromTo(titleMask, .35, {height: 0, top: 109}, {height: 109, top: 0, ease:"Cubic.easeOut"}, "in" );
	featureTitle_In.fromTo(title, .35, {top: -109}, {top: 0, ease:"Cubic.easeOut"}, "in" );

	featureTitle_In.fromTo(subtitle, .01, {opacity: 0}, {opacity: 1}, "in+=.15" );
	featureTitle_In.fromTo(subtitle, .155, {top: 20}, {top: 0, ease:"Cubic.easeOut"}, "in+=.15" );

	featureTitle_In.fromTo(description, .01, {opacity: 0}, {opacity: 1}, "in+=.25" );
	featureTitle_In.fromTo(description, .25, {top: 20}, {top: 0, ease:"Cubic.easeOut"}, "in+=.25" );

	featureTitle_In.fromTo(knowMoreText, .01, {scaleX:1, scaleY:1}, {scaleX:1, scaleY:1}, "in+=.5" );
	featureTitle_In.fromTo(knowMoreText, .01, {opacity: 0}, {opacity: 1}, "in+=.5" );
	featureTitle_In.fromTo(knowMore, .13, {scaleX:1, scaleY:1}, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"}, "in+=.5" );
	featureTitle_In.fromTo(knowMore, .1, {scaleX:1.121, scaleY:1.121}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "in+=.63" );
	featureTitle_In.fromTo(knowMore, .01, {opacity: 0}, {opacity: 1}, .5 );

}


function featureTitleOutWH(feature){
	console.log("featureTitleOutWH");
	var featureTitle_Out = new TimelineMax({onComplete: function(){

	}});

	/////////////////TITLE//////////////////////
	var titleMaskCont = $("#"+feature+" .titleMaskCont");
	var titleMask = $("#"+feature+" .titleMask");
	var title = $("#"+feature+" .title");

	var subtitle = $("#"+feature+" .subtitle");
	var description = $("#"+feature+" .description");

	var knowMore = $("#"+feature+" .knowMore");
	var knowMoreText = $("#"+feature+" p.knowMoreText");

	featureTitle_Out.add("out", 0);

	//OUT
	featureTitle_Out.to(knowMoreText, .13, {scaleX:.6, scaleY:.6, ease:"Sine.easeIn"}, 0 );
	featureTitle_Out.to(knowMoreText, .01, {opacity: 0}, .13 );
	featureTitle_Out.to(knowMore, .13, {scaleX:.648, scaleY:.648, ease:"Sine.easeIn"}, 0 );
	featureTitle_Out.to(knowMore, .01, {opacity: 0}, .13 );

	featureTitle_Out.to(titleMaskCont, .23,{top: -30, ease:"Cubic.easeIn"}, .18 );
	featureTitle_Out.to(titleMask, .23, {height: 0, ease:"Cubic.easeIn"}, .18 );

	featureTitle_Out.to(subtitle, .13, {top: -20, ease:"Cubic.easeIn"}, .25 );
	featureTitle_Out.to(subtitle, .01, {opacity: 0}, .25+.13);


	featureTitle_Out.to(description, .13, {top: -20, ease:"Cubic.easeIn"}, .32 );
	featureTitle_Out.to(description, .01, {opacity: 0}, .32+.13 );
}


function featureTitleOut(feature){
	console.log("featureTitleOut");
	var featureTitle_Out = new TimelineMax({onComplete: function(){
		hotspotsBtnsOpen();
	}});

	/////////////////TITLE//////////////////////
	var titleMaskCont = $("#"+feature+" .titleMaskCont");
	var titleMask = $("#"+feature+" .titleMask");
	var title = $("#"+feature+" .title");

	var subtitle = $("#"+feature+" .subtitle");
	var description = $("#"+feature+" .description");

	var knowMore = $("#"+feature+" .knowMore");
	var knowMoreText = $("#"+feature+" p.knowMoreText");

	featureTitle_Out.add("out", 0);

	//OUT
	featureTitle_Out.to(knowMoreText, .13, {scaleX:.6, scaleY:.6, ease:"Sine.easeIn"}, 0 );
	featureTitle_Out.to(knowMoreText, .01, {opacity: 0}, .13 );
	featureTitle_Out.to(knowMore, .13, {scaleX:.648, scaleY:.648, ease:"Sine.easeIn"}, 0 );
	featureTitle_Out.to(knowMore, .01, {opacity: 0}, .13 );

	featureTitle_Out.to(titleMaskCont, .23,{top: -30, ease:"Cubic.easeIn"}, .18 );
	featureTitle_Out.to(titleMask, .23, {height: 0, ease:"Cubic.easeIn"}, .18 );

	featureTitle_Out.to(subtitle, .13, {top: -20, ease:"Cubic.easeIn"}, .25 );
	featureTitle_Out.to(subtitle, .01, {opacity: 0}, .25+.13);


	featureTitle_Out.to(description, .13, {top: -20, ease:"Cubic.easeIn"}, .32 );
	featureTitle_Out.to(description, .01, {opacity: 0}, .32+.13 );
}
function knowMoreTextBtnIn(feature){
	var featureTitle_KnowMoreTextBtn_In = new TimelineMax({paused: true});
	var knowMore = $("#"+feature+" .knowMore");
	featureTitle_KnowMoreTextBtn_In.to(knowMore, .13, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"}, 0 );
	featureTitle_KnowMoreTextBtn_In.play(0);
}
function knowMoreTextBtnOut(feature){
	var featureTitle_knowMoreTextBtn_Out = new TimelineMax({paused: true});
	var knowMore = $("#"+feature+" .knowMore");
	featureTitle_knowMoreTextBtn_Out.to(knowMore, .13, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, 0 );
	featureTitle_knowMoreTextBtn_Out.play(0);
}

function colorsLinkBtnIn(){
	var interface_colorsLinkBtn_In = new TimelineMax({paused: true});
	var colorsLink = $(".colorsLink");
	//ColorsLink
	//In
	interface_colorsLinkBtn_In.to(colorsLink, .13, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"}, 0 );


	interface_colorsLinkBtn_In.play(0);
}
function colorsLinkBtnOut(){
	var interface_colorsLinkBtn_Out = new TimelineMax({paused: true});
	var colorsLink = $(".colorsLink");

//Out
	interface_colorsLinkBtn_Out.to(colorsLink, .13, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, 0 );
interface_colorsLinkBtn_Out.play(0);
}
function fbPageBtnIn(){
	var interface_fbPageBtn_In = new TimelineMax({paused: true});
	var fbPageBack = $(".fbPageBack");
	interface_fbPageBtn_In.to(fbPageBack, .13, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"}, 0 );
	interface_fbPageBtn_In.play(0);

}
function fbPageBtnOut(){
	var interface_fbPageBtn_Out = new TimelineMax({paused: true});
	var fbPageBack = $(".fbPageBack");
	interface_fbPageBtn_Out.to(fbPageBack, .13, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, 0 );
	interface_fbPageBtn_Out.play(0);
}
function twPageBtnIn(){
	var interface_twPageBtn_In = new TimelineMax({paused: true});
	var twPageBack = $(".twPageBack");
	interface_twPageBtn_In.to(twPageBack, .13, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"}, 0 );
	interface_twPageBtn_In.play(0);
}
function twPageBtnOut(){
	var interface_twPageBtn_Out = new TimelineMax({paused: true});
	var twPageBack = $(".twPageBack");
	interface_twPageBtn_Out.to(twPageBack, .13, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, 0 );
	interface_twPageBtn_Out.play(0);
}




//INTERFACE//

function interfaceIn(){

	var interface_In = new TimelineMax({paused: true});

	var colorsLink = $(".colorsLink");
	var colorscoche = $(".colorscoche");
	var colorsText = $("p.colorsText");

	var fbPageBack = $(".fbPageBack");
	var fbPageIcon = $(".fbPageIcon");

	var twPageBack = $(".twPageBack");
	var twPageIcon = $(".twPageIcon");

	var videoProgressCont = $(".videoProgressCont");
	var videouno = $("#videouno");
	var videodos = $("#videodos");
	var videotres = $("#videotres");
	var videocuatro = $("#videocuatro");
	var videocinco = $("#videocinco");
	var videoseis = $("#videoseis");

	interface_In.add("init", 0);
	interface_In.add("fb", .18);
	interface_In.add("tw", .36);
	interface_In.add("timeline", .7);
	interface_In.add("videouno", 1.05);
	interface_In.add("videodos", .8);
	interface_In.add("videotres", .7);
	interface_In.add("videocuatro", .75);
	interface_In.add("videocinco", .8);
	interface_In.add("videoseis", 1.05);

	interface_In.fromTo(colorsText, .01, {opacity: 0}, {opacity: 1},  "init" );
	interface_In.fromTo(colorscoche, .01, {opacity: 0}, {opacity: 1},  "init" );
	interface_In.fromTo(colorsLink, .01, {opacity: 0}, {opacity: 1},  "init" );
	interface_In.fromTo(colorsLink, .13, {scaleX:1, scaleY:1}, {scaleX:1.121, scaleY:1.121, ease:"Sine.easeOut"},  "init" );
	interface_In.fromTo(colorsLink, .1, {scaleX:1.121, scaleY:1.121}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"},  "init+=.13");

	interface_In.fromTo(fbPageIcon, .01, {opacity: 0}, {opacity: 1},  "fb" );
	interface_In.fromTo(fbPageBack, .01, {opacity: 0}, {opacity: 1},  "fb" );
	interface_In.fromTo(fbPageBack, .13, {scaleX:1, scaleY:1}, {scaleX:1.2, scaleY:1.2, ease:"Sine.easeOut"},  "fb" );
	interface_In.fromTo(fbPageBack, .1, {scaleX:1.2, scaleY:1.2}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"},  "fb+=.13");

	interface_In.fromTo(twPageIcon, .01, {opacity: 0}, {opacity: 1},  "tw" );
	interface_In.fromTo(twPageBack, .01, {opacity: 0}, {opacity: 1},  "tw" );
	interface_In.fromTo(twPageBack, .13, {scaleX:1, scaleY:1}, {scaleX:1.2, scaleY:1.2, ease:"Sine.easeOut"},  "tw" );
	interface_In.fromTo(twPageBack, .1, {scaleX:1.2, scaleY:1.2}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"},  "tw+=.13");

	//TIMELINE//
	interface_In.fromTo(videoProgressCont, .01, {opacity: 0}, {opacity: 1}, "timeline+=.0");
	interface_In.fromTo(videoProgressCont, .49, {scaleX:.09}, {scaleX:1, ease:"Cubic.easeOut"},  "timeline+=.0");
	//btn1//
	interface_In.fromTo(videouno, .01, {opacity: 0}, {opacity: 1}, "videouno");
	interface_In.fromTo(videouno, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videouno');
	//btn2//
	interface_In.fromTo(videodos, .01, {opacity: 0}, {opacity: 1}, "videodos");
	interface_In.fromTo(videodos, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videodos');
	//btn3//
	interface_In.fromTo(videotres, .01, {opacity: 0}, {opacity: 1}, "videotres");
	interface_In.fromTo(videotres, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videotres');
	//btn4//
	interface_In.fromTo(videocuatro, .01, {opacity: 0}, {opacity: 1}, "videocuatro");
	interface_In.fromTo(videocuatro, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videocuatro');
	//btn5//
	interface_In.fromTo(videocinco, .01, {opacity: 0}, {opacity: 1}, "videocinco");
	interface_In.fromTo(videocinco, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videocinco');
	//btn6//
	interface_In.fromTo(videoseis, .01, {opacity: 0}, {opacity: 1}, "videoseis");
	interface_In.fromTo(videoseis, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'videoseis');

	interface_In.play(0);

}


//TIMELINE//
function timelineVideoPointActiveIn(feature){
	var timeline_videoPointActive_In = new TimelineMax();
	var timeline_videoPointActive = $("#"+feature+" .videoPointActive");

	timeline_videoPointActive_In.fromTo(timeline_videoPointActive, .01, {opacity: 0}, {opacity: 1}, 0);
	timeline_videoPointActive_In.fromTo(timeline_videoPointActive, .23, {scaleX:1.27, scaleY:1.27}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, 0);
}

//GENERIC BUTTONS//
//Over//
function hotspotOpenedBtnOver(feature){
	var hotspotBtn_In = new TimelineMax();

	var hotspotbtnBack = $("#"+feature+" .hotspotbtnBack");

	hotspotBtn_In.fromTo(hotspotbtnBack, .13, {scaleX: 1, scaleY:1}, {scaleX: 1.121, scaleY:1.121, ease:"Cubic.easeOut"}, 0);
}
//Out//
function hotspotOpenedBtnOut(feature){
	var hotspotBtn_Out = new TimelineMax();

	var hotspotbtnBack = $("#"+feature+" .hotspotbtnBack");

	hotspotBtn_Out.fromTo(hotspotbtnBack, .13, {scaleX:1.121, scaleY:1.121}, {scaleX:1, scaleY:1, ease:"Cubic.easeOut"}, 0);
}



//HOTSPOTS//

function hotspotBtnOver(feature){
	var hotspotBtn_In = new TimelineMax();
	var hotspotIdle = $("#"+feature+" .hotspotIdle");
	var hotspotOver = $("#"+feature+" .hotspotOver");

	hotspotBtn_In.fromTo(hotspotOver, .01, {opacity: 0}, {opacity: 1}, 0);
	hotspotBtn_In.fromTo(hotspotOver, .26, {scaleX: .3, scaleY:.3}, {scaleX: 1, scaleY:1, ease:"Cubic.easeOut"}, 0);
}

function hotspotBtnOut(feature){
	var hotspotBtn_Out = new TimelineMax();
	var hotspotIdle = $("#"+feature+" .hotspotIdle");
	var hotspotOver = $("#"+feature+" .hotspotOver");

	//Over
	hotspotBtn_Out.fromTo(hotspotOver, .01, {opacity: 1}, {opacity: 0}, .26);
	hotspotBtn_Out.fromTo(hotspotOver, .26, {scaleX:1, scaleY:1}, {scaleX:.3, scaleY:.3, ease:"Cubic.easeOut"}, 0);
}

//HOTSPOTS INFO//

function hotspotInfoOpen(feature){
	var hotspotInfo_Open = new TimelineMax();
	var hotspotContent = $("#"+feature+" .hotspotContent");

	// hotspotInfo_Open.fromTo(hotspotContent, .01, {opacity: 0}, {opacity: 1}, "init");
	hotspotInfo_Open.fromTo(hotspotContent, .13, {scaleX:1.185, scaleY:1.185}, {scaleX:.95, scaleY:.95, ease:"Cubic.easeOut"}, 0);
	hotspotInfo_Open.fromTo(hotspotContent, .13, {scaleX:.95, scaleY:.95}, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, .13);
}

//HOTSPOTS BTNS OPEN//
function hotspotsBtnsOpen(feature){
	$("#features .hotspotCont").css({display: "block"})
	var hotspotsBtns_Open = new TimelineMax();
	// var hotuno = $("#hotuno");
	// var hotdos = $("#hotdos");
	// var hottres = $("#hottres");

	var hotunoIdle = $("#hotuno .hotspotIdle");
	var hotunoOver = $("#hotuno .hotspotOver");
	var hotdosIdle = $("#hotdos .hotspotIdle");
	var hotdosOver = $("#hotdos .hotspotOver");
	var hottresIdle = $("#hottres .hotspotIdle");
	var hottresOver = $("#hottres .hotspotOver");

	// var hotcuatro = $("#hotcuatro");
	hotspotsBtns_Open.add("btn1", 0);
	hotspotsBtns_Open.add("btn2", .09);
	hotspotsBtns_Open.add("btn3", .18);
	hotspotsBtns_Open.add("btn4", .27);
	//hotuno//
	hotspotsBtns_Open.fromTo(hotunoIdle, .01, {opacity: 0}, {opacity: 1}, "btn1");
	hotspotsBtns_Open.fromTo(hotunoIdle, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn1');
	hotspotsBtns_Open.fromTo(hotunoOver, .01, {opacity: 0}, {opacity: 0}, "btn1");
	// hotspotsBtns_Open.fromTo(hotunoOver, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn1');

	//hotdos//
	hotspotsBtns_Open.fromTo(hotdosIdle, .01, {opacity: 0}, {opacity: 1}, "btn2");
	hotspotsBtns_Open.fromTo(hotdosIdle, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn2');
	hotspotsBtns_Open.fromTo(hotdosOver, .01, {opacity: 0}, {opacity: 0}, "btn2");
	// hotspotsBtns_Open.fromTo(hotdosOver, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn2');

	//hottres//
	hotspotsBtns_Open.fromTo(hottresIdle, .01, {opacity: 0}, {opacity: 1}, "btn3");
	hotspotsBtns_Open.fromTo(hottresIdle, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn3');
	hotspotsBtns_Open.fromTo(hottresOver, .01, {opacity: 0}, {opacity: 0}, "btn3");
	// hotspotsBtns_Open.fromTo(hottresOver, .23, {scaleX:.4, scaleY:.4}, {scaleX:1, scaleY:1, ease:"cubic.easeOut"}, 'btn3');

}

//HOTSPOTS BTNS CLOSE//
function hotspotsBtnsClose(feature){
	var hotspotsBtns_Close = new TimelineMax({onComplete: function(){
		// $("#features .hotspotCont").css({display: "none"})
	}});
	var hotunoIdle = $("#hotuno .hotspotIdle");
	var hotunoOver = $("#hotuno .hotspotOver");
	var hotdosIdle = $("#hotdos .hotspotIdle");
	var hotdosOver = $("#hotdos .hotspotOver");
	var hottresIdle = $("#hottres .hotspotIdle");
	var hottresOver = $("#hottres .hotspotOver");
	// var hotdos = $("#hotdos");
	// var hottres = $("#hottres");
	// var hotcuatro = $("#hotcuatro");
	hotspotsBtns_Close.add("btn1", 0);
	hotspotsBtns_Close.add("btn2", .09);
	hotspotsBtns_Close.add("btn3", .18);
	hotspotsBtns_Close.add("btn4", .27);
	//hotuno//
	hotspotsBtns_Close.fromTo(hotunoIdle, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn1');
	hotspotsBtns_Close.fromTo(hotunoIdle, .01, {opacity: 1}, {opacity: 0}, "btn1+=.23");
	hotspotsBtns_Close.fromTo(hotunoOver, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn1');
	hotspotsBtns_Close.fromTo(hotunoOver, .01, {opacity: 1}, {opacity: 0}, "btn1+=.23");

	hotspotsBtns_Close.fromTo(hotdosIdle, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn2');
	hotspotsBtns_Close.fromTo(hotdosIdle, .01, {opacity: 1}, {opacity: 0}, "btn2+=.23");
	hotspotsBtns_Close.fromTo(hotdosOver, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn2');
	hotspotsBtns_Close.fromTo(hotdosOver, .01, {opacity: 1}, {opacity: 0}, "btn2+=.23");

	hotspotsBtns_Close.fromTo(hottresIdle, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn3');
	hotspotsBtns_Close.fromTo(hottresIdle, .01, {opacity: 1}, {opacity: 0}, "btn3+=.23");
	hotspotsBtns_Close.fromTo(hottresOver, .23, {scaleX:1, scaleY:1}, {scaleX:.4, scaleY:.4, ease:"cubic.easeOut"}, 'btn3');
	hotspotsBtns_Close.fromTo(hottresOver, .01, {opacity: 1}, {opacity: 0}, "btn3+=.23");
	//hotdos//

}


//HOTSPOTS OPEN//

function hotspotOpen(feature){
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
	var hotspotOver = $("#"+feature+" .hotspotOver");

	//Over

	hotspot_Open.fromTo(hotspotOver, .01, {opacity: 0}, {opacity: 1}, 0);
	hotspot_Open.fromTo(hotspotOver, .01, {scaleX: 1, scaleY:1}, {scaleX: .3, scaleY:.3}, 0);

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
function hotspotClose(feature){
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
	var hotspotOpen = $("#"+feature+" .hotspotOpen");
	var hotspotCloseBack = $("#"+feature+" .hotspotCloseBack");
	var hotspotCloseIcon = $("#"+feature+" .hotspotCloseIcon");
	var hotspotInfoBack = $("#"+feature+" .hotspotInfoBack");
	var hotspotInfoIcon = $("#"+feature+" .hotspotInfoIcon");
	var hotspotImageBack = $("#"+feature+" .hotspotImageBack");
	var hotspotImageIcon = $("#"+feature+" .hotspotImageIcon");
	var hotspotVideoBack = $("#"+feature+" .hotspotVideoBack");
	var hotspotVideoIcon = $("#"+feature+" .hotspotVideoIcon");

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
}

///HOTSPOTS PHOTO DETAIL///

function fullScreenPhotoIn(){
	$("#pictureGalleryCont").css({display: "block"});
	var fullScreenPhoto_In = new TimelineMax();

	/////////////////TITLE//////////////////////
	var pictureGalleryCont = $("#pictureGalleryCont");
	var pictureGallery = $(".pictureGallery");

	fullScreenPhoto_In.add("in", 0);

	fullScreenPhoto_In.fromTo(pictureGalleryCont, .3, {height: "10%", top:"90%"}, {height: "100%", top:"0%", ease:"Cubic.easeOut"}, "in" );

	fullScreenPhoto_In.fromTo(pictureGallery, .3, {top: 40}, {top:-14, ease:"Cubic.easeOut"}, "in" );
	fullScreenPhoto_In.fromTo(pictureGallery, .16, {top: -14}, {top: 0, ease:"Sine.easeOut"}, "in+=.3" );
}

function fullScreenPhotoOut(){
	var fullScreenPhoto_Out = new TimelineMax({onComplete:function(){
		$("#pictureGalleryCont").css({display: "none"});
	}});

	/////////////////TITLE//////////////////////
	var pictureGalleryCont = $("#pictureGalleryCont");
	var pictureGallery = $(".pictureGallery");

	fullScreenPhoto_Out.add("in", 0);

	fullScreenPhoto_Out.fromTo(pictureGalleryCont, .25, {height: "100%", top:"0%"}, {height: "0%", top:"100%", ease:"Cubic.easeIn"}, "in" );
	fullScreenPhoto_Out.fromTo(pictureGallery, .25, {top: 0}, {top: 40, ease:"Cubic.easeIn"}, "in" );

}