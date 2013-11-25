function paintIn(){
	$("#paint").css({display: "block"});
	var paint_In = new TimelineMax();

	/////////////////TITLE//////////////////////

	var paintCont = $("#paint");
	var paintContAll = $(".paintContAll");

	var bgCont = $(".bgCont");
	var titleVentoMask = $(".titleVentoMask");
	var titleVento = $(".titleVento");
	var titleVentoImg = $(".titleVentoImg");
	var paintColorCont = $(".paintColorCont");
	var coche = $(".coche");
	var changePaintBack = $(".changePaintBack");
	var changePaintIcon = $(".changePaintIcon");
	var changePaintText = $(".changePaintText");
	var paintBtnIcon = $(".paintBtnIcon");
	var paintBtnBack = $(".paintBtnBack");
	// var paintBtn = $("#paintBtn");

	paint_In.add("in", 0);
	paint_In.add("title", .4);
	paint_In.add("subtitle", .55);
	paint_In.add("btnPaint", .9);
	paint_In.add("btnBack", 1.2);

	paint_In.fromTo(paintCont, .4, {height: "0%", top:"100%"}, {height: "100%", top:"0%", ease:"Cubic.easeOut"}, "in" );

	paint_In.fromTo(bgCont, .2, {top: 90}, {top: -7, ease:"Cubic.easeOut"}, "in" );
	paint_In.fromTo(bgCont, .13, {top: -7}, {top: 0, ease:"Sine.easeOut"}, "in+=.2" );

	paint_In.fromTo(coche, .6, {top: -90, left:-330}, {top:0, left:0, ease:"Quart.easeOut"}, "in" );

	paint_In.fromTo(titleVento, .35, {height: 0, top: 66}, {height: 66, top: 0, ease:"Cubic.easeOut"}, "title" );
	paint_In.fromTo(titleVentoImg, .35, {top: -66}, {top: 0, ease:"Cubic.easeOut"}, "title" );
	paint_In.fromTo(titleVentoMask, .35, {marginTop: -197}, {marginTop: -227, ease:"Cubic.easeOut"}, "title" );

	paint_In.fromTo(paintColorCont, .01, {opacity: 0}, {opacity: 1}, "subtitle" );
	paint_In.fromTo(paintColorCont, .2, {bottom: -29}, {bottom: -9, ease:"Cubic.easeOut"}, "subtitle" );

	paint_In.fromTo(changePaintText, .01, {opacity: 0}, {opacity: 1}, "btnPaint" );
	paint_In.fromTo(changePaintText, .01, {scaleX:1, scaleY:1}, {scaleX:1, scaleY:1}, "btnPaint" );
	paint_In.fromTo(changePaintIcon, .01, {opacity: 0}, {opacity: 1}, "btnPaint" );
	paint_In.fromTo(changePaintIcon, .01, {scaleX:1, scaleY:1}, {scaleX:1, scaleY:1}, "btnPaint" );
	paint_In.fromTo(changePaintBack, .01, {opacity: 0}, {opacity: 1}, "btnPaint" );
	paint_In.fromTo(changePaintBack, .13, {scaleX:1, scaleY:1}, {scaleX:1.2, scaleY:1.2, ease:"Cubic.easeOut"}, "btnPaint-=.1" );
	paint_In.to(changePaintBack, .1, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "btnPaint+=.09" );

	// paint_In.fromTo(paintBtnIcon, .01, {opacity: 0}, {opacity: 1}, "btnBack" );
	// paint_In.fromTo(paintBtnIcon, .01, {scaleX:1, scaleY:1}, {scaleX:1, scaleY:1}, "btnBack" );
	// paint_In.fromTo(paintBtnBack, .01, {opacity: 0}, {opacity: 1}, "btnBack" );
	// paint_In.fromTo(paintBtnBack, .13, {scaleX:1, scaleY:1}, {scaleX:1.2, scaleY:1.2, ease:"Cubic.easeOut"}, "btnBack-=.1" );
	// paint_In.to(paintBtnBack, .1, {scaleX:1, scaleY:1, ease:"Sine.easeOut"}, "btnBack+=.09" );

	// paint_In.fromTo(paintBtn, .01, {opacity: 0}, {opacity: 1}, 0 );
}

function paintOut(){
	$("#paint").css({display: "block"});
	var paint_Out = new TimelineMax({onComplete:function(){
		$("#paint").css({display: "none"});
	}});

	/////////////////TITLE//////////////////////

	var paintCont = $("#paint");
	var paintContAll = $(".paintContAll");

	var bgCont = $(".bgCont");
	var titleVentoMask = $(".titleVentoMask");
	var titleVento = $(".titleVento");
	var titleVentoImg = $(".titleVentoImg");
	var paintColorCont = $(".paintColorCont");
	var coche = $(".coche");
	var changePaintBack = $(".changePaintBack");
	var changePaintIcon = $(".changePaintIcon");
	var changePaintText = $(".changePaintText");
	var paintBtnIcon = $(".paintBtnIcon");
	var paintBtnBack = $(".paintBtnBack");
	// var paintBtn = $("#paintBtn");

	paint_Out.add("in", 0);
	paint_Out.add("paintBtnOut", .26);

	paint_Out.fromTo(paintCont, .3, {height: "100%", top:"0%"}, {height: "0%", top:"100%", ease:"Cubic.easeIn"}, "in" );
	paint_Out.fromTo(bgCont, .3, {top: 0}, {top: 90, ease:"Cubic.easeIn"}, "in" );

}