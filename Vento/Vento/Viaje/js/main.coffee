window.xt= 0
position = ["#intro", "#map", "#recap"]
current = 0
currentCont = position[current]
markers = []
window.spritecurrent = 0
window.currentImg = ""
twArray = []
insArray = []
markersTw = []
markersIns = []
infoWindowsTw = []
infoWindowsIns = []
contentinfoTw = []
window.wH = $(window).height()
window.wW = $(window).width()
# marker = []
currentSprite = []

if navigator.userAgent.match(/iPhone/i)
	$('#viewport').attr('content','width=device-width,minimum-scale=0.8,maximum-scale=0.8,initial-scale=0.8')
# iOS = ( navigator.userAgent.match(/(iPad|iPhone|iPod)/g) ? true : false )
isiOS = navigator.userAgent.match(/(iPad|iPhone|iPod)/i) != null
map = null
animateController = null
imagesFiles = [
	"img/arrow_down.png"
	"img/arrow_iconos.png"
	"img/arrow_left.png"
	"img/arrow_left_dia.png"
	"img/arrow_right.png"
	"img/arrow_right_dia.png"
	"img/arrow_up.png"
	"img/auto10000.png"
	"img/back_icons_circulo.png"
	"img/back_icons_circulo2.png"
	"img/btn_cerrar_secciones.png"
	"img/btn_facebook_share_sprite.png"
	"img/btn_sprite_arrow.png"
	"img/btn_twitter_feed.png"
	"img/btn_twitter_share.png"
	"img/carro_rank.png"
	"img/confugurador_icon.png"
	"img/gif_mecanica_site.gif"
	"img/gif_registro_site.gif"
	"img/gif_ruta_site.gif"
	"img/icon_tweet_logo.png"
	"img/like_fb.png"
	"img/like_instagram.png"
	"img/logo.png"
	"img/logo_mobile.png"
	"img/logo_vw.jpg"
	"img/logo_vw_100px.png"
	"img/mapa_btn_ruta.png"
	"img/mapa_derecha.png"
	"img/mapa_galeria_icon.png"
	"img/mapa_izquierda.png"
	"img/marker_twitter.png"
	"img/mecanica_sprite_site.png"
	"img/menuLeft.png"
	"img/menuright.png"
	"img/menu_bitacora_icon.png"
	"img/menu_prueba_de_manejo.png"
	"img/menu_ruta_icon.png"
	"img/menu_video_icon.png"
	"img/pattern_noise_back.png"
	"img/pin_inicio_fin.png"
	"img/pin_mapa.png"
	"img/play_btn.png"
	"img/registro_sprite.png"
	"img/reloj_info_ruta.png"
	"img/retweet.png"
	"img/ruta57_info_ruta.png"
	"img/ruta_15_info_ruta.png"
	"img/share_photo.png"
	"img/sprite_ruta_site.png"
	"img/vento_loader.gif"
	"img/vento_microsite_contenido_flecha_vermas.png"
	"img/__logo.png"
	"img/map/ani/montana2/montana20000.png"
	"img/map/ani/montana2/montana20001.png"
	"img/map/ani/montana2/montana20002.png"
	"img/map/ani/montana2/montana20000.png"
	"img/map/ani/montana2/montana20001.png"
	"img/map/ani/montana2/montana20002.png"
	"img/map/ani/montana1/montana10000.png"
	"img/map/ani/montana1/montana10001.png"
	"img/map/ani/montana1/montana10002.png"
	"img/map/ani/montana2/montana20000.png"
	"img/map/ani/montana2/montana20001.png"
	"img/map/ani/montana2/montana20002.png"
	"img/map/ani/montana1/montana10000.png"
	"img/map/ani/montana1/montana10001.png"
	"img/map/ani/montana1/montana10002.png"
	"img/map/ani/agua2/agua20000.png"
	"img/map/ani/agua2/agua20001.png"
	"img/map/ani/agua2/agua20002.png"
	"img/map/ani/agua2/agua20003.png"
	"img/map/ani/agua2/agua20004.png"
	"img/map/ani/agua2/agua20005.png"
	"img/map/ani/agua2/agua20006.png"
	"img/map/ani/agua2/agua20007.png"
	"img/map/ani/agua2/agua20008.png"
	"img/map/ani/agua2/agua20009.png"
	"img/map/ani/agua3/agua30000.png"
	"img/map/ani/agua3/agua30001.png"
	"img/map/ani/agua3/agua30002.png"
	"img/map/ani/agua3/agua30003.png"
	"img/map/ani/agua3/agua30004.png"
	"img/map/ani/agua3/agua30005.png"
	"img/map/ani/agua3/agua30006.png"
	"img/map/ani/agua3/agua30007.png"
	"img/map/ani/agua1/agua10000.png"
	"img/map/ani/agua1/agua10001.png"
	"img/map/ani/agua1/agua10002.png"
	"img/map/ani/agua1/agua10003.png"
	"img/map/ani/agua1/agua10004.png"
	"img/map/ani/agua1/agua10005.png"
	"img/map/ani/agua1/agua10006.png"
	"img/map/ani/agua2/agua20000.png"
	"img/map/ani/agua2/agua20001.png"
	"img/map/ani/agua2/agua20002.png"
	"img/map/ani/agua2/agua20003.png"
	"img/map/ani/agua2/agua20004.png"
	"img/map/ani/agua2/agua20005.png"
	"img/map/ani/agua2/agua20006.png"
	"img/map/ani/agua2/agua20007.png"
	"img/map/ani/agua2/agua20008.png"
	"img/map/ani/agua2/agua20009.png"
	"img/map/ani/agua3/agua30000.png"
	"img/map/ani/agua3/agua30001.png"
	"img/map/ani/agua3/agua30002.png"
	"img/map/ani/agua3/agua30003.png"
	"img/map/ani/agua3/agua30004.png"
	"img/map/ani/agua3/agua30005.png"
	"img/map/ani/agua3/agua30006.png"
	"img/map/ani/agua3/agua30007.png"
	"img/map/ani/agua1/agua10000.png"
	"img/map/ani/agua1/agua10001.png"
	"img/map/ani/agua1/agua10002.png"
	"img/map/ani/agua1/agua10003.png"
	"img/map/ani/agua1/agua10004.png"
	"img/map/ani/agua1/agua10005.png"
	"img/map/ani/agua1/agua10006.png"
	"img/map/ani/agua2/agua20000.png"
	"img/map/ani/agua2/agua20001.png"
	"img/map/ani/agua2/agua20002.png"
	"img/map/ani/agua2/agua20003.png"
	"img/map/ani/agua2/agua20004.png"
	"img/map/ani/agua2/agua20005.png"
	"img/map/ani/agua2/agua20006.png"
	"img/map/ani/agua2/agua20007.png"
	"img/map/ani/agua2/agua20008.png"
	"img/map/ani/agua2/agua20009.png"
	"img/map/ani/agua3/agua30000.png"
	"img/map/ani/agua3/agua30001.png"
	"img/map/ani/agua3/agua30002.png"
	"img/map/ani/agua3/agua30003.png"
	"img/map/ani/agua3/agua30004.png"
	"img/map/ani/agua3/agua30005.png"
	"img/map/ani/agua3/agua30006.png"
	"img/map/ani/agua3/agua30007.png"
	"img/map/ani/agua1/agua10000.png"
	"img/map/ani/agua1/agua10001.png"
	"img/map/ani/agua1/agua10002.png"
	"img/map/ani/agua1/agua10003.png"
	"img/map/ani/agua1/agua10004.png"
	"img/map/ani/agua1/agua10005.png"
	"img/map/ani/agua1/agua10006.png"
	"img/map/ani/agua2/agua20000.png"
	"img/map/ani/agua2/agua20001.png"
	"img/map/ani/agua2/agua20002.png"
	"img/map/ani/agua2/agua20003.png"
	"img/map/ani/agua2/agua20004.png"
	"img/map/ani/agua2/agua20005.png"
	"img/map/ani/agua2/agua20006.png"
	"img/map/ani/agua2/agua20007.png"
	"img/map/ani/agua2/agua20008.png"
	"img/map/ani/agua2/agua20009.png"
	"img/map/ani/agua3/agua30000.png"
	"img/map/ani/agua3/agua30001.png"
	"img/map/ani/agua3/agua30002.png"
	"img/map/ani/agua3/agua30003.png"
	"img/map/ani/agua3/agua30004.png"
	"img/map/ani/agua3/agua30005.png"
	"img/map/ani/agua3/agua30006.png"
	"img/map/ani/agua3/agua30007.png"
	"img/map/ani/agua1/agua10000.png"
	"img/map/ani/agua1/agua10001.png"
	"img/map/ani/agua1/agua10002.png"
	"img/map/ani/agua1/agua10003.png"
	"img/map/ani/agua1/agua10004.png"
	"img/map/ani/agua1/agua10005.png"
	"img/map/ani/agua1/agua10006.png"
	"img/map/ani/agua2/agua20000.png"
	"img/map/ani/agua2/agua20001.png"
	"img/map/ani/agua2/agua20002.png"
	"img/map/ani/agua2/agua20003.png"
	"img/map/ani/agua2/agua20004.png"
	"img/map/ani/agua2/agua20005.png"
	"img/map/ani/agua2/agua20006.png"
	"img/map/ani/agua2/agua20007.png"
	"img/map/ani/agua2/agua20008.png"
	"img/map/ani/agua2/agua20009.png"
	"img/map/ani/agua1/agua10000.png"
	"img/map/ani/agua1/agua10001.png"
	"img/map/ani/agua1/agua10002.png"
	"img/map/ani/agua1/agua10003.png"
	"img/map/ani/agua1/agua10004.png"
	"img/map/ani/agua1/agua10005.png"
	"img/map/ani/agua1/agua10006.png"
	"img/map/ani/ancla/ancla0000.png"
	"img/map/ani/ancla/ancla0001.png"
	"img/map/ani/ancla/ancla0002.png"
	"img/map/ani/bailarina/bailarina0000.png"
	"img/map/ani/bailarina/bailarina0001.png"
	"img/map/ani/bailarina/bailarina0002.png"
	"img/map/ani/ballena/ballena0000.png"
	"img/map/ani/ballena/ballena0001.png"
	"img/map/ani/ballena/ballena0002.png"
	"img/map/ani/ferry/ferry0000.png"
	"img/map/ani/ferry/ferry0001.png"
	"img/map/ani/ferry/ferry0002.png"
	"img/map/ani/pelota/pelota0000.png"
	"img/map/ani/pelota/pelota0001.png"
	"img/map/ani/pelota/pelota0002.png"
	"img/map/ani/pez/pez0000.png"
	"img/map/ani/pez/pez0001.png"
	"img/map/ani/pez/pez0002.png"
	"img/map/ani/pez/pez0003.png"
	"img/map/ani/pez/pez0004.png"
	"img/map/ani/pez/pez0005.png"
	"img/map/ani/pulpo/pulpo0000.png"
	"img/map/ani/pulpo/pulpo0001.png"
	"img/map/ani/pulpo/pulpo0002.png"
	"img/map/ani/pulpo/pulpo0003.png"
	"img/map/ani/pulpo/pulpo0004.png"
	"img/map/ani/pulpo/pulpo0005.png"
	"img/map/ani/pulpo/pulpo0006.png"
	"img/map/ani/pulpo/pulpo0007.png"
	"img/map/ani/pulpo/pulpo0008.png"
	"img/map/ani/pulpo/pulpo0009.png"
	"img/map/ani/pulpo/pulpo0010.png"
	"img/map/ani/pulpo/pulpo0011.png"
	"img/map/ani/pulpo/pulpo0012.png"
	"img/map/ani/pulpo/pulpo0013.png"
	"img/map/ani/pulpo/pulpo0014.png"
	"img/map/ani/pulpo/pulpo0015.png"
	"img/map/ani/sombrilla/sombrilla0000.png"
	"img/map/ani/sombrilla/sombrilla0001.png"
	"img/map/ani/sombrilla/sombrilla0002.png"
	"img/map/ani/sombrero/sombrero0000.png"
	"img/map/ani/sombrero/sombrero0001.png"
	"img/map/ani/sombrero/sombrero0002.png"
	"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0000.png"
	"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0001.png"
	"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0002.png"
	"img/map/ani/volcan/volcan0000.png"
	"img/map/ani/volcan/volcan0001.png"
	"img/map/ani/volcan/volcan0002.png"
	"img/map/ani/volcan/volcan0003.png"
	"img/map/ani/volcan/volcan0004.png"
	"img/map/ani/volcan/volcan0005.png"
	"img/map/ani/volcan/volcan0006.png"
	"img/map/ani/volcan/volcan0007.png"
	"img/map/ani/volcan/volcan0008.png"
	"img/map/ani/fabrica/fabrica0000.png"
	"img/map/ani/fabrica/fabrica0001.png"
	"img/map/ani/fabrica/fabrica0002.png"
	"img/map/ani/palmera/palmera0000.png"
	"img/map/ani/palmera/palmera0001.png"
	"img/map/ani/palmera/palmera0002.png"
	"img/map/ani/palmera/palmera0003.png"
	"img/map/ani/palmera/palmera0004.png"
	"img/map/ani/palmera/palmera0005.png"
	"img/map/ani/palmera/palmera0006.png"
	"img/map/ani/palmera/palmera0007.png"
	"img/map/ani/palmera2/palmera20000.png"
	"img/map/ani/palmera2/palmera20001.png"
	"img/map/ani/palmera2/palmera20002.png"
	"img/map/ani/palmera2/palmera20003.png"
	"img/map/ani/palmera2/palmera20004.png"
	"img/map/ani/palmera2/palmera20005.png"
	"img/map/ani/palmera2/palmera20006.png"
	"img/map/ani/palmera2/palmera20007.png"
]

init = ->

	tl = new TimelineMax( { autoRemoveChildren:true, onComplete:videoHandler } )
	if($(window).width() > 640)
		tl.to($(".logo .title2"), 0.7, { css:{ opacity:1 } })
		.to($(".logo .title3"), 0.5, { css:{ 'background-size':'278px', opacity:1} }, "-=0.2")
		.to($(".logo .title4"), 0.3, { css:{ right:'0px', visibility:'visible' } }, "-=0.1")
		.to($(".logo .title1"), 0.5, { css:{ rotation:0, opacity:1 } }, "-=0.1")
		.to($(".logo .state3"), 1, { css:{ left:0, opacity:1 } })
		.to($(".logo .title5"), 1, { css:{ opacity:1 } }, "-=0.5")
		.to($(".logo .title5"), 0.5, { css:{ opacity:0 } })
	else
		tl.to($(".logo .title2"), 0.7, { css:{ opacity:1 } })
		.to($(".logo .title3"), 0.5, { css:{ 'background-size':'278px', opacity:1 } }, "-=0.2")
		.to($(".logo .title4"), 0.3, { css:{ right:'0px', visibility:'visible' } }, "-=0.1")
		.to($(".logo .title1"), 0.5, { css:{ rotation:0, opacity:1 } }, "-=0.1")
		.to($(".logo .state3"), 0.1, { css:{ left:0 } })
		.to($(".logo .state1"), 1, { css:{ left:0, opacity:1 } })

	$(".fancybox").fancybox
		fitToView: false
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

window.showIdea = ->
	$("#winners .ideaCont").fadeIn ->
		scrollIdea = $('#winners .ideaCont')
		scrollIdea.tinyscrollbar()
window.hideIdea = ->
	$("#winners .ideaCont").fadeOut()





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


# if isiOS
# 	$('#preloader').hide()
# 	init()
# else
preloadimages(imagesFiles).done((images)->
	$('#preloader .ui-spinner').fadeOut("fast", ->
		$('#preloader').fadeOut(->
			$(this).remove()
			init()
			resizeWindow()
			if window.location.hash == "#winners"
				showIdea()


		)
	)
)





nextFramemarker = ->
	for i in markers
		actual = 0

		actual = currentSprite[_i]
		actual++
		if actual >= spritesMapa[_i][1].length
			actual = 0
		currentSprite[_i]=actual
		# console.log actual
		i.setIcon(spritesMapa[_i][1][actual])

pinesInstagram = (dia)->

	$.ajax
		type: 'POST',
		contentType: "application/json; charset=utf-8",
		data: "{'dia':'"+dia+"'}",
		url: "../RequestsSocials/Instagram.aspx/getLocations",
		dataType: "json",
		success: (data)->

			# console.log twArray
			# console.log data.d



	# marker = new google.maps.Marker
	# 		position: new google.maps.LatLng(uno[0][1],uno[0][0])
	# 		map: map

	# 		icon: "img/pin_inicio_fin.png"



loopMap = (currentMkr, currentImg)->
	setTimeout( ->
		currentMkr.setIcon(currentImg)
		)


spritesMapa = [
	[
		[21.343701780399353, -99.95539101562497]
		[
			"img/map/ani/pino2/pino20000.png"
			"img/map/ani/pino2/pino20001.png"
			"img/map/ani/pino2/pino20002.png"
		]

	]
	[
		[22.32272124164274, -100.69147499999997]
		[
			"img/map/ani/pino/pino0000.png"
			"img/map/ani/pino/pino0001.png"
			"img/map/ani/pino/pino0002.png"
		]

	]
	[
		[21.925803840380308, -102.92169960937497]
		[
			"img/map/ani/montana2/montana20000.png"
			"img/map/ani/montana2/montana20001.png"
			"img/map/ani/montana2/montana20002.png"
		]

	]
	[
		[24.76985856449465, -104.40485390624997]
		[
			"img/map/ani/montana1/montana10000.png"
			"img/map/ani/montana1/montana10001.png"
			"img/map/ani/montana1/montana10002.png"
		]

	]
	[
		[18.3994425733487, -99.96637734374997]
		[
			"img/map/ani/montana2/montana20000.png"
			"img/map/ani/montana2/montana20001.png"
			"img/map/ani/montana2/montana20002.png"
		]

	]
	[
		[22.728646421757873, -98.96662148437497]
		[
			"img/map/ani/montana1/montana10000.png"
			"img/map/ani/montana1/montana10001.png"
			"img/map/ani/montana1/montana10002.png"
		]

	]
	# [
	# 	[19.335073,-98.582100]
	# 	[
	# 		"img/map/ani/auto2/auto20000.png"
	# 		"img/map/ani/auto2/auto20001.png"
	# 		"img/map/ani/auto2/auto20002.png"
	# 		"img/map/ani/auto2/auto20003.png"
	# 		"img/map/ani/auto2/auto20004.png"
	# 		"img/map/ani/auto2/auto20005.png"
	# 		"img/map/ani/auto2/auto20006.png"
	# 		"img/map/ani/auto2/auto20007.png"
	# 		"img/map/ani/auto2/auto20008.png"
	# 	]

	# ]
	# [
	# 	[19.335073,-98.582100]
	# 	[
	# 		"img/map/ani/auto1/auto10000.png"
	# 		"img/map/ani/auto1/auto10001.png"
	# 		"img/map/ani/auto1/auto10002.png"
	# 		"img/map/ani/auto1/auto10003.png"
	# 		"img/map/ani/auto1/auto10004.png"
	# 		"img/map/ani/auto1/auto10005.png"
	# 		"img/map/ani/auto1/auto10006.png"
	# 		"img/map/ani/auto1/auto10007.png"
	# 		"img/map/ani/auto1/auto10008.png"
	# 	]

	# ]
	[
		[24.440230012301264, -92.42975624999997]
		[
			"img/map/ani/agua2/agua20000.png"
			"img/map/ani/agua2/agua20001.png"
			"img/map/ani/agua2/agua20002.png"
			"img/map/ani/agua2/agua20003.png"
			"img/map/ani/agua2/agua20004.png"
			"img/map/ani/agua2/agua20005.png"
			"img/map/ani/agua2/agua20006.png"
			"img/map/ani/agua2/agua20007.png"
			"img/map/ani/agua2/agua20008.png"
			"img/map/ani/agua2/agua20009.png"
		]

	]
	[
		[20.91329695953451, -96.28595742187497]
		[
			"img/map/ani/agua3/agua30000.png"
			"img/map/ani/agua3/agua30001.png"
			"img/map/ani/agua3/agua30002.png"
			"img/map/ani/agua3/agua30003.png"
			"img/map/ani/agua3/agua30004.png"
			"img/map/ani/agua3/agua30005.png"
			"img/map/ani/agua3/agua30006.png"
			"img/map/ani/agua3/agua30007.png"
		]

	]
	[
		[24.470232081571336, -113.21588906249997]
		[
			"img/map/ani/agua1/agua10000.png"
			"img/map/ani/agua1/agua10001.png"
			"img/map/ani/agua1/agua10002.png"
			"img/map/ani/agua1/agua10003.png"
			"img/map/ani/agua1/agua10004.png"
			"img/map/ani/agua1/agua10005.png"
			"img/map/ani/agua1/agua10006.png"
		]

	]
	[
		[21.190129316589303, -112.19416054687497]
		[
			"img/map/ani/agua2/agua20000.png"
			"img/map/ani/agua2/agua20001.png"
			"img/map/ani/agua2/agua20002.png"
			"img/map/ani/agua2/agua20003.png"
			"img/map/ani/agua2/agua20004.png"
			"img/map/ani/agua2/agua20005.png"
			"img/map/ani/agua2/agua20006.png"
			"img/map/ani/agua2/agua20007.png"
			"img/map/ani/agua2/agua20008.png"
			"img/map/ani/agua2/agua20009.png"
		]

	]
	[
		[22.54612772733311, -107.61286171874997]
		[
			"img/map/ani/agua3/agua30000.png"
			"img/map/ani/agua3/agua30001.png"
			"img/map/ani/agua3/agua30002.png"
			"img/map/ani/agua3/agua30003.png"
			"img/map/ani/agua3/agua30004.png"
			"img/map/ani/agua3/agua30005.png"
			"img/map/ani/agua3/agua30006.png"
			"img/map/ani/agua3/agua30007.png"
		]

	]
	[
		[19.48014191758085, -94.73688515624997]
		[
			"img/map/ani/agua1/agua10000.png"
			"img/map/ani/agua1/agua10001.png"
			"img/map/ani/agua1/agua10002.png"
			"img/map/ani/agua1/agua10003.png"
			"img/map/ani/agua1/agua10004.png"
			"img/map/ani/agua1/agua10005.png"
			"img/map/ani/agua1/agua10006.png"
		]

	]
	[
		[13.862700756396402, -111.69977578124997]
		[
			"img/map/ani/agua2/agua20000.png"
			"img/map/ani/agua2/agua20001.png"
			"img/map/ani/agua2/agua20002.png"
			"img/map/ani/agua2/agua20003.png"
			"img/map/ani/agua2/agua20004.png"
			"img/map/ani/agua2/agua20005.png"
			"img/map/ani/agua2/agua20006.png"
			"img/map/ani/agua2/agua20007.png"
			"img/map/ani/agua2/agua20008.png"
			"img/map/ani/agua2/agua20009.png"
		]

	]
	[
		[16.881386609486402, -108.79938515624997]
		[
			"img/map/ani/agua3/agua30000.png"
			"img/map/ani/agua3/agua30001.png"
			"img/map/ani/agua3/agua30002.png"
			"img/map/ani/agua3/agua30003.png"
			"img/map/ani/agua3/agua30004.png"
			"img/map/ani/agua3/agua30005.png"
			"img/map/ani/agua3/agua30006.png"
			"img/map/ani/agua3/agua30007.png"
		]

	]
	[
		[11.19250067532966, -105.89899453124997]
		[
			"img/map/ani/agua1/agua10000.png"
			"img/map/ani/agua1/agua10001.png"
			"img/map/ani/agua1/agua10002.png"
			"img/map/ani/agua1/agua10003.png"
			"img/map/ani/agua1/agua10004.png"
			"img/map/ani/agua1/agua10005.png"
			"img/map/ani/agua1/agua10006.png"
		]

	]
	[
		[15.932893686661505, -105.06403359374997]
		[
			"img/map/ani/agua2/agua20000.png"
			"img/map/ani/agua2/agua20001.png"
			"img/map/ani/agua2/agua20002.png"
			"img/map/ani/agua2/agua20003.png"
			"img/map/ani/agua2/agua20004.png"
			"img/map/ani/agua2/agua20005.png"
			"img/map/ani/agua2/agua20006.png"
			"img/map/ani/agua2/agua20007.png"
			"img/map/ani/agua2/agua20008.png"
			"img/map/ani/agua2/agua20009.png"
		]

	]
	[
		[13.969339453410871, -95.82453164062497]
		[
			"img/map/ani/agua3/agua30000.png"
			"img/map/ani/agua3/agua30001.png"
			"img/map/ani/agua3/agua30002.png"
			"img/map/ani/agua3/agua30003.png"
			"img/map/ani/agua3/agua30004.png"
			"img/map/ani/agua3/agua30005.png"
			"img/map/ani/agua3/agua30006.png"
			"img/map/ani/agua3/agua30007.png"
		]

	]
	[
		[10.96608793002811, -96.31891640624997]
		[
			"img/map/ani/agua1/agua10000.png"
			"img/map/ani/agua1/agua10001.png"
			"img/map/ani/agua1/agua10002.png"
			"img/map/ani/agua1/agua10003.png"
			"img/map/ani/agua1/agua10004.png"
			"img/map/ani/agua1/agua10005.png"
			"img/map/ani/agua1/agua10006.png"
		]

	]
	[
		[25.376868014351917, -95.61579140624997]
		[
			"img/map/ani/agua2/agua20000.png"
			"img/map/ani/agua2/agua20001.png"
			"img/map/ani/agua2/agua20002.png"
			"img/map/ani/agua2/agua20003.png"
			"img/map/ani/agua2/agua20004.png"
			"img/map/ani/agua2/agua20005.png"
			"img/map/ani/agua2/agua20006.png"
			"img/map/ani/agua2/agua20007.png"
			"img/map/ani/agua2/agua20008.png"
			"img/map/ani/agua2/agua20009.png"
		]

	]
	[
		[27.27717016702216, -94.83576210937497]
		[
			"img/map/ani/agua1/agua10000.png"
			"img/map/ani/agua1/agua10001.png"
			"img/map/ani/agua1/agua10002.png"
			"img/map/ani/agua1/agua10003.png"
			"img/map/ani/agua1/agua10004.png"
			"img/map/ani/agua1/agua10005.png"
			"img/map/ani/agua1/agua10006.png"
		]

	]
	[
		[23.54694874887018, -106.04181679687497]
		[
			"img/map/ani/ancla/ancla0000.png"
			"img/map/ani/ancla/ancla0001.png"
			"img/map/ani/ancla/ancla0002.png"
			# "img/map/ani/ancla/ancla0003.png"
			# "img/map/ani/ancla/ancla0004.png"
			# "img/map/ani/ancla/ancla0005.png"
			# "img/map/ani/ancla/ancla0006.png"
			# "img/map/ani/ancla/ancla0007.png"
			# "img/map/ani/ancla/ancla0008.png"
		]

	]
	[
		[24.34017157442394, -111.24933632812497]
		[
			"img/map/ani/bailarina/bailarina0000.png"
			"img/map/ani/bailarina/bailarina0001.png"
			"img/map/ani/bailarina/bailarina0002.png"
			# "img/map/ani/bailarina/bailarina0003.png"
			# "img/map/ani/bailarina/bailarina0004.png"
			# "img/map/ani/bailarina/bailarina0005.png"
			# "img/map/ani/bailarina/bailarina0006.png"
			# "img/map/ani/bailarina/bailarina0007.png"
			# "img/map/ani/bailarina/bailarina0008.png"
		]
	]
	[
		[25.604955304047067, -113.84210976562497]
		[
			"img/map/ani/ballena/ballena0000.png"
			"img/map/ani/ballena/ballena0001.png"
			"img/map/ani/ballena/ballena0002.png"
			# "img/map/ani/ballena/ballena0003.png"
			# "img/map/ani/ballena/ballena0004.png"
			# "img/map/ani/ballena/ballena0005.png"
			# "img/map/ani/ballena/ballena0006.png"
			# "img/map/ani/ballena/ballena0007.png"
			# "img/map/ani/ballena/ballena0008.png"
		]
	]
	[
		[24.51022372042242, -109.85407265624997]
		[
			"img/map/ani/ferry/ferry0000.png"
			"img/map/ani/ferry/ferry0001.png"
			"img/map/ani/ferry/ferry0002.png"
			# "img/map/ani/ferry/ferry0003.png"
			# "img/map/ani/ferry/ferry0004.png"
			# "img/map/ani/ferry/ferry0005.png"
			# "img/map/ani/ferry/ferry0006.png"
			# "img/map/ani/ferry/ferry0007.png"
			# "img/map/ani/ferry/ferry0008.png"
		]
	]
	# [
	# 	[19.335073,-98.582100]
	# 	[
	# 		"img/map/ani/foco/foco0000.png"
	# 		"img/map/ani/foco/foco0001.png"
	# 		"img/map/ani/foco/foco0002.png"
	# 		"img/map/ani/foco/foco0003.png"
	# 		"img/map/ani/foco/foco0004.png"
	# 		"img/map/ani/foco/foco0005.png"
	# 		"img/map/ani/foco/foco0006.png"
	# 		"img/map/ani/foco/foco0007.png"
	# 		"img/map/ani/foco/foco0008.png"
	# 	]
	# ]
	[
		[24.62013507834787, -107.07453164062497]
		[
			"img/map/ani/pelota/pelota0000.png"
			"img/map/ani/pelota/pelota0001.png"
			"img/map/ani/pelota/pelota0002.png"
			# "img/map/ani/pelota/pelota0003.png"
			# "img/map/ani/pelota/pelota0004.png"
			# "img/map/ani/pelota/pelota0005.png"
			# "img/map/ani/pelota/pelota0006.png"
			# "img/map/ani/pelota/pelota0007.png"
			# "img/map/ani/pelota/pelota0008.png"
		]
	]
	[
		[20.296288754661532, -108.53571328124997]
		[
			"img/map/ani/pez/pez0000.png"
			"img/map/ani/pez/pez0001.png"
			"img/map/ani/pez/pez0002.png"
			"img/map/ani/pez/pez0003.png"
			"img/map/ani/pez/pez0004.png"
			"img/map/ani/pez/pez0005.png"

		]
	]
	[
		[22.088776924425705, -110.78791054687497]
		[
			"img/map/ani/pulpo/pulpo0000.png"
			"img/map/ani/pulpo/pulpo0001.png"
			"img/map/ani/pulpo/pulpo0002.png"
			"img/map/ani/pulpo/pulpo0003.png"
			"img/map/ani/pulpo/pulpo0004.png"
			"img/map/ani/pulpo/pulpo0005.png"
			"img/map/ani/pulpo/pulpo0006.png"
			"img/map/ani/pulpo/pulpo0007.png"
			"img/map/ani/pulpo/pulpo0008.png"
			"img/map/ani/pulpo/pulpo0009.png"
			"img/map/ani/pulpo/pulpo0010.png"
			"img/map/ani/pulpo/pulpo0011.png"
			"img/map/ani/pulpo/pulpo0012.png"
			"img/map/ani/pulpo/pulpo0013.png"
			"img/map/ani/pulpo/pulpo0014.png"
			"img/map/ani/pulpo/pulpo0015.png"
		]
	]
	[
		[26.010466768838505, -108.51374062499997]
		[
			"img/map/ani/sombrilla/sombrilla0000.png"
			"img/map/ani/sombrilla/sombrilla0001.png"
			"img/map/ani/sombrilla/sombrilla0002.png"

		]
	]
	[
		[20.182901127508703, -103.84455117187503]
		[
			"img/map/ani/sombrero/sombrero0000.png"
			"img/map/ani/sombrero/sombrero0001.png"
			"img/map/ani/sombrero/sombrero0002.png"

		]
	]
	[
		[22.622206644835323, -96.23651894531247]
		[
			"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0000.png"
			"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0001.png"
			"img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0002.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0003.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0004.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0005.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0006.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0007.png"
			# "img/map/ani/rosa_cuatro_vientos/rosa_cuatro_vientos0008.png"
		]
	]
	[
		[19.687157847278623, -98.33490761718747]
		[
			"img/map/ani/volcan/volcan0000.png"
			"img/map/ani/volcan/volcan0001.png"
			"img/map/ani/volcan/volcan0002.png"
			"img/map/ani/volcan/volcan0003.png"
			"img/map/ani/volcan/volcan0004.png"
			"img/map/ani/volcan/volcan0005.png"
			"img/map/ani/volcan/volcan0006.png"
			"img/map/ani/volcan/volcan0007.png"
			"img/map/ani/volcan/volcan0008.png"
		]
	]
	[
		[18.618221615105448, -97.50543984374997]
		[
			# "img/map/ani/fabrica/fabrica.gif"
			"img/map/ani/fabrica/fabrica0000.png"
			"img/map/ani/fabrica/fabrica0001.png"
			"img/map/ani/fabrica/fabrica0002.png"
		]
	]
	[
		[22.62727707796158, -104.69049843749997]
		[
			"img/map/ani/palmera/palmera0000.png"
			"img/map/ani/palmera/palmera0001.png"
			"img/map/ani/palmera/palmera0002.png"
			"img/map/ani/palmera/palmera0003.png"
			"img/map/ani/palmera/palmera0004.png"
			"img/map/ani/palmera/palmera0005.png"
			"img/map/ani/palmera/palmera0006.png"
			"img/map/ani/palmera/palmera0007.png"
			# "img/map/ani/palmera/palmera0008.png"
			# "img/map/ani/palmera/palmera0009.png"
			# "img/map/ani/palmera/palmera0010.png"
			# "img/map/ani/palmera/palmera0011.png"
			# "img/map/ani/palmera/palmera0012.png"
			# "img/map/ani/palmera/palmera0013.png"
			# "img/map/ani/palmera/palmera0014.png"
			# "img/map/ani/palmera/palmera0015.png"
			# "img/map/ani/palmera/palmera0016.png"
			# "img/map/ani/palmera/palmera0017.png"
			# "img/map/ani/palmera/palmera0018.png"
			# "img/map/ani/palmera/palmera0019.png"
			# "img/map/ani/palmera/palmera0020.png"
			# "img/map/ani/palmera/palmera0021.png"
			# "img/map/ani/palmera/palmera0022.png"
			# "img/map/ani/palmera/palmera0023.png"
		]
	]
	[
		[21.558433078445283, -105.10797890624997]
		[
			"img/map/ani/palmera2/palmera20000.png"
			"img/map/ani/palmera2/palmera20001.png"
			"img/map/ani/palmera2/palmera20002.png"
			"img/map/ani/palmera2/palmera20003.png"
			"img/map/ani/palmera2/palmera20004.png"
			"img/map/ani/palmera2/palmera20005.png"
			"img/map/ani/palmera2/palmera20006.png"
			"img/map/ani/palmera2/palmera20007.png"

		]
	]
]


$( window ).resize ->
	location.reload()

points = (puntos) ->
	for i in puntos
		new google.maps.LatLng(i[1], i[0])


stateStart = ->
	if $(window).width() > 640
		$('.logo .state3').css('opacity',1)
		$('.logo .state2').css('opacity',0)



stateComplete = ->
	if $(window).width() > 640
		$('.logo .state2').css('opacity',0)
		$('.logo .state1').css('opacity',1)


initMap2 = ->

	map = new google.maps.Map(document.getElementById("mapcontainer"), mapOptions2)
	console.log "zoomLvl: "+map.getZoom()

	$.ajax
		type: 'POST',
		contentType: "application/json; charset=utf-8",
		data: "{'dia':'3'}",
		url: "../RequestsSocials/Instagram.aspx/getLocations",
		dataType: "json",
		success: (data)->
			# console.log data.d
			for i in data.d[0]


				# console.log "_i "+_i
				twArray[_i] = i

			for j in data.d[1]

				# console.log "_j"+j
				insArray[_j] = j
			console.log data.d
			console.log insArray
			map.set "styles", [

				featureType: "all"
				elementType: "all"

				stylers: [
					# { "saturation": 70},
					# {"lightness": -72},
					# {"gamma": 0.8},
					# {"hue": "#0019ff"}
					{ "saturation": 26},
					{"lightness": -87},
					{"gamma": 0.96},
					{"hue": "#0000ff"}
				]
				# featureType: "water",
				# stylers: [
				# 	{"color": "#00001f"}
				# ]
				# elementType: "labels.text.stroke",
				# stylers: [
				# 	{"visibility": "off"}
				# ]
				# elementType: "labels.text.fill",
				# stylers: [
				# 	{"color": "#002248"},
				# 	{"gama": 0.01}
				# ]

			]


			lineCoordinates = [
				points(uno)
			]
			lineCoordinates2 = [
				points(dos)
			]
			lineCoordinates3 = [
				points(tres)
			]
			lineCoordinates4 = [
				points(cuatro)
			]
			# console.log lineCoordinates

			lineSymbol =
				# path: "M 0,-0.5 0,0.5"
				strokeWeight: 2
				strokeOpacity: 1
				scale: 3


			line = new google.maps.Polyline(
				path: lineCoordinates
				strokeColor: "#FF8B00"
				strokeOpacity: 1
				# icons: [
				# 	icon: lineSymbol
				# 	offset: "100%"
				# 	repeat: "10px"
				# ]
				map: map
			)
			line2 = new google.maps.Polyline(
				path: lineCoordinates2
				strokeColor: "#FF8B00"
				strokeOpacity: 1
				# icons: [
				# 	icon: lineSymbol
				# 	offset: "100%"
				# 	repeat: "10px"
				# ]
				map: map
			)
			line3 = new google.maps.Polyline(
				path: lineCoordinates3
				strokeColor: "#FF8B00"
				strokeOpacity: 1
				# icons: [
				# 	icon: lineSymbol
				# 	offset: "100%"
				# 	repeat: "10px"
				# ]
				map: map
			)
			line4 = new google.maps.Polyline(
				path: lineCoordinates4
				strokeColor: "#FF8B00"
				strokeOpacity: 1
				# icons: [
				# 	icon: lineSymbol
				# 	offset: "100%"
				# 	repeat: "10px"
				# ]
				map: map
			)
			# console.log twArray
			# for m in twArray
			# 	# currentPosarray
			# 	console.log m
				# if m.length is 4
				# 	# console.log "lat: "+m[3][0]+"/ long: "+m[3][1]
				# 	content = ""+
				# 		"<div class='infobox'>"+
				# 		"<div class='twicoinfow'></div>"+
				# 		"<div class='titleUsertwinfo'>"+
				# 		"<span>"+
				# 		"@"+
				# 		"</span>"+
				# 		m[2]+
				# 		"</div>"+
				# 		"<div class='descriptiontwinfo'>"+
				# 		m[0]+
				# 		"</div>"+
				# 		"</div>"

				# 	infoWindow = new google.maps.InfoWindow({
				# 		content: contentinfoTw[_i]
				# 		maxWidth: 295
				# 	})
				# 	marker = new google.maps.Marker

				# 		position: new google.maps.LatLng(m[3].split(",")[0],m[3].split(",")[1])
				# 		map: map
				# 		infowindowIndex: _i
				# 		id: "markerTw"+_i
				# 		icon: "img/map/marker_twitter.png"
				# 		# draggable: true
				# 		# optimized: false
				# 		# title:"Hello World!"
				# 	currentPosarray = marker.getPosition()
				# 	google.maps.event.addListener(marker, 'click', (event)->
				# 			infoWindow[this.infowindowIndex].open(map, this)
				# 			# infoWindow.setPosition(this.Position)
				# 	  )
				# 	# google.maps.event.addListener(markers[_i], "click", (event)->
				# 	# 	console.log this.icon+": "+this.position
				# 	# )
				# infoBoxsTw.push(infoWindow)
				# markersTw.push(marker)
			for k in twArray
				# console.log m
				location = new google.maps.LatLng(twArray[_k][3].split(",")[0],twArray[_k][3].split(",")[1])
				marker = new google.maps.Marker(
					position: location
					map: map
					animation: google.maps.Animation.DROP
					icon: "img/map/marker_twitter.png"
					infoWindowIndex: _k #<---Thats the extra attribute
				)
				content = ""+"<div class='infobox'>"+"<div class='twicoinfow'></div>"+"<div class='titleUsertwinfo'>"+"<span>"+"@"+"</span>"+twArray[_k][2]+"</div>"+"<div class='descriptiontwinfo'>"+twArray[_k][0]+"</div>"+"</div>"
				infoWindow = new google.maps.InfoWindow(content: content)
				google.maps.event.addListener marker, "click", (event) ->
					map.panTo event.latLng
					# map.setZoom 5
					for l in infoWindowsTw
						l.close()
					infoWindowsTw[@infoWindowIndex].open map, this

				infoWindowsTw.push infoWindow
				markersTw.push marker







			for l in insArray
				console.log l
				location = new google.maps.LatLng(insArray[_l][7].split(",")[0],insArray[_l][7].split(",")[1])
				marker = new google.maps.Marker(
					position: location
					map: map
					animation: google.maps.Animation.DROP
					icon: "img/map/marker_instagram.png"
					infoWindowIndex: _l #<---Thats the extra attribute
				)
				content = "<div class='instagraminfocont'><div class='userCont'><img alt='' class='userPhoto' src=''><p class='user'></p></div><img alt='' class='photo' src='"+insArray[_l][4]+"'><div class='likeandcaptionCont'><p class='caption'>"+insArray[_l][0]+"</p><div class='likesCont'><div class='likeIcon'></div><p class='likesCount'>"+insArray[_l][1]+"</p></div></div></div>"


				infoWindow = new google.maps.InfoWindow(content: content)
				google.maps.event.addListener marker, "click", (event) ->
					map.panTo event.latLng
					# map.setZoom 5
					for m in infoWindowsIns
						m.close()
					infoWindowsIns[@infoWindowIndex].open map, this

				infoWindowsIns.push infoWindow
				markersIns.push marker



			marker = new google.maps.Marker
					position: new google.maps.LatLng(uno[0][1],uno[0][0])
					map: map

					icon: "img/pin_inicio_fin.png"
					# draggable: true

			marker = new google.maps.Marker
					position: new google.maps.LatLng(cuatro[cuatro.length - 1][1],cuatro[cuatro.length - 1][0])
					map: map

					icon: "img/pin_inicio_fin.png"
					# draggable: true


			bounds = new google.maps.LatLngBounds()
			line3.getPath().forEach( (e)->
				bounds.extend e
			)
			map.fitBounds bounds



initMap = ->

	map = new google.maps.Map(document.getElementById("mapcontainer"), mapOptions)
	console.log map
	populationOptions =
		strokeColor: '#00B2EE'
		strokeOpacity: 1
		strokeWeight: 4
		fillColor: '#00275E'
		fillOpacity: 1
		map: map,
		center: new google.maps.LatLng(tres[1], tres[0]),
		radius: 200
	$.ajax
		type: 'POST',
		contentType: "application/json; charset=utf-8",
		data: "{'dia':'3'}",
		url: "../RequestsSocials/Instagram.aspx/getLocations",
		dataType: "json",
		success: (data)->
			# console.log data.d[0][0][3].split(",")[0]
			image =
				url: "img/auto10000.png"
				# // This marker is 20 pixels wide by 32 pixels tall.
				# size: new google.maps.Size(20, 32),
				# // The origin for this image is 0,0.
				origin: new google.maps.Point(0,0)
				# // The anchor for this image is the base of the flagpole at 0,32.
				anchor: new google.maps.Point(17, 50)
			marker = new google.maps.Marker
				position: new google.maps.LatLng(data.d[0][0][3].split(",")[0],data.d[0][0][3].split(",")[1])
				map: map
				# id: "marker"+_i
				icon: image
				# draggable: true
				optimized: false

				# title:"Hello World!"


	cityCircle = new google.maps.Circle(populationOptions);

	lineCoordinates = [
		points(uno)
	]
	lineCoordinates2 = [
		points(dos)
	]
	lineCoordinates3 = [
		points(tres)
	]
	lineCoordinates4 = [
		points(cuatro)
	]
	# console.log lineCoordinates

	lineSymbol =
		path: "M 0,-0.5 0,0.5"
		strokeWeight: 2
		strokeOpacity: 1
		scale: 3
	map.set "styles", [

		elementType: "labels"
		stylers: [visibility: "off"]
	,
		featureType: "landscape"
		elementType: "geometry.fill"
		stylers: [color: "#000E47"]
	,
		featureType: "administrative"
		elementType: "geometry.fill"
		stylers: [color: "#000E47"]
	,
		featureType: "landscape.man_made"
		elementType: "geometry.fill"
		stylers: [color: "#000E47"]
	,
		featureType: "poi"
		elementType: "geometry"
		stylers: [color: "#000E47"]
	,
		featureType: "road"
		elementType: "geometry"
		stylers: [color: "#000E47"]
	,
		featureType: "water"
		elementType: "geometry.fill"
		stylers: [color: "#00285C"]
	,
		featureType: "transit"
		elementType: "geometry.fill"
		stylers: [color: "#000E47"]
	,
		featureType: "administrative.province"
		elementType: "geometry"
		stylers: [color: "#000b37"]
	,
		featureType: "administrative.country"
		elementType: "geometry"
		stylers: [color: "#000b37"]
	]

	line = new google.maps.Polyline(
		path: lineCoordinates
		strokeColor: "#FF8B00"
		strokeOpacity: 0
		icons: [
			icon: lineSymbol
			offset: "100%"
			repeat: "10px"
		]
		map: map
	)
	line = new google.maps.Polyline(
		path: lineCoordinates2
		strokeColor: "#FF8B00"
		strokeOpacity: 0
		icons: [
			icon: lineSymbol
			offset: "100%"
			repeat: "10px"
		]
		map: map
	)
	line = new google.maps.Polyline(
		path: lineCoordinates3
		strokeColor: "#FF8B00"
		strokeOpacity: 0
		icons: [
			icon: lineSymbol
			offset: "100%"
			repeat: "10px"
		]
		map: map
	)
	line4 = new google.maps.Polyline(
		path: lineCoordinates4
		strokeColor: "#FF8B00"
		strokeOpacity: 0
		icons: [
			icon: lineSymbol
			offset: "100%"
			repeat: "10px"
		]
		map: map
	)
	markers = []
	for m in spritesMapa

		markers[_i] = new google.maps.Marker
			position: new google.maps.LatLng(m[0][0],m[0][1])
			map: map
			id: "marker"+_i
			icon: m[1][0]
			# draggable: true
			optimized: false
			# title:"Hello World!"
		google.maps.event.addListener(markers[_i], "click", (event)->
			# console.log this.icon+": "+this.position
		)

		currentSprite[_i]=0



		# console.log "m: "+m
		# console.log "m1: "+m[1]
		# console.log "m1: "+m[1]
		# window.xt = _i
		# if window.xt =
		# if window.xt is m.length
		# 	window.xt = 0
		# else
		# 	window.xt++
		# setInterval(->


		# 	for j in m[1]
		# 		if spritecurrent[window.xt] is m[1].length
		# 			spritecurrent[window.xt]=0
		# 		else
		# 			spritecurrent[window.xt]++
		# 		# console.log window.xt

		# 		setTimeout(->
		# 		console.log "marker: "+window.xt+" sprite: "+ j
		# 			markers[window.xt].setIcon(j)
		# 		# console.log "sprite "+j
		# 		, 150*spritecurrent[window.xt])


		# 150*m[1].length)
		# for j in m[1]
		# 	console.log "a: "+j
		# 	console.log "i: "+window.xt


		# 	console.log "a"+[_j]+" "+j[_i]
		# 	setInterval( ->
		# 		setTimeout( ->

		# 		, 150)
		# 	,1500)


	marker = new google.maps.Marker
			position: new google.maps.LatLng(uno[0][1],uno[0][0])
			map: map

			icon: "img/pin_inicio_fin.png"
			# draggable: true

	marker = new google.maps.Marker
			position: new google.maps.LatLng(cuatro[cuatro.length - 1][1],cuatro[cuatro.length - 1][0])
			map: map

			icon: "img/pin_inicio_fin.png"
			# draggable: true

	animateController = setInterval( ->
		nextFramemarker()

	, 125)

	bounds = new google.maps.LatLngBounds()
	line.getPath().forEach( (e)->
		bounds.extend e
	)
	map.fitBounds bounds
	# console.log "zoomLvl: "+map.getZoom()







mapOptions =
	# center: new google.maps.LatLng(0, 20.0)
	# maxZoom: 7
	minZoom: 7
	maxZoom: 7
	scrollwheel: false
	mapTypeId: google.maps.MapTypeId.ROADMAP
	zoomControl: false
	panControl: false
	mapTypeControl: false
	streetViewControl: false
	zoomControlOptions:
		# style: google.maps.MapZoomControlStyle.HORIZONTAL_BAR
		position: google.maps.ControlPosition.LEFT_CENTER
mapOptions2 =
	# center: new google.maps.LatLng(0, 20.0)
	# maxZoom: 7
	minZoom: 7
	zoom: 7
	# maxZoom: 7
	mapTypeId: google.maps.MapTypeId.ROADMAP
	zoomControl: false
	panControl: false
	mapTypeControl: false
	streetViewControl: false
	zoomControlOptions:
		# style: google.maps.MapZoomControlStyle.HORIZONTAL_BAR
		position: google.maps.ControlPosition.LEFT_CENTER

google.maps.event.addDomListener window, "load", initMap2
# google.maps.event.addListener(map, 'zoom_changed', ->
# 	if (map.getZoom() < minZoomLevel) map.setZoom(minZoomLevel)
# )

# console.log "zoomLvl: "+map.getZoom()

videoHandler = ->



	$(".logo .state1").spriteOnHover
		fps: 5
		autostart: true
		loop: "infinite"

	$(".logo .state2").spriteOnHover
		fps: 20
		onStart: stateStart
		onComplete: stateComplete

	$(".logo .state3").spriteOnHover
		fps: 5
		autostart: true
		loop: "infinite"

	$(".logo .state2").on "mouseover", ->
		if $(window).width() > 640
			$(".logo .state3").css "opacity", 0
			$(".logo .state2").css "opacity", 1

	$(".logo .state2").on "mouseout", ->
		if $(window).width() > 640
			$(".logo .state2").css "opacity", 1
			$(".logo .state1").css "opacity", 0

	timeoutID = window.setTimeout(->
		$(".logo .state2").trigger "mouseover"

	# $('.logo .state2').trigger("mouseout");
	, 4000)
	timeoutID2 = window.setTimeout(->
		$(".logo .state2").trigger "mouseout"

	# $('.logo .state2').trigger("mouseout");
	, 8000)
	timeoutID = window.setTimeout(->
		$(".logo .state2").trigger "mouseover"

	# $('.logo .state2').trigger("mouseout");
	, 12000)
	timeoutID2 = window.setTimeout(->
		$(".logo .state2").trigger "mouseout"

	# $('.logo .state2').trigger("mouseout");
	, 16000)
	timeoutID = window.setTimeout(->
		$(".logo .state2").trigger "mouseover"

	# $('.logo .state2').trigger("mouseout");
	, 20000)
	timeoutID2 = window.setTimeout(->
		$(".logo .state2").trigger "mouseout"

	# $('.logo .state2').trigger("mouseout");
	, 24000)






menuLeftSH =	->
	if $("#leftMenuCont").css("right") is "0px"
		TweenMax.to("#leftMenuCont", 0.5, {right: "-300px", ease:"Quad.easeOut"})
		TweenMax.to("#mainCont, header", 0.5, {marginLeft: 0, ease:"Quad.easeOut"})
		TweenMax.to("#menuLeft", 0.5, {right: 0, ease:"Quad.easeOut"})
		TweenMax.to("#menuRight", 0.5, {right: 2, ease:"Quad.easeOut"})
		$("#menuLeft").removeClass "close"

	else
		TweenMax.to("#leftMenuCont", 0.5, {right: 0, ease:"Quad.easeOut"})
		TweenMax.to("#mainCont, header", 0.5, {marginLeft: -300, ease:"Quad.easeOut"})
		TweenMax.to("#menuLeft", 0.5, {right: "-60px", ease:"Quad.easeOut"})
		TweenMax.to("#menuRight", 0.5, {right: -300, ease:"Quad.easeOut"})


		$("#menuLeft").addClass "close"


menuRightShow =	->
	$("#menuRight").css
		right: 0
	$("#rightMenuCont").css
		right: "-400px"
		width: "400px"
	TweenMax.to("#rightMenuCont", 0.5, {right: 0, ease:"Quad.easeOut"})
	TweenMax.to("#menuRight", 0.5, {right: "402px", ease:"Quad.easeOut"})
	TweenMax.to("#menuRight .close", 0.5, {display: "block"})
menuRightHide =	->
	TweenMax.to("#rightMenuCont", 0.5, {right: "-400px", ease:"Quad.easeOut"})
	TweenMax.to("#menuRight", 0.5, {right: 2, ease:"Quad.easeOut"})
	TweenMax.to("#menuRight .close", 0, {display: "none"})

hashShow =	->

	$("#menuHash .link").css
		display: "none"
	$("#menuHash .close").css
		display: "block"
	TweenMax.to("#leftTwitter", 0.4, {left: 0, ease:"Quad.easeOut"})
	TweenMax.to("#menuHash", 0.4, {left: "252px", ease:"Quad.easeOut"})
	# TweenMax.to("#menuHash .close", 0.5, {display: "block"})
hashHide =	->
	$("#menuHash .link").css
		display: "block"
	$("#menuHash .close").css
		display: "none"
	TweenMax.to("#leftTwitter", 0.4, {left: "-250px", ease:"Quad.easeOut"})
	TweenMax.to("#menuHash", 0.4, {left: 2, ease:"Quad.easeOut"})
	# TweenMax.to("#menuHash .close", 0, {display: "none"})

menuRightShort = ->


	$("#rightMenuCont").css
		right: "-400px"
		width: "400px"
	$("#menuRight .close").removeClass "wide"

menuGridShow =	->
	$("#menuRight").css
		right: 0
	$("#rightMenuCont").css
		right: "-800px"
		width: "800px"
	$("#menuRight .close").addClass "wide"
	TweenMax.to("#rightMenuCont", 0.5, {right: 0, ease:"Quad.easeOut"})
	TweenMax.to("#menuRight", 0.5, {right: "802px", ease:"Quad.easeOut"})
	TweenMax.to("#menuRight .close", 0.5, {display: "block"})
menuGridHide =	->
	TweenMax.to("#rightMenuCont", 0.5, {right: "-800px", ease:"Quad.easeOut", onComplete: menuRightShort})
	TweenMax.to("#menuRight", 0.5, {right: 2, ease:"Quad.easeOut"})
	TweenMax.to("#menuRight .close", 0, {display: "none"})


navigation = (currentSection)->

	nextSection = currentSection.attr "href"

	$("#mainCont").scrollTo($(nextSection), 600, {easing:"easeOutQuad"})


sideMenu = (btn)->
	request = $(btn).attr "request"
	currentid = $(btn).attr "currentid"
	if currentid isnt ""
		$(btn).on "click", ->
			req = $.ajax(
				url: request
				type: 'POST'
				contentType: "application/x-www-form-urlencoded;charset=UTF-8"
				data:
					currentID: currentid
				dataType: 'json'
			)
			req.complete((data)->
				$("#rightMenuCont").html data['responseText']
			)
	else
		$(btn).on "click", ->
			req = $.ajax(
				url: request
				dataType: 'json'
			)
			req.complete((data)->
				$("#rightMenuCont").html data['responseText']
			)



$ ->
	# $("#intro .logo").css
	# 	paddingTop:  "7%"


	$("#filtromapa").on "click", ->
		if $(this).hasClass "swap"
			initMap2()
			$(this).removeClass "swap"
			$(".leyendaRutaactual").show()
			$("#zoom").show()

		else
			clearInterval(animateController)
			initMap()
			$(".leyendaRutaactual").hide()
			$("#zoom").hide()
			$(this).addClass "swap"
	# setInterval( ->

	# 	if window.xt is 1
	# 		markers[0].setIcon("img/map/fabrica_will0.png")
	# 		window.xt++
	# 	else if window.xt is 2
	# 		markers[0].setIcon("img/map/fabrica_will1.png")
	# 		window.xt++
	# 	else if window.xt is 3
	# 		markers[0].setIcon("img/map/fabrica_will2.png")
	# 		window.xt = 1
	# ,150

	# )

	# setInterval(->

	# 	setTimeout(->
	# 		markers[0].setIcon("img/map/ani/pino2/pino20000.png")
	# 	, 100*1)
	# 	setTimeout(->
	# 		markers[0].setIcon("img/map/ani/pino2/pino20001.png")
	# 	, 100*2)
	# 	setTimeout(->
	# 		markers[0].setIcon("img/map/ani/pino2/pino20002.png")
	# 	, 100*3)



	# ,1500)



	$("#recap .recapResume").load("Resumen.aspx")

	$("#menuLeft").on "click", ->
		menuLeftSH()
	$("#menuRight .grid").on "click", ->
		$("#rightMenuCont").html("")
		menuGridShow()
		req = $.ajax(
			url: "Muro.aspx"
			dataType: 'json'
		)
		req.complete((data)->
			$("#rightMenuCont").html data['responseText']
			$("#muroOverview div").each(->
				TweenMax.from($(this), 0.4, {opacity: 0})
			)
		)
	$("#menuRight .itemMenu").on "click", ->
		$("#rightMenuCont").html("")
		menuRightShow()
	$("#menuHash .link").on "click", ->

		req = $.ajax(
			url: "Feed.aspx"
			dataType: 'json'
		)
		req.complete((data)->
			$("#leftTwitter").html data['responseText']
		)
		hashShow()
	$("#menuHash .close").on "click", ->
		hashHide()
	$("#menuRight .close").on "click", ->
		if $(this).hasClass("wide")
			menuGridHide()
		else
			menuRightHide()
	$("#rightMenuCont .cerrar").on "click", ->

			menuRightHide()
			menuGridHide()


	$(".drag").draggable()
	console.log "test"

	$(".downNav, .upNav").on "click", (e)->
		e.preventDefault()
		navigation($(this))
		menuRightHide()
		menuGridHide()
		hashHide()
		TweenMax.to("#leftMenuCont", 0.5, {right: "-300px", ease:"Quad.easeOut"})
		TweenMax.to("#mainCont, header", 0.5, {marginLeft: 0, ease:"Quad.easeOut"})
		TweenMax.to("#menuLeft", 0.5, {right: 0, ease:"Quad.easeOut"})
		TweenMax.to("#menuRight", 0.5, {right: 2, ease:"Quad.easeOut"})
		$("#menuLeft").removeClass "close"

	$("#leftMenuCont .link").on "click", (e)->
		e.preventDefault()
		navigation($(this))
		$("#leftMenuCont .link").removeClass('active')
		# $("#leftMenuCont .pruebaManejo").removeClass('active')
		$(this).addClass "active"


	# $("#menuRight #vento1").on "click", ->
	# 	req = $.ajax(
	# 		url: 'Auto.aspx'
	# 		# type: 'default GET (Other values: POST)',
	# 		dataType: 'json'
	# 	)
	# 	req.complete((data)->
	# 		$("#rightMenuCont").html data['responseText']
	# 	)
	$("#menuRight .item").on "click", ->
		$("#menuRight .item").removeClass "active"
		$(this).addClass "active"
	# sideMenu("#menuRight .item")
	sideMenu("#menuRight #vento1")
	sideMenu("#menuRight #vento2")
	sideMenu("#menuRight #vento3")
	sideMenu("#menuRight .reto")
	$(".updownnav").on "click", ->
		# $("#menuRight .close").trigger "click"
		# hashHide()
		# menuGridHide()
		# menuRightHide()

	$("#zoom .in").on "click", ->
		currentZoom=map.getZoom()
		map.setZoom(currentZoom+1)
	$("#zoom .out").on "click", ->
		currentZoom=map.getZoom()
		map.setZoom(currentZoom-1)


	# $("#mainCont .container").on "click", ->
	# 	hashHide()
	# 	menuGridHide()
	# 	menuRightHide()
	if isiOS
		$('#logoHeader').css
			backgroundImage: "url(img/logo_vw_150px.png)"
			width: "150px"
			height: "150px"
			left: 0

		init()
	else
	if navigator.userAgent.match(/iPhone/i)
		$("#logoHeader").css
			width: "60px"
			height: "60px"
	if navigator.userAgent.match(/iPad/i)
		$("#logoHeader").css
			width: "80px"
			height: "80px"
			backgroundSize: "cover"

	$("#map .downNav").on "click", ->
		resumenScroll.tinyscrollbar_update()



	if wH > wW

		$("#winners .photo img").width(wH*1.6)
		$("#winners .photo img").height(wH)
		$("#winners .photo img").css
			position: "absolute"
			top: "50%"
			left: "50%"
			marginLeft: ((wH*1.6)/2)*-1+"px"
			marginTop: (wH/2)*-1+"px"
		$("#winners .photo").height(wH)
		$("#winners .photo").width(wW)
	else
		$("#winners .photo img").width(wW)
		$("#winners .photo img").height(wW/1.6)
		$("#winners .photo img").css
			position: "absolute"
			top: "50%"
			left: "50%"
			marginLeft: ((wW)/2)*-1+"px"
			marginTop: ((wW/1.6)/2)*-1+"px"
		$("#winners .photo").height(wH)
		$("#winners .photo").width(wW)
	# winnersSlider = $("#winners .sliderWinners").bxSlider
	# 	mode: 'horizontal'
	# 	auto: true
	# 	autoDelay: 0
	# 	autoControls: false
	# 	controls: false
	# 	slideWidth: wH*1.6
	# 	# nextText: ''
	# 	pager: false
	# 	pause: 6000
	# 	speed: 400
	# 	ease: "easeInOutQuad"

	photosWinneres()
	$("#winners .ganadoresSplash").on "click", ->
		showIdea()
	$("#winners .close").on "click", ->
		hideIdea()





