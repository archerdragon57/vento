resumenScroll = $('#recap .sidebarCont')
resumenScroll.tinyscrollbar()
$ ->
	$(".instavideoCont").on "click", ->
		$(this).find("video").get(0).play()