

//봉사디테일에서 무빙사이드바 
$(window).scroll(function() {
    var position = $(window).scrollTop();
    if(position > 350){
        $("#new-side").stop().animate({"top":position-300+"px"},700);
    }
    if(position <= 0){
      $("#new-side").stop().animate({"top":0},700);
  }
  });



//공유하기 
//function clip(){
//
//        var url = '';    // <a>태그에서 호출한 함수인 clip 생성
//        var textarea = document.createElement("textarea");  
//        //url 변수 생성 후, textarea라는 변수에 textarea의 요소를 생성
//        
//        document.body.appendChild(textarea); //</body> 바로 위에 textarea를 추가(임시 공간이라 위치는 상관 없음)
//        url = window.document.location.href;  //url에는 현재 주소값을 넣어줌
//        textarea.value = url;  // textarea 값에 url를 넣어줌
//        textarea.select();  //textarea를 설정
//        document.execCommand("copy");   // 복사
//        document.body.removeChild(textarea); //extarea 요소를 없애줌
//        
//        alert("URL이 복사되었습니다.")  // 알림창
//    }

//짬목록 
//찜클릭 비동기 통신
$('#bsJjim').on("click",function(){
	
	 $.ajax({
	        type:'get',
	        url:'bsJjimSave.do',
	        data : {'bs_no' : $(this).next().val()},
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



//봉사참여하기 중복확인
//봉사참여 비동기 통신
$('#paricipate').on("click",function(){
	
	 alert($(this).next().val());
	 $.ajax({
	        type:'get',
	        url:'insertVolunteer.do',
	        data : {'bs_no' : $(this).next().val()},
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





//카카오톡 공유하기 api
Kakao.init('d979258f63314ea5bad35903ff604cbf');


$('#bsGongu').on("click",function(){
      Kakao.Share.sendDefault({
            objectType: 'text',
            text:$('#titleBs').text(),  
            link: {
              webUrl: 'http://localhost:8080/basic/bongsaDetail.do?bs_no='+$(this).prev().val(),
            },
          })
})


