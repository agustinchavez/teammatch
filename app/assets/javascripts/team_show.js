$(document).ready(function(){


  // fix to get sound cloud to work
  $('a[href*="soundcloud.com"]').each(function(){
      var $link = $(this);
      $.getJSON('http://soundcloud.com/oembed?format=js&url=' + $link.attr('href') + '&iframe=true&callback=?'), function(response){
       $link.replaceWith(response.html);
      }
  });

  $(".media").hide()


  $('.link_media').on('click', function(event){
    event.preventDefault();

    $(".button_to").children().attr("value", "Info")
    $("#inner-container").slideToggle()
    $(".media").show();

});
});