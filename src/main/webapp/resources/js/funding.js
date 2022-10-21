
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

$('.checkbox').change(function() {
	if($("#checkbox1").is(":checked") == true && $("#checkbox2").is(":checked") == true){
		$(".background").removeClass("show")		
	}	
})

// 펀딩결제 페이지 수량증가에 따라 총액 변화
$("button.btn-default").on("click",function(){	
    $(".sub-total span").text(Number($("#cnt-pay").val())*Number($("td.price span").text()))
    $('input[name=pay_count]').val($(".sub-total span").text);
})


// 펀딩리스트 최신순 , 인기순
$("select[name=select]").on("change",function(){	
	$("form").submit();
})


// 주최자 질문 답변하기
$(".a-btn").on("click",function(){
	$(".a-btn").css("color","gray");
	$(this).css("color","#3cc88f");
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
										+'<table><tr><td class="margin">'+this.qna_no+'</td><td class="qna-con"> Q. '+this.qna_question+'</td>'
                                        +'<td class="margin">'+(this.qna_answer == null ? '':'답변완료')+'</td></tr></table>'
                                        +'</div><div class="acc-content"><div class="donate-form answer">'
                                        +(this.qna_answer == null ? '<textarea name="qna_answer" placeholder="여기에 답변하세요"></textarea>'
                                        +'<button class="new-btn answer-btn">답변하기</button>'
                                        +'<input type="hidden" name="fd_no" value="'+this.fd_no+'">'
                                        +'<input type="hidden" name="qna_no" value="'+this.qna_no+'">'
                                        :'<span> A. '+this.qna_answer+'</span>')+ '</div></div></li>')
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
				if(data == '로그인하세요'){
					alert(data);
					location.href='loginCheck.do';
				}else {
					alert(data);					
				}
			},
			error :function(request, status, error){		 //요청 실패시 에러 확인을 위함
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})
})


// 주소 api
$('#addr').on("click",function(){
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                $('#addr').val(extraAddr);
            
            } else {
            	$('#addr').val("");
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $('#addr').val(data.zonecode);
            $('#addr').val(addr);
            // 커서를 상세주소 필드로 이동한다.
            $('#addr').focus();
        }
    }).open();
})

// 카카오톡 공유하기 api
Kakao.init('d979258f63314ea5bad35903ff604cbf');
$('#gongu').on("click",function(){
	   Kakao.Share.sendDefault({
		      objectType: 'text',
		      text:$('#title_gu').text(),  
		      link: {
		        webUrl: 'http://localhost:8080/basic/fundingSingle.do?fd_no='+$(this).prev().val(),
		      },
		    })
})

