var currentPosition = parseInt($("#new-side").css("top"));

$(window).scroll(function() {
  var position = $(window).scrollTop();
  if(position > 30){
      $("#new-side").stop().animate({"top":position-100+"px"},700);
  }
});