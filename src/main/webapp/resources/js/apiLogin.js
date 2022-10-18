// 카카오 로그인
Kakao.init('d979258f63314ea5bad35903ff604cbf');

$('#kakaoLogin').on('click', function() {
	Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  const email = response.kakao_account.email;
	        	  const pass = response.id;
	        	  const name = response.kakao_account.profile.nickname;
	        	  $('#api_intype').val('kakao');
	        	  $('#api_emali').val(email);
	        	  $('#api_pass').val(pass);
	        	  $('#api_name').val(name);
	        	  $('#api-form').submit();
	          },
	          fail: function (error) {
	        	  alert(error)
	          },
	        })
	      },
	      fail: function (error) {
	    	  alert(error)
	      },
	    })	  
})
