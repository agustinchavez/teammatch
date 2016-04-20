$(document).ready(function(){
  var input = $(".add_resources")
  $('.media').on('click', function(event){
    event.preventDefault();
    $.ajax({
      method: "get",
      url: "/addresource"
    })
    .done(function(response){
      $(".add_resources").append(response);
    });
  });
});