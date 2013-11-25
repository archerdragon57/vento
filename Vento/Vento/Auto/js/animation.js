
var featureTitle_In = new TimelineMax();

// .titleCont R
// 	.titleMaskCont A
// 		.titleMask A
// 			%p.title A


function featureTitleIn(feature){
	var titleMaskCont = $("#"+feature+" .titleMaskCont");
	var titleMask = $("#"+feature+" .titleMask");
	var title = $("#"+feature+" .title");


	//timeline.to(element, time, {property: value})
	featureTitle_In.from(titleMaskCont, 0.7, {height: 0, transformOrigin: "50% 100%"})
}
