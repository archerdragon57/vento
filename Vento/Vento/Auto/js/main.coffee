window.wH = undefined
window.wW = undefined
openTwits = false
currentPaint = 1
$currentHotSpot = undefined
video = Popcorn "#video"
featureTitle = ["equipamiento"]
currentFeature = 0

if navigator.userAgent.match(/iPhone/i)
	$('#viewport').attr('content','width=device-width,minimum-scale=0.8,maximum-scale=0.8,initial-scale=0.8')


openMap = ->
	$("#map").addClass "openmap"
	setTimeout ->
		$("#map").css
			"-webkit-clip-path": "none"
			zIndex: 20
	, 730
copysComodidad = ->
	$("#features .title").html copys.feature.comodidad.title
	$("#features .subtitle").html copys.feature.comodidad.subtitle
	$("#features .description").html copys.feature.comodidad.description

	$("#hotuno .titleInfo").html copys.feature.comodidad.hotspot[0].title
	$("#hotuno .descriptionInfo").html copys.feature.comodidad.hotspot[0].description
	$("#hotuno .hotspotImage").attr
		href: copys.feature.comodidad.hotspot[0].big
	$("#hotuno .hotspotImage img").attr
		src: copys.feature.comodidad.hotspot[0].thumb

	$("#hotdos .titleInfo").html copys.feature.comodidad.hotspot[1].title
	$("#hotdos .descriptionInfo").html copys.feature.comodidad.hotspot[1].description
	$("#hotdos .hotspotImage").attr
		href: copys.feature.comodidad.hotspot[1].big
	$("#hotdos .hotspotImage img").attr
		src: copys.feature.comodidad.hotspot[1].thumb


	$("#hottres .titleInfo").html copys.feature.comodidad.hotspot[2].title
	$("#hottres .descriptionInfo").html copys.feature.comodidad.hotspot[2].description
	$("#hottres .hotspotImage").attr
		href: copys.feature.comodidad.hotspot[2].big
	$("#hottres .hotspotImage img").attr
		src: copys.feature.comodidad.hotspot[2].thumb

	$("#features .hotspotVideoCont").attr
		href: copys.feature.comodidad.video
	$("#features .fbShareCont").attr
		href: copys.feature.comodidad.facebook
	$("#features .twShareCont").attr
		href: copys.feature.comodidad.twitter
copysSeguridad = ->
	$("#features .title").html copys.feature.seguridad.title
	$("#features .subtitle").html copys.feature.seguridad.subtitle
	$("#features .description").html copys.feature.seguridad.description

	$("#hotuno .titleInfo").html copys.feature.seguridad.hotspot[0].title
	$("#hotuno .descriptionInfo").html copys.feature.seguridad.hotspot[0].description
	$("#hotuno .hotspotImage").attr
		href: copys.feature.seguridad.hotspot[0].big
	$("#hotuno .hotspotImage img").attr
		src: copys.feature.seguridad.hotspot[0].thumb

	$("#hotdos .titleInfo").html copys.feature.seguridad.hotspot[1].title
	$("#hotdos .descriptionInfo").html copys.feature.seguridad.hotspot[1].description
	$("#hotdos .hotspotImage").attr
		href: copys.feature.seguridad.hotspot[1].big
	$("#hotdos .hotspotImage img").attr
		src: copys.feature.seguridad.hotspot[1].thumb

	$("#hottres .titleInfo").html copys.feature.seguridad.hotspot[2].title
	$("#hottres .descriptionInfo").html copys.feature.seguridad.hotspot[2].description
	$("#hottres .hotspotImage").attr
		href: copys.feature.seguridad.hotspot[2].big
	$("#hottres .hotspotImage img").attr
		src: copys.feature.seguridad.hotspot[2].thumb

	$("#features .hotspotVideoCont").attr
		href: copys.feature.seguridad.video
	$("#features .fbShareCont").attr
		href: copys.feature.seguridad.facebook
	$("#features .twShareCont").attr
		href: copys.feature.seguridad.twitter

copysEquipamiento = ->
	$("#features .title").html copys.feature.equipamiento.title
	$("#features .subtitle").html copys.feature.equipamiento.subtitle
	$("#features .description").html copys.feature.equipamiento.description

	$("#hotuno .titleInfo").html copys.feature.equipamiento.hotspot[0].title
	$("#hotuno .descriptionInfo").html copys.feature.equipamiento.hotspot[0].description
	$("#hotuno .hotspotImage").attr
		href: copys.feature.equipamiento.hotspot[0].big
	$("#hotuno .hotspotImage img").attr
		src: copys.feature.equipamiento.hotspot[0].thumb

	$("#hotdos .titleInfo").html copys.feature.equipamiento.hotspot[1].title
	$("#hotdos .descriptionInfo").html copys.feature.equipamiento.hotspot[1].description
	$("#hotdos .hotspotImage").attr
		href: copys.feature.equipamiento.hotspot[1].big
	$("#hotdos .hotspotImage img").attr
		src: copys.feature.equipamiento.hotspot[1].thumb



	$("#hottres .titleInfo").html copys.feature.equipamiento.hotspot[2].title
	$("#hottres .descriptionInfo").html copys.feature.equipamiento.hotspot[2].description
	$("#hottres .hotspotImage").attr
		href: copys.feature.equipamiento.hotspot[2].big
	$("#hottres .hotspotImage img").attr
		src: copys.feature.equipamiento.hotspot[2].thumb

	$("#features .hotspotVideoCont").attr
		href: copys.feature.equipamiento.video


	$("#features .fbShareCont").attr
		href: copys.feature.equipamiento.facebook
	$("#features .twShareCont").attr
		href: copys.feature.equipamiento.twitter
copysConsumo = ->
	$("#features .title").html copys.feature.consumo.title
	$("#features .subtitle").html copys.feature.consumo.subtitle
	$("#features .description").html copys.feature.consumo.description

	$("#hotuno .titleInfo").html copys.feature.consumo.hotspot[0].title
	$("#hotuno .descriptionInfo").html copys.feature.consumo.hotspot[0].description
	$("#hotuno .hotspotImage").attr
		href: copys.feature.consumo.hotspot[0].big
	$("#hotuno .hotspotImage img").attr
		src: copys.feature.consumo.hotspot[0].thumb


	$("#hotdos .titleInfo").html copys.feature.consumo.hotspot[1].title
	$("#hotdos .descriptionInfo").html copys.feature.consumo.hotspot[1].description
	$("#hotdos .hotspotImage").attr
		href: copys.feature.consumo.hotspot[1].big
	$("#hotdos .hotspotImage img").attr
		src: copys.feature.consumo.hotspot[1].thumb


	$("#hottres .titleInfo").html copys.feature.consumo.hotspot[2].title
	$("#hottres .descriptionInfo").html copys.feature.consumo.hotspot[2].description
	$("#hottres .hotspotImage").attr
		href: copys.feature.consumo.hotspot[2].big
	$("#hottres .hotspotImage img").attr
		src: copys.feature.consumo.hotspot[2].thumb

	$(".hotspotVideoCont").attr
		href: copys.feature.consumo.video


	$("#features .fbShareCont").attr
		href: copys.feature.consumo.facebook
	$("#features .twShareCont").attr
		href: copys.feature.consumo.twitter

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


patternOn = ->
	TweenMax.to($(".pattern"), 0.3, {opacity: 0})
	TweenMax.to($(".pattern2"), 0.3, {opacity: 1})
patternOff = ->
	TweenMax.to($(".pattern2"), 0.3, {opacity: 0})
	TweenMax.to($(".pattern"), 0.3, {opacity: 1})

introVideo = (time)->
	video.currentTime time
	video.play()

	patternOff()


init = ->
	copysEquipamiento()
	video.play()
	timelineVideoPointActiveIn("videouno")
	$(".videoPoint#videouno").addClass "active"

	interfaceIn()


preloadimages = (arr) ->
	newimages = []
	loadedimages = 0
	postaction = ->
		arr = (if (typeof arr isnt "object") then [ arr ] else arr)

	imageloadpost = ->
		loadedimages++
		if loadedimages is arr.length
			postaction(newimages)


	for a in arr
		newimages[_i] = new Image()
		newimages[_i].src = arr[_i]
		newimages[_i].onload = ->
			imageloadpost()

		newimages[_i].onerror = ->
			imageloadpost()



	done: (f) ->
		postaction = f or postaction





if navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/iPhone/i)
	$('#mainCont').html("")

else
	preloadimages(imageFiles).done((images)->
		$('#preloader .ui-spinner').fadeOut("fast", ->
			$('#preloader').fadeOut(->
				$(this).remove()
				init()
				# resizeWindow()
				# if window.location.hash == "#winners"
				# 	showIdea()


			)
		)
	)


# if isiOS
# 	$('#preloader').hide()
# 	init()
# else





# if wW > wH

# 	$("#features #video").width(wH*1.777)
# 	$("#features #video").height(wH)
# 	$("#features #video").css
# 		position: "absolute"
# 		top: "50%"
# 		left: "50%"
# 		marginLeft: ((wH*1.777)/2)*-1+"px"
# 		marginTop: (wH/2)*-1+"px"

# else

# 	$("#features #video").width(wW)
# 	$("#features #video").height(wW/1.777)
# 	$("#features #video").css
# 		position: "absolute"
# 		top: "50%"
# 		left: "50%"
# 		marginLeft: ((wW)/2)*-1+"px"
# 		marginTop: ((wW/1.777)/2)*-1+"px"
resize = ->
	wH = $(window).height()
	wW = $(window).width()
	ratio = wW/wH

	if wW > wH

		if ratio>1.777
			$("#features #video").width(wW)
			$("#features #video").height("auto")
			$("#features #video").css
				position: "absolute"
				top: "50%"
				left: "50%"
				marginLeft: (wW/2)*-1+"px"
				marginTop: ($("#features #video").height()/2)*-1+"px"
		else
			$("#features #video").width(wH*1.777)
			$("#features #video").height(wH)
			$("#features #video").css
				position: "absolute"
				top: "50%"
				left: "50%"
				marginLeft: ((wH*1.777)/2)*-1+"px"
				marginTop: (wH/2)*-1+"px"

	else

		$("#features #video").height(wH)
		$("#features #video").width(wH*1.777)
		$("#features #video").css
			position: "absolute"
			top: "50%"
			left: "50%"
			marginLeft: ((wH*1.777)/2)*-1+"px"
			marginTop: (wH/2)*-1+"px"

resize()
featureIn = (feature) ->
	titleMaskCont = $("#"+feature+" .titleMaskCont")
	titleMask = $("#"+feature+" .titleMask")
	title = $("#"+feature+" .title")
	# console.log title
	featureTitleIn()




# $("#features #video").get(0).play()




$ ->
	$(".fancybox").fancybox
		fitToView: true
		width: '100%'
		height: '100%'
		autoSize: false
		closeClick: false
		openEffect: 'none'
		closeEffect: 'none'
		allowFullScreen: true
		padding: 0
		keys:
			toggle: [70]
		swf:
			allowfullscreen: true
			wmode: 'transparent'

	$(".videoPoint ").on "click", ->
		time = $(this).attr "time"

		if time is 0
			introVideo(time)
			copysEquipamiento()
			$(".videoPoint").removeClass "stop"
			$(".videoPoint").removeClass "active"
			$(this).addClass "active"

		if $(".videoPointPlay").hasClass "spotsShowed"
			hotspotsBtnsClose()
			$(this).removeClass "stop"
			patternOff()
			video.play time
			$(".videoPointPlay ").removeClass("spotsShowed")
		else
			$(this).removeClass "stop"
			featureTitleOutWH("equipamiento")
			patternOff()
			video.play time

			# spotsShowed
	video.code
		start: 6.7

		onStart: ->
			copysEquipamiento()
			video.pause()
			patternOn()
			featureTitleIn("equipamiento")
			timelineVideoPointActiveIn("videodos");
			$(".videoPoint#videodos").addClass "active"
			$(".videoPoint").removeClass "stop"
			$(".videoPoint#videodos").addClass "stop"
	video.code
		start: 13.7

		onStart: ->
			copysComodidad()
			video.pause()
			patternOn()
			featureTitleIn("equipamiento")
			timelineVideoPointActiveIn("videotres");
			$(".videoPoint#videotres").addClass "active"
			$(".videoPoint").removeClass "stop"
			$(".videoPoint#videotres").addClass "stop"
	video.code
		start: 20.7

		onStart: ->
			copysConsumo()
			video.pause()
			patternOn()
			featureTitleIn("equipamiento")
			timelineVideoPointActiveIn("videocuatro");
			$(".videoPoint#videocuatro").addClass "active"
			$(".videoPoint").removeClass "stop"
			$(".videoPoint#videocuatro").addClass "stop"
	video.code
		start: 28

		onStart: ->
			copysSeguridad()
			video.pause()
			patternOn()
			featureTitleIn("equipamiento")
			timelineVideoPointActiveIn("videocinco");
			$(".videoPoint#videocinco").addClass "active"
			$(".videoPoint").removeClass "stop"
			$(".videoPoint#videocinco").addClass "stop"
	video.on "timeupdate", ->
		ct = this.currentTime()
		d = this.duration()
		w = 100
		percent = (ct*w)/d
		# console.log  percent
		$(".videoProgressbar").width percent+"%"


	$(".colorsLinkCont").hover ->
		colorsLinkBtnIn()
	, ->
		colorsLinkBtnOut()

	$("#features .hotspotbtn").hover ->
		$currentHotSpot = $(this)
		hotspotOpenedBtnOver($currentHotSpot)
	, ->
		hotspotOpenedBtnOut($currentHotSpot)


	$("#paintBtn").hover ->
		paintPageBtnOver()
	, ->
		paintPageBtnOut()

	$("#mapBtn").hover ->
		mapPageBtnOver()
	, ->
		mapPageBtnOut()
	$(".InsPageCont").hover ->
		instaPageBtnOver()
	, ->
		instaPageBtnOut()


	$(".fbPageCont").hover ->
		fbPageBtnIn()
	, ->
		fbPageBtnOut()

	$(".twPageCont").hover ->
		twPageBtnIn()
	, ->
		twPageBtnOut()

	$(".knowMoreCont").hover ->
		knowMoreTextBtnIn("features")
	, ->
		knowMoreTextBtnOut("features")

	$("#features .hotspotCloseCont").on "click", (ee)->
		ee.preventDefault()
		currentHS = $(this).attr "hotspot"
		hotspotClose(currentHS)
		$(".hotspotIdle, .hotspotOver").css
			visibility: "visible"
		hotspotsBtnsOpen()
	$("#features .hotspotOver").on "click", (e)->
		e.preventDefault()
		currentHS = $(this).attr "hotspot"
		console.log currentHS
		$("#"+currentHS+" .hotspotOpenContainer").css
			visibility: "visible"
		hotspotOpen(currentHS)
		hotspotsBtnsClose()
		$(".hotspotIdle, .hotspotOver").css
			visibility: "hidden"

	$(".hotmapOver").on "click", ->
		currentId = $(this).parent().attr "id"
		console.log currentId
		hotspotMapOpen(currentId)
	$(".map .hotspotCloseCont").on "click", ->
		currentId = $(this).parent().parent().attr "id"
		console.log currentId
		hotspotMapClose(currentId)

	$(".hotspotCont").hover ->
		currentHS = $(this).attr "hotspot"

		hotspotBtnOver(currentHS)
	, ->
		currentHS = $(this).attr "hotspot"
		hotspotBtnOut(currentHS)

	$(".knowMoreCont").on "click", (e)->
		e.preventDefault()
		$(".videoPointPlay").addClass "spotsShowed"
		featureTitleOut("features")
		$(".hotspotCont").css
			display: "block"

	$("#paintBtn").on "click", ->
		if $("#paintBtn").hasClass "flipped"
			paintOut()
			$("#mapBtn").fadeIn()
		else
			$("#mapBtn").fadeOut()
			paintIn()

		$("#paintBtn").toggleClass "flipped"
	$("#mapBtn").on "click", ->
		if $("#mapBtn").hasClass "flipped"
			mapOut()
			$("#paintBtn").fadeIn()

		else
			$("#paintBtn").fadeOut()
			mapIn()
		$("#mapBtn").toggleClass "flipped"

	$(".changePaint").on "click", ->
		paints = ["paint-blanco", "paint-negro", "paint-gris", "paint-rojo", "paint-plata", "paint-azul", "paint-beige"]
		colors = ["Blanco Candy", "Negro Profundo", "Gris Pimienta", "Rojo Flash", "Plata Reflex", "Shadow Blue", "Beige Tierra"]

		console.log paints.length
		if currentPaint is paints.length-1
			currentPaint = 0
		$(".cochePaint").removeClass "active"
		$("#"+paints[currentPaint]).addClass "active"
		$("#paintColor").html colors[currentPaint]
		console.log currentPaint
		currentPaint++

	$("#features .hotspotbtn").on "click", ->
		$(".hotspotbtn").removeClass "active"
		$(this).addClass "active"
		cont = $(this).attr "hscont"
		hotspot = $(this).parent().parent().attr "hotspot"
		console.log hotspot
		console.log cont
		$(this).parent().parent().find(".contentCont").hide()
		$("#"+cont).show()
		hotspotInfoOpen(hotspot)
	$(".map .hotspotbtn").on "click", ->
		$(".map .hotspotbtn").removeClass "active"
		$(this).addClass "active"
		currentCont = $(this).attr "hscont"
		currentHotSpot = $(this).parent().parent().attr "id"
		$("#"+currentHotSpot+" .contentCont").hide()
		$("#"+currentCont).show()
		hotspotInfoOpen(currentHotSpot)




	#hotspotInfoOpen("hotuno")

	# pinInstaContIn(pin_id)
	# pinInstaContOut(pin_id)
	# pinInstaOver(pin_id)
	# pinInstaOut(pin_id)
	# pinTwitContIn(pin_id)
	# pinTwitContOut(pin_id)
	# pinTwitOver(pin_id)
	# pinTwitOut(pin_id)

	#mapAnimatedIn(anim_id)

	# fullScreenPhotoIn()
	# fullScreenPhotoOut()




	$("#pictureGalleryCont .pictureGalleryClose").on "click", ->
		fullScreenPhotoOut()

	if window.location.hash == "#comodidad"
		$("#videotres").trigger "click"
	if window.location.hash == "#consumo"
		$("#videocuatro").trigger "click"
	if window.location.hash == "#consumo"
		$("#videocinco").trigger "click"

	startSprites()


	for i in apis.twits
		if i.dia_id = "1"
			# console.log _i
			# console.log "dia: "+i.dia_id
			twString = "<div class='pinTwitter drag'  id='pinTwit"+i.id+"'> <div class='pinPoint'></div> <div class='pinTwitBack'></div> <div class='pinTwitIcon'></div> <div class='pinTwitCont'> <div class='infobox'> <div class='twicoinfow'></div><div class='closeTw'><div class='closeBack'></div><div class='closeIcon'></div></div> <div class='titleUsertwinfo'> <span>@</span>"+i.screen_name+"</div> <div class='descriptiontwinfo'>"+i.content+" </div> </div> </div> </div>"
			$("#map .map").append twString
	for j in insta.instagrams


		insString = " <div class='pinInstagram drag'  id='pinIns"+j.id+"'> <div class='pinPoint'></div> <div class='pinInstaBack'></div> <div class='pinInstaIcon'></div> <div class='pinInstaCont'> <div class='instagraminfocont'> <div class='userCont'> <img alt='' class='userPhoto' src=''> <p class='user'>"+j.username+"</p> </div> <img alt='' class='photo' src='"+j.lowres+"'> <div class='likeandcaptionCont'> <p class='caption'>"+j.captiontext+"</p> <div class='likesCont'> <div class='likeIcon'></div> <p class='likesCount'> "+j.like_count+"</p> </div> </div> </div> <div class='closeIns'> <div class='closeBack'></div> <div class='closeIcon'></div> </div> </div> </div>"
		$("#map .map").append insString
	$(".drag").draggable()
	$(".pinTwitIcon").on "click", ->
		currentTw = $(this).parent().attr "id"
		pinTwitContIn(currentTw)
	$(".pinTwitter .closeIcon").on "click", ->

		currentTw = $(this).parent().parent().parent().parent().attr "id"
		pinTwitContOut(currentTw)

	$(".pinInstaIcon").on "click", ->
		currentIns = $(this).parent().attr "id"
		pinInstaContIn(currentIns)
	$(".pinInstagram .closeIcon").on "click", ->

		currentIns = $(this).parent().parent().parent().attr "id"
		pinInstaContOut(currentIns)
	# $(".knowMoreCont").on "mouseOver" knowMoreTextBtnIn()
	# $(".knowMoreCont").on "mouseOut" knowMoreTextBtnOut()

	# $('#features video#video').bind "ended", (e)->
	# 	$(".videoPoint#cinco").addClass "active"
	# $('#features video#video').bind "timeupdate", (e)->
	# 	ct = this.currentTime
	# 	d = this.duration
	# 	w = 100
	# 	percent = (ct*w)/d
	# 	console.log  percent
	# 	$(".videoProgressbar").width percent+"%"
	# 	if ct is 7
	# 		$("#features #video").get(0).pause()
	# 		console.log "pause"


$(window).resize ->
	resize()