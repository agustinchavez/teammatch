// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
  $('#athlete-team-search').on("submit", function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "/search",
      data: $(event.target).serialize()
    })
    .done(function(response){
      console.log(response)
      $('.original-homepage').replaceWith(response)
      });
    });

  $('.homepage').on("submit", "#team-search-sport", function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "teams/search",
      data: $(event.target).serialize()
    })
    .done(function(response){
      console.log(response)
      $('#team-search-sport').replaceWith(response)
      });
    });

  });