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
    });
  });
});