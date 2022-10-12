
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
    $.ajax({
        type:'post',
        url:'qnalist.do',
        data : {'fd_no' : $(this).next().val()},
        async: false, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
//        contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
        success : function(data){
        	$('h3.fd_title_qna').text("Q&A 답변하기");
        	
        	$("#qna-in").html("");   
            if ($(data).length == 0) {
                $("#qna-in").append('<span>질문이 없습니다.</span>');
            }else{
                $(data).each(function(){
                    $("#qna-in").append('<li class="accordion block active-block f-size"><div class="acc-btn answer">'
										+'<table><tr><td class="margin">'+this.qna_no+'</td><td class="qna-con">'+this.qna_question+'</td>'
                                        +'<td class="margin">'+(this.qna_answer == null ? '':'답변완료')+'</td></tr></table>'
                                        +'</div><div class="acc-content"><div class="donate-form answer">'
                                        +(this.qna_answer == null ? '<textarea name="qna_answer" placeholder="여기에 답변하세요"></textarea>'
                                        +'<button class="new-btn answer-btn">답변하기</button>'
                                        +'<input type="hidden" name="fd_no" value="'+this.fd_no+'">'
                                        +'<input type="hidden" name="qna_no" value="'+this.qna_no+'">'
                                        :'<span>'+this.qna_answer+'</span>')+ '</div></div></li>')
                })
            }
        },
        error :function(request, status, error){		 //요청 실패시 에러 확인을 위함
        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
    })
})

// 답변 입력시 화면전환 없이 등록
$(document).on('click', '.answer-btn' , function(){
	$.ajax({
		type:'post',
        url:'answerSave.do',
        data : {'fd_no' : $(this).next().val()
        		 , 'qna_no' : $(this).next().next().val()
        		 , 'qna_answer' : $(this).prev().val()},
        async: false, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
        success : function(data){
        	$('h3.fd_title_qna').text("Q&A 답변하기");
        	$("#qna-in").html("");   
            if ($(data).length == 0) {
                $("#qna-in").append('<span>질문이 없습니다.</span>');
            }else{
                $(data).each(function(){
                    $("#qna-in").append('<li class="accordion block active-block f-size"><div class="acc-btn answer">'
										+'<table><tr><td class="margin">'+this.qna_no+'</td><td class="qna-con">'+this.qna_question+'</td>'
                                        +'<td class="margin">'+(this.qna_answer == null ? '':'답변완료')+'</td></tr></table>'
                                        +'</div><div class="acc-content"><div class="donate-form answer">'
                                        +(this.qna_answer == null ? '<textarea name="qna_answer" placeholder="여기에 답변하세요"></textarea>'
                                        +'<button class="new-btn answer-btn">답변하기</button>'
                                        +'<input type="hidden" name="fd_no" value="'+this.fd_no+'">'
                                        +'<input type="hidden" name="qna_no" value="'+this.qna_no+'">'
                                        :'<span>'+this.qna_answer+'</span>')+ '</div></div></li>')
                })
            }
        },
        error :function(request, status, error){		 //요청 실패시 에러 확인을 위함
        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
	})
})

// 성공펀딩 후원자 목록에서 배송번호 입력시 비동기로 배송상태 변경
$('.transport_btn').on("click",function(){
	if($.trim($(this).prev().val()) == ""){
		alert('운송장 번호를 입력하세요.')
	}else {
		$.ajax({
			type:'get',
	        url:'statusUpdate.do',
	        data : {'pay_no' : $(this).siblings('input[name=pay_no]').val()
	        		 ,'fd_no' : $(this).siblings('input[name=fd_no]').val() 
	        		 , 'pay_status' : $(this).siblings('input[name=pay_status]').val() },
	        async: false, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
//	        contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
	        success : function(data){
	        	$('.patron-list').html("");
	        	
	        	$(data).each(function(){
	        		$('.patron-list').append('<tr><td>'+this.pay_no+'</td><td>'+this.pay_pn_name+'</td>'
											 +'<td>'+(this.pay_status == '대기중' ?
											  '<input type="hidden" name="pay_no" value="'+this.pay_no+'">'
											 +'<input type="hidden" name="fd_no" value="'+this.fd_no+'">'
											 +'<input type="text"  name="pay_status" placeholder="운송장번호" class="transport_no">'
											 +'<button class="transport_btn">입력</button>' :this.pay_status)
											 +'</td><td>'+this.pay_count+'</td><td>'+this.pay_total+'원</td>'
											 +'<td>'+this.pay_pn_phone+'</td><td>'+this.pay_pn_addr+'</td></tr>')
	        	
	        	})
	        },
	        error :function(request, status, error){		 //요청 실패시 에러 확인을 위함
	        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
		})
	}
	
})

// 찜클릭 비동기 통신
$('#jjim').on("click",function(){
	 $.ajax({
	        type:'get',
	        url:'jjimSave.do',
	        data : {'fd_no' : $(this).next().val()},
	        async: true, // sumbit이 진행이 안되도록 하는 옵션(비동기 통신)
	        contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 인코딩에 문제가 발생할까봐 추가하는 코드
	        success : function(data){
	        	alert(data);
	        },
	        error :function(request, status, error){		 //요청 실패시 에러 확인을 위함
	        	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }
	    })
})


