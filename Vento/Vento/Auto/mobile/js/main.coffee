
startSprites = ->

	$("#sprt-carro1").sprite({fps:8, no_of_frames: 3})
	$("#sprt-carro2").sprite({fps:8, no_of_frames: 3})
	$("#sprt-sombrilla").sprite({fps:8, no_of_frames: 3})
	$("#sprt-maguey").sprite({fps:8, no_of_frames: 3})
	$("#sprt-sombrero").sprite({fps:8, no_of_frames: 3})
	$("#sprt-pulpo").sprite({fps:8, no_of_frames: 16})
	$("#sprt-pez").sprite({fps:8, no_of_frames: 6})
	$("#sprt-palmera1").sprite({fps:8, no_of_frames: 8})
	$("#sprt-palmera2").sprite({fps:8, no_of_frames: 8})
	$("#sprt-ferry").sprite({fps:8, no_of_frames: 6})
	$("#sprt-bailarina").sprite({fps:8, no_of_frames: 3})
	$("#sprt-fabrica").sprite({fps:8, no_of_frames: 3})
	$("#sprt-ancla").sprite({fps:8, no_of_frames: 3})
	$("#sprt-agua3").sprite({fps:8, no_of_frames: 8})
	$("#sprt-agua2").sprite({fps:8, no_of_frames: 10})
	$("#sprt-agua1").sprite({fps:8, no_of_frames: 7})
	$("#sprt-volcan").sprite({fps:8, no_of_frames: 9})

toSection = (section)->

	distance = ($(window).width()*section)*-1
	distanceF = ($(window).width()/6)*section


	$("#sectionsCont").css
		"-webkit-transform": "translate3d("+distance+"px,0px,0px)"
	$("#square").css
		"-webkit-transform": "translate3d("+distanceF+"px,0px,0px)"
$ ->
	# $(".section").swipe
	# 	allowPageScroll: "vertical"
	$(".drag").draggable
		containment: [ $(window).width()-4096, $(window).height()-2400, 0, 0 ]
	startSprites()
	$(".btnFooter").on "click", ->
		section = $(this).attr "section"

		toSection(section)
