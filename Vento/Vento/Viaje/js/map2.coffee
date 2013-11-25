
initMap2 = ->

	map = new google.maps.Map(document.getElementById("mapcontainer"), mapOptions)
	populationOptions =
		strokeColor: '#00B2EE'
		strokeOpacity: 1
		strokeWeight: 4
		fillColor: '#00275E'
		fillOpacity: 1
		map: map,
		center: new google.maps.LatLng(dos[1], dos[0]),
		radius: 200
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
	console.log lineCoordinates

	lineSymbol =
		# path: "M 0,-0.5 0,0.5"
		strokeWeight: 2
		strokeOpacity: 1
		scale: 3


	line = new google.maps.Polyline(
		path: lineCoordinates
		strokeColor: "white"
		strokeOpacity: 0
		icons: [
			icon: lineSymbol
			offset: "100%"
			repeat: "10px"
		]
		map: map
	)
	# line2 = new google.maps.Polyline(
	# 	path: lineCoordinates2
	# 	strokeColor: "white"
	# 	strokeOpacity: 0
	# 	icons: [
	# 		icon: lineSymbol
	# 		offset: "100%"
	# 		repeat: "10px"
	# 	]
	# 	map: map
	# )
	# line3 = new google.maps.Polyline(
	# 	path: lineCoordinates3
	# 	strokeColor: "white"
	# 	strokeOpacity: 0
	# 	icons: [
	# 		icon: lineSymbol
	# 		offset: "100%"
	# 		repeat: "10px"
	# 	]
	# 	map: map
	# )
	# line4 = new google.maps.Polyline(
	# 	path: lineCoordinates4
	# 	strokeColor: "white"
	# 	strokeOpacity: 0
	# 	icons: [
	# 		icon: lineSymbol
	# 		offset: "100%"
	# 		repeat: "10px"
	# 	]
	# 	map: map
	# )
	for m in spritesMapa

		markers[_i] = new google.maps.Marker
			position: new google.maps.LatLng(m[0][0],m[0][1])
			map: map
			id: "marker"+_i
			icon: m[1][0]
			draggable: true
			optimized: false
			# title:"Hello World!"
		google.maps.event.addListener(markers[_i], "click", (event)->
			console.log this.icon+": "+this.position
		)



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
			position: new google.maps.LatLng(uno[uno.length - 1][1],uno[uno.length - 1][0])
			map: map

			icon: "img/pin_inicio_fin.png"
			# draggable: true


	bounds = new google.maps.LatLngBounds()
	line.getPath().forEach( (e)->
		bounds.extend e
	)
	map.fitBounds bounds