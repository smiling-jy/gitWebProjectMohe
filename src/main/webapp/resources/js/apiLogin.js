// 카카오 로그인
Kakao.init('d979258f63314ea5bad35903ff604cbf');

$('#kakaoLogin').on('click', function() {
	Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  const email = response.kakao_account.email;
	        	  $('#user_email').val(email);
	        	  $('#user_password').val('0000');
	        	  $('#form_email_login').action ='kakaoLogin.do';
	        	  $('#form_email_login').submit;
	        	  
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
})

