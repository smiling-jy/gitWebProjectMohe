/**
 * 
 */

$(function(){
	// 카카오톡 공유하기 api
	Kakao.init('d979258f63314ea5bad35903ff604cbf');
	$('#Gongu-btn').on("click",function(){
		//연결
		   Kakao.Share.sendDefault({
			      objectType: 'text',
			      text:$('#review_title').text(),  
			      link: {
			        webUrl: 'http://localhost:8080/mohe/getReview.do?review_no='+$(this).prev().val(),
			      },
			    })
	})
})
		
		
		

	