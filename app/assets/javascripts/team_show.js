$(document).ready(function(){
  $('.link_media').on('click', function(event){
    event.preventDefault();
    var id = event.target.dataset.id;
    $.ajax({
      method: "get",
      url: "/media/" + id,
    })
    .done(function(response){
      $('.media').html(response)
       $('a[href*="soundcloud.com"]').each(function(){
         var $link = $(this);
         $.getJSON('http://soundcloud.com/oembed?format=js&url=' + $link.attr('href') + '&iframe=true&callback=?', function(response){
          $link.replaceWith(response.html);
     });
   });
    });
  });
});