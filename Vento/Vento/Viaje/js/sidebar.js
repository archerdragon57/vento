(function() {
  $(function() {
    var autocontScroll;
    $("#rightMenuCont .cerrar").on("click", function() {
      menuRightHide();
      return menuGridHide();
    });
    autocontScroll = $('.sidebarCont');
    autocontScroll.tinyscrollbar();
    sideMenu(".autoContent #personProfile1");
    sideMenu(".autoContent #personProfile2");
    sideMenu(".autoContent #personProfile3");
    return sideMenu(".autoContent #personProfile4");
  });

}).call(this);
