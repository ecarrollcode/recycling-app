// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// filter items functionality
function filterItems() {
  var recycleIsClicked = false;
  var compostIsClicked = false;
  var trashIsClicked = false;
  var specialIsClicked = false;
  $('.filter-icon').click(function() {
    $filter_type = $(this).data('filter-type');
    if ($(this).hasClass("recycle-filter") && recycleIsClicked == false) {
      $(".recycle-filter-img").attr("src", "images/filters/recycle_filter_clicked.png")
      recycleIsClicked = true;
    } else if ($(this).hasClass("recycle-filter") && recycleIsClicked == true) {
      $(".recycle-filter-img").attr("src", "images/filters/recycle_filter.png")
      recycleIsClicked = false;
    }
    if ($(this).hasClass("compost-filter") && compostIsClicked == false) {
      $(".compost-filter-img").attr("src", "images/filters/compost_filter_clicked.png")
      compostIsClicked = true;
    } else if ($(this).hasClass("compost-filter") && compostIsClicked == true) {
      $(".compost-filter-img").attr("src", "images/filters/compost_filter.png")
      compostIsClicked = false;
    }
    if ($(this).hasClass("trash-filter") && trashIsClicked == false) {
      $(".trash-filter-img").attr("src", "images/filters/trash_filter_clicked.png")
      trashIsClicked = true;
    } else if ($(this).hasClass("trash-filter") && trashIsClicked == true) {
      $(".trash-filter-img").attr("src", "images/filters/trash_filter.png")
      trashIsClicked = false;
    }
    if ($(this).hasClass("special-filter") && specialIsClicked == false) {
      $(".special-filter-img").attr("src", "images/filters/pickup_filter_clicked.png")
      specialIsClicked = true;
    } else if ($(this).hasClass("special-filter") && specialIsClicked == true) {
      $(".special-filter-img").attr("src", "images/filters/pickup_filter.png")
      specialIsClicked = false;
    }
    $item_spans = $(this).parent().find("span");
    $item_spans.each(function() {
      if ($(this).data("item-bin") != $filter_type) {
        if($(this).is(":visible")){
          $(this).fadeOut( 275, function() {
            $(this).hide();
          });
        } else {
          $(this).fadeIn( 275, function() {
            $(this).show();
          });
        }
      }
    });
  });
}

// functionality for loading search terms and autocompleting queries
function getSearch() {
  $.ajax({
    type: 'GET',
    url: '/searches/get_ajx',
    success: function(data){
      var item_names = [];

      $(data).each(function(index, obj) {
        item_names.push(obj.name);
      });

      $( "#query" ).autocomplete({
        source: function(request, response) {
          var matchArry = item_names.slice(); // Copy the array
          var srchTerms = $.trim(request.term).split(/\s+/);
          // For each search term, remove non-matches.
          $.each(srchTerms, function(J, term) {
              var regX = new RegExp(term, "i");
              matchArry = $.map(matchArry, function(item) {
                  return regX.test(item) ? item : null;
              });
          });
          // Return the match results.
          response(matchArry.slice(0, 7));
        },
        open: function(event, ui) {
          // This function provides no hooks to the results list, so we have to trust the selector, for now.
          var resultsList = $("ul.ui-autocomplete > li.ui-menu-item > a")
          var srchTerm = $.trim($("#tags").val()).split(/\s+/).join('|')
          // Loop through the results list and highlight the terms.
          resultsList.each(function() {
            var jThis = $(this);
            var regX = new RegExp('(' + srchTerm + ')', "ig");
            var oldTxt = jThis.text();
            jThis.html(oldTxt.replace(regX, '<span class="srchHilite">$1</span>'));
          });

          addClasses(data);
        },
        classes: {
          "ui-autocomplete": "list-group-item"
        }
      }); 
    },
    error: function(xhr,status,error){
      console.log(xhr);
      console.log(error);
    }
  });
}

function addClasses(data) {
  var searchResults = $('.ui-autocomplete').find('li');
  // console.log(data);

  searchResults.each(function() {
    for (var i = 0; i < data.length; i++) {
      if ($(this).html() == data[i].name) {
        $(this).attr('data-id', data[i].item_id);
        $(this).attr('data-category', data[i].category);
      }
      if ($(this).html() == data[i].name && data[i].plant_id) {
        $(this).attr('data-table', 'centers');
        $(this).attr('data-coords', data[i].gps_coords);
      }
    }
  });

  searchItemClicked();
}

function searchItemClicked() {
  $('.ui-autocomplete').find('li').click(function() {
    if ($(this).data('table') == 'centers') {
      $('html, body').animate({
        scrollTop: $("#map").offset().top
      }, 'slow');
      var centerName = $(this).html();
      var coords = $(this).data("coords");
      addGoogleMapsItem(centerName, coords);
    }
    var id = $(this).data('id');
    var span = $("[data-item-id='" + id + "']");
    var scrollToDiv = $(span).parents(".col-lg-4");
    var overlay = $(scrollToDiv).find(".item-overlay");
    var portBox = $(scrollToDiv).find(".portfolio-box");
    span.click();
    $('html, body').animate({
      scrollTop: $(scrollToDiv).offset().top - 50
    }, 'slow', function() {
      $('.hovered').removeClass('hovered');
      $(portBox).addClass('hovered');
    });
  });
}

function addGoogleMapsItem(name, coords) {
  var res = coords.split(",");
  var xCoord = parseFloat(res[0]);
  var yCoord = parseFloat(res[1]);

  var r_center = {lat: xCoord, lng: yCoord};
  // var r_center = new google.maps.LatLng(xCoord, yCoord);
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    scrollwheel: false,
    center: r_center,
    mapTypeControl: false,
    streetViewControl: false
  });
  var cu
  var center = new google.maps.Marker({
    position: r_center,
    map: map
  });
  center.setMap(map);
  var infowindow = new google.maps.InfoWindow({
    content: name
  });
  google.maps.event.addListener(center, 'click', function() {
    infowindow.open(map, center);
  });
}

// navbar scrolling functionality
function navBarScrolling() {
  $('.bins-btn').click(function() {
    $('html, body').animate({
      scrollTop: $(".popup-gallery").offset().top
    }, 'slow');
  });

  $('.locations-btn').click(function() {
    $('html, body').animate({
      scrollTop: $("#map").offset().top
    }, 'slow');
  });

  $('.search-btn').click(function() {
    $('html, body').animate({
      scrollTop: $("#page-top").offset().top
    }, 'slow');
  });

  $('.learn-btn, .about-btn').click(function() {
    $('html, body').animate({
      scrollTop: $("#map-bar").offset().top
    }, 'slow');
  });
}

function addGoogleMapsAPI() {
  var fileref = document.createElement('script');
  var filename = "https://maps.googleapis.com/maps/api/js?key=AIzaSyD4piiBT9lv_CdqgsWiFBrPASbUyq2XZMI&callback=initMap";
  $(fileref).attr("type","text/javascript");
  $(fileref).attr("src", filename);
  $(fileref).attr("defer");
  $(fileref).attr("async");
  $("head")[0].append(fileref);
}

function initMap() {
  var uluru = {lat: 34.099972, lng: -117.708281};
  var r_center_1 = {lat: 34.091373, lng: -117.700089};
  var r_center_2 = {lat: 34.108001, lng: -117.735477};
  var r_center_3 = {lat: 34.103936, lng: -117.686841};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    scrollwheel: false,
    center: uluru,
    mapTypeControl: false,
    streetViewControl: false
  });
  var current = new google.maps.Marker({
    position: uluru,
    // animation:google.maps.Animation.BOUNCE,
    map: map
  });
  var center_1 = new google.maps.Marker({
    position: r_center_1,
    map: map
  });
  var center_2 = new google.maps.Marker({
    position: r_center_2,
    map: map
  });
  var center_3 = new google.maps.Marker({
    position: r_center_3,
    map: map
  });
  var infowindow_1 = new google.maps.InfoWindow({
    content:"Premises Materials"
  });
  var infowindow_2 = new google.maps.InfoWindow({
    content:"rePlanet Recycling"
  });
  var infowindow_3 = new google.maps.InfoWindow({
    content:"Interstate All Battery Center"
  });
  google.maps.event.addListener(center_1, 'click', function() {
    infowindow_1.open(map,center_1);
  });
  google.maps.event.addListener(center_2, 'click', function() {
    infowindow_2.open(map,center_2);
  });
  google.maps.event.addListener(center_3, 'click', function() {
    infowindow_3.open(map,center_3);
  });
}

function cleanOverlayHeader(str) {
  // remove commas
  str = str.replace(/[, ]+/g, " ").trim();
  // capitalize words
  str = str.replace(/\b\w/g, l => l.toUpperCase());
  return str;
}

function getItemInfos() {
  $.ajax({
    type: 'GET',
    url: '/searches/get_ajx_item_infos',
    success: function(data) {
      overlay(data);
    }
  });
}

function overlay(data) {
  $('.item-span').click(function() {
    var itemOverlay = $(this).parents('.portfolio-box-caption').find('.item-overlay');
    $('.hovered').removeClass('hovered');
    $(this).parents('.portfolio-box').addClass('hovered');
    $(itemOverlay).fadeIn(400, function() {
      $(this).show();
    });
    $('.overlay-header').html(cleanOverlayHeader($(this).html()));

    var currItemInfo;
    var currentItemId = $(this).data('item-id');

    $.each(data, function( index, value ) {
      if (value.item_id == currentItemId) {
        currItemInfo = value.info;
      }
    });

    // $('.overlay-bin').html("Bin: " + $(this).data('item-bin'));
    $('.overlay-info').html(currItemInfo);
    
    if($(this).data('item-bin') == 'recycle') {
      $(".item-overlay").css("background-color","rgb(15,107,213)");
      $(".overlay-bin-img").attr("src", "images/filters/recycle_bin.png")
    } else if ($(this).data('item-bin') == 'compost') {
      $(".item-overlay").css("background-color","rgb(65,117,5)");
      $(".overlay-bin-img").attr("src", "images/filters/compost_bin.png")
    } else if ($(this).data('item-bin') == 'trash') {
      $(".item-overlay").css("background-color","rgb(74,74,74)");
      $(".overlay-bin-img").attr("src", "images/filters/trash_bin.png")
    } else if ($(this).data('item-bin') == 'special pickup') {
      $(".item-overlay").css("background-color","rgb(245,166,35)");
      $(".overlay-bin-img").attr("src", "images/filters/special_bin.png")
    }


  });
  $('.close-overlay-btn').click(function() {
    $(this).parent().fadeOut(400, function() {
      $(this).hide();
      $('.hovered').removeClass('hovered');
    });
  });
}

function getLocation() {
  if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(showPosition, showError);
  } else { 
      console.log("Geolocation is not supported by this browser.");
  }
}

function showPosition(position) {
    console.log("Latitude: " + position.coords.latitude + 
    " Longitude: " + position.coords.longitude);
}

function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
          console.log("User denied the request for Geolocation.");
          break;
        case error.POSITION_UNAVAILABLE:
          console.log("Location information is unavailable.");
          break;
        case error.TIMEOUT:
          console.log("The request to get user location timed out.");
          break;
        case error.UNKNOWN_ERROR:
          console.log("An unknown error occurred.");
          break;
        default:
          console.log("Request for user location successful!")
          break;

    }
}

function main() {
  $(document).ready(function() {
    filterItems();
    getSearch();
    navBarScrolling();
    getItemInfos();
    getLocation();
    addGoogleMapsAPI();
    initMap();
  });
}

main();
