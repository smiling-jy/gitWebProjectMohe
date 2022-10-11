
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


// 주최자 질문 답변하기
$(".a-btn").on("click",function(){
	alert("클릭은 된다");
    $.ajax({
        type:'post',
        url:'qnalist.do',
        dataType : 'json',
        data : {'fd_no' : $(this).next().val()},
        async: true, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
        contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
        success : function(data){
            console.log('data : '+data);
            $("#qna-in").html("");
            if ($(data).isEmpty()) {
                $("#qna-in").append('<span>질문이 없습니다.</span>');
            }else{
                $(data).each(function(){
                    $("#qna-in").append('<table><tr><td>'+this.qna_no+'</td><td class="content">'+this.qna_question+'</td>'
                                        +'<td>'+(this.qna_answer == null ? '':'답변완료')+'</td></tr></table>'
                                        +'</div><div class="acc-content current"><div class="content donate-form">'
                                        +(this.qna_answer == null ? '<textarea placeholder="여기에 답변하세요"></textarea>'
                                        +'<button class="new-btn" id="answer">답변하기</button>':this.qna_answer)+'</div>')
                })
            }
        }
    })
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

