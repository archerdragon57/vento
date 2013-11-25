
$ ->

	slider1 = $("#slider1 .slider").bxSlider
		mode: 'horizontal'
		auto: true
		autoDelay: 0
		autoControls: false
		controls: false
		# nextText: ''
		pager: false
		pause: 5000
		speed: 400
		ease: "easeInOutQuad"

	$("#slider1 .right").on "click", ->
		slider1.goToNextSlide()
		return false
	$("#slider1 .left").on "click", ->
		slider1.goToPrevSlide()
		return false

	slider2 = $("#slider2 .slider").bxSlider
		mode: 'horizontal'
		auto: true
		autoDelay: 200
		autoControls: false
		controls: false
		# nextText: ''
		pager: false
		pause: 5000
		speed: 400
		ease: "easeInOutQuad"

	$("#slider2 .right").on "click", ->
		slider2.goToNextSlide()
		return false
	$("#slider2 .left").on "click", ->
		slider2.goToPrevSlide()
		return false

	slider3 = $("#slider3 .slider").bxSlider
		mode: 'horizontal'
		auto: true
		autoDelay: 400
		autoControls: false
		controls: false
		# nextText: ''
		pager: false
		pause: 5000
		speed: 400
		ease: "easeInOutQuad"

	$("#slider3 .right").on "click", ->
		slider3.goToNextSlide()
		return false
	$("#slider3 .left").on "click", ->
		slider3.goToPrevSlide()
		return false

	slider4 = $("#slider4 .slider").bxSlider
		mode: 'horizontal'
		auto: true
		autoDelay: 600
		autoControls: false
		controls: false
		# nextText: ''
		pager: false
		pause: 5000
		speed: 400
		ease: "easeInOutQuad"

	$("#slider4 .right").on "click", ->
		slider4.goToNextSlide()
		return false
	$("#slider4 .left").on "click", ->
		slider4.goToPrevSlide()
		return false
