$(window).scroll(function() {
    var position = $(window).scrollTop();
    if(position > 350){
        $("#new-side").stop().animate({"top":position-300+"px"},700);
    }
    if(position <= 0){
      $("#new-side").stop().animate({"top":0},700);
  }
  });

document.querySelector("#close").addEventListener("click", close);

function close() {
    document.querySelector(".background").className = "background";
}


// 왜 안대 ㅠ
// $("#category div ul li a").on("click", function(){
//     alert('1');
//     // $(this).css("border","2px solid rgb(112,191,187)");
// })

// $(".boder li a").on("click", function(){
//     alert('1');
//     // $(this).css("border","2px solid rgb(112,191,187)");
// })

