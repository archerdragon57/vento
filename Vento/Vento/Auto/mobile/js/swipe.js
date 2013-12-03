var IMG_WIDTH = $(window).width(),

		maxImages=6;
		speed=500,
		currentImg = 0,
		imgs = $("#sectionsCont");

		function swipeStatus(event, phase, direction, distance, fingers)
		{
			if (currentImg==5){
				$("#sectionsCont").swipe("disable");
			} else {
				$("#sectionsCont").swipe("enable");
				if( phase=="move" && (direction=="left" || direction=="right") )
				{
					var duration=0;

					if (direction == "left")
						scrollImages((IMG_WIDTH * currentImg) + distance, duration);


					else if (direction == "right")
						scrollImages((IMG_WIDTH * currentImg) - distance, duration);

				}

				//Else, cancel means snap back to the begining
				else if ( phase == "cancel")
				{
					scrollImages(IMG_WIDTH * currentImg, speed);
				}

				//Else end means the swipe was completed, so move to the next image
				else if ( phase =="end" )
				{
					if (direction == "right")
						previousImage()
					else if (direction == "left")
						nextImage()
				}
			}
			//If we are moving before swipe, and we are going L or R, then manually drag the images

				// $("#sectionsCont").swipe("enable");
				// if( phase=="move" && (direction=="left" || direction=="right") )
				// {
				// 	var duration=0;

				// 	if (direction == "left")
				// 		scrollImages((IMG_WIDTH * currentImg) + distance, duration);


				// 	else if (direction == "right")
				// 		scrollImages((IMG_WIDTH * currentImg) - distance, duration);

				// }

				// //Else, cancel means snap back to the begining
				// else if ( phase == "cancel")
				// {
				// 	scrollImages(IMG_WIDTH * currentImg, speed);
				// }

				// //Else end means the swipe was completed, so move to the next image
				// else if ( phase =="end" )
				// {
				// 	if (direction == "right")
				// 		previousImage()
				// 	else if (direction == "left")
				// 		nextImage()
				// }

		}

		function previousImage()
		{
			currentImg = Math.max(currentImg-1, 0);
			scrollImages( IMG_WIDTH * currentImg, speed);
		}

		function nextImage()
		{
			currentImg = Math.min(currentImg+1, maxImages-1);
			scrollImages( IMG_WIDTH * currentImg, speed);
		}

		/**
		 * Manually update the position of the imgs on drag
		 */
		function scrollImages(distance, duration)
		{
			// console.log(currentImg);
			// console.log(distance);
			imgs.css("-webkit-transition-duration", (duration/1000).toFixed(1) + "s");

			//inverse the number we set in the css
			var value = (distance<0 ? "" : "-") + Math.abs(distance).toString();

			imgs.css("-webkit-transform", "translate3d("+value +"px,0px,0px)");
			$("#square").css("-webkit-transition-duration", (duration/1000).toFixed(1) + "s");
			$("#square").css("-webkit-transform", "translate3d("+(value/6)*-1 +"px,0px,0px");
		}

$(function() {


		//Init touch swipe
		imgs.swipe( {
			triggerOnTouchEnd : true,
			swipeStatus : swipeStatus,
			allowPageScroll:"vertical"
			// swipeUp: function(){$("#sectionsCont").swipe("disable")}
			// allowPageScroll: false
		});

		/**
		* Catch each phase of the swipe.
		* move : we drag the div.
		* cancel : we animate back to where we were
		* end : we animate to the next image
		*/

	});