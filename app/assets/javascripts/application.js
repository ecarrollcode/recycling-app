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

$(document).ready(function() {
  // filter items functionality
  $('.filter-icon').click(function() {
    $filter_type = $(this).data('filter-type');
    console.log($filter_type);
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

  // searches functionality
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

  // navbar scrolling functionality
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

  // info box overlay functionality
  var infoBox = $('#item-info-box-show');
  if(infoBox.css('opacity') == '0') {
    infoBox.css('opacity') = '.9';
  } else {
    infoBox.css('opacity');
  }
});
