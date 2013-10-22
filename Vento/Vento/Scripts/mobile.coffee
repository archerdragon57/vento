  # VARS
  isTouch = Modernizr.touch isnt false


  #READY
  $ ->
  	$(".menu-btn").on "click", ->
  			$(".header").show()
  	if isTouch


  	else
  		alert "not touch"
  #READY END