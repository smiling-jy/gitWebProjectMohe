
// 펀딩상세페이지 오른쪽 div 스크롤 따라다기는 기능 
$(window).scroll(function() {
    var position = $(window).scrollTop();
    if(position > 350){
        $("#new-side").stop().animate({"top":position-300+"px"},700);
    }
    if(position <= 0){
      $("#new-side").stop().animate({"top":0},700);
  }
  });

// 모달창 클릭시 닫음
$("#close").click(function() {
	$(".background").removeClass("show")
})

// 펀딩결제 페이지 수량증가에 따라 총액 변화
$("button.btn-default").on("click",function(){	
    $(".sub-total span").text(Number($("input[name=pay_count]").val())*Number($("td.price span").text()))
})


// 펀딩리스트 최신순 , 인기순
$("select[name=select]").on("change",function(){	
	$("form").submit();
})
// 왜 안대 ㅠ
// $("#category div ul li a").on("click", function(){
//     alert('1');
//     // $(this).css("border","2px solid rgb(112,191,187)");
// })

// $(".boder li a").on("click", function(){
//     alert('1');
//     // $(this).css("border","2px solid rgb(112,191,187)");
// })

