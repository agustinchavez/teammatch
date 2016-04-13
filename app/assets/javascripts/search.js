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

   $('.homepage').on("submit", "#athlete-search-sport", function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "players/search",
      data: $(event.target).serialize()
    })

    .done(function(response){
      console.log(response)
      $('#athletes-search-sport').replaceWith(response)
      });
    });

    $('.homepage').on("submit", "#athlete-positions-search", function(event){
    event.preventDefault();
    $.ajax({
      method: "post",
      url: "players/search",
      data: $(event.target).serialize()
    })

    .done(function(response){
      console.log(response)
      $('#athletes-positions-search').replaceWith(response)
      });
    });

  });