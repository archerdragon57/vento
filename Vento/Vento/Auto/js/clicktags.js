    var _gaq = _gaq || [];

  _gaq.push(['_setAccount', 'UA-38641079-14']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();




    //Clicktags

  $('#logoHeader').on('click', function (e) {
      _gaq.push(['_trackPageview', 'Sitio_corporativo']);
  });
  $('.colorsLink').on('click', function (e) {
      _gaq.push(['_trackPageview', 'Configurador']);
  });
  $('.fbPageCont').on('click', function (e) {
      _gaq.push(['_trackPageview', 'Home_FB']);
  });
  $('.twPageCont').on('click', function (e) {
      _gaq.push(['_trackPageview', 'Home_TW']);
  });
  $('#paintBtn').on('click', function (e) {
      if ($(this).hasClass('flipped')) {
          _gaq.push(['_trackPageview', 'Colores']);
      }
      else {
          _gaq.push(['_trackPageview', 'colores_regresar']);
      }
  });
  function click_equipamiento() {
      _gaq.push(['_trackPageview', 'Equipamiento']);
      //Ver más
      $('#equipamiento .featureCont .knowMoreCont').on('click', function (e) {
          _gaq.push(['_trackPageview', 'equipamiento_mas']);
          //Hotspots
          $('#hotuno').on('click', function (e) {
              _gaq.push(['_trackPageview', 'equipamiento_escucha']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_escucha_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_escucha_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_escucha_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_escucha_Tw']);
              });
          });
          $('#hotdos').on('click', function (e) {
              _gaq.push(['_trackPageview', 'equipamiento_buen_tiempo']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_tiempo_imagen']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_tiempo_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_tiempo_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_tiempo_Tw']);
              });
          });
          $('#hottres').on('click', function (e) {
              _gaq.push(['_trackPageview', 'equipamiento_decide_donde']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_donde_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_donde_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_donde_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'equipamiento_donde_Tw']);
              });
          });
      });
  }
  function click_comodidad()
  {
      _gaq.push(['_trackPageview', 'Comodidad']);
      //Ver más
      $('#equipamiento .featureCont .knowMoreCont').on('click', function (e) {
          _gaq.push(['_trackPageview', 'comodidad_mas']);
          //Hotspots
          $('#hotuno').on('click', function (e) {
              _gaq.push(['_trackPageview', 'comodidad_espacio']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_espacio_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_espacio_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_espacio_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_espacio_Tw']);
              });
          });
          $('#hotdos').on('click', function (e) {
              _gaq.push(['_trackPageview', 'comodidad_interior']);
              //Imagen y video.
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_interior_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_interior_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_interior_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_interior_Tw']);
              });
          });
          $('#hottres').on('click', function (e) {
              _gaq.push(['_trackPageview', 'comodidad_todo']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_todo_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_todo_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_todo_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'comodidad_todo_Tw']);
              });
          });
      });
  }
  function click_consumo()
  {
      _gaq.push(['_trackPageview', 'Bajo_consumo']);
      //Ver más
      $('#equipamiento .featureCont .knowMoreCont').on('click', function (e) {
          _gaq.push(['_trackPageview', 'bajo_consumo_mas']);
          //Hotspots
          $('#hotuno').on('click', function (e) {
              _gaq.push(['_trackPageview', 'bajo_consumo_ideas']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_ideas_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_ideas_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_ideas_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_ideas_Tw']);
              });
          });
          $('#hotdos').on('click', function (e) {
              _gaq.push(['_trackPageview', 'bajo_consumo_inteligente']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_inteligente_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_inteligente_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_inteligente_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_inteligente_Tw']);
              });
          });
          $('#hottres').on('click', function (e) {
              _gaq.push(['_trackPageview', 'bajo_consumo_poder']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_poder_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_poder_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_poder_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'consumo_poder_Tw']);
              });
          });
      });
  }
  function click_seguridad() {
      _gaq.push(['_trackPageview', 'Seguridad']);
      //Ver más
      $('#equipamiento .featureCont .knowMoreCont').on('click', function (e) {
          _gaq.push(['_trackPageview', 'seguridad_mas']);
          //Hotspots
          $('#hotuno').on('click', function (e) {
              _gaq.push(['_trackPageview', 'seguridad_ABS']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_ABS_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_ABS_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_ABS_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_ABS_Tw']);
              });
          });
          $('#hotdos').on('click', function (e) {
              _gaq.push(['_trackPageview', 'seguridad_sujetate']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_sujetate_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_sujetate_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_sujetate_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_sujetate_Tw']);
              });
          });
          $('#hottres').on('click', function (e) {
              _gaq.push(['_trackPageview', 'seguridad_piensa']);
              //Imagen y video.
              $('.hotspotImageCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_piensa_foto']);
              });
              $('.hotspotVideoCont').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_piensa_video']);
              });
              $('.fbShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_piensa_Fb']);
              });
              $('.twShareIcon').on('click', function (e) {
                  _gaq.push(['_trackPageview', 'seguridad_piensa_Tw']);
              });
          });
      });
  }
  $('.videodos').on('click', function (e) {
      click_equipamiento();
  });
  $('.videotres').on('click', function (e) {
      click_comodidad();
  });
  $('.videocuatro').on('click', function (e) {
      click_consumo();
  });
  $('.videocinco').on('click', function (e) {
      click_seguridad();
  });
  $('.mapBtn').on('click', function (e) {

      if ($(this).hasClass('flipped')) {
          _gaq.push(['_trackPageview', 'La_ruta']);
      }
      else {
          _gaq.push(['_trackPageview', 'La_ruta_regresar']);
      }
  });
  $('#videoMap01').on('click', function (e) {
      _gaq.push(['_trackPageview', 'La_ruta_Gdl_video']);
  });
  $('#videoMap02').on('click', function (e) {
      _gaq.push(['_trackPageview', 'La_ruta_Topo_video']);
  });
  $('#videoMap03').on('click', function (e) {
      _gaq.push(['_trackPageview', 'La_ruta_Cabos_video']);
  });


  $('#footer .btncopyright').on('click', function (e) {
        _gaq.push(['_trackPageview', 'Footer_vw_galeria']);
    });
  $('#footer .btnpoliticas').on('click', function (e) {
        _gaq.push(['_trackPageview', 'Footer_políticas']);
    });
  $('#footer .btnficha').on('click', function (e) {
        _gaq.push(['_trackPageview', 'Footer_ﬁcha']);
    });
  $('#footer .btnprueba').on('click', function (e) {
        _gaq.push(['_trackPageview', 'Footer_prueba']);
    });
