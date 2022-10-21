var e_message = "";
var p_message = "";
var g_message = "";
var r_message = "";

var e_reslt = false;
var p_reslt = false;
var g_reslt = false;
var r_reslt = false;
var d_reslt = false;


// date 형식을 yyyy-mm-dd 형식으로 변환하는 함수
function dateFormat(date) {
	let dateFormat = date.getFullYear() +
		'-' + ( (date.getMonth()+1) < 9 ? "0" + (date.getMonth()+1) : (date.getMonth()+1) )+
		'-' + ( (date.getDate()) < 9 ? "0" + (date.getDate()) : (date.getDate()) );
	return dateFormat;
}

// 화면 실행시 시작일, 종료일에 min 속성을 부여하는 이벤트
$(document).ready(function() {
	var now = new Date();
	var nowPlus7 = dateFormat(new Date(now.setDate(now.getDate() + 7)));
	$('#fd_startdate').attr('min',nowPlus7);
	$('#fd_enddate').attr('min',nowPlus7);	
})

// enddate 제한 / 최소 시작일+일주일
$('#fd_enddate').change(
	function() {		
		var start = new Date($('#fd_startdate').val());
		var startPlus7d = new Date(start.setDate(start.getDate() + 7))
		var end = new Date($('#fd_enddate').val());
		if (startPlus7d < end){
			$('#date_message').text("");
			d_reslt = true;
		}else{
			$('#date_message').css("color", "red");
			$('#date_message').text("펀딩 기간은 최소 일주일입니다.");			
		}
		return d_reslt;
	}
)

$('#fd_host_email').blur(
		
	function() {
		// 이메일 검사
		// 이메일 값 변수 저장
		var email = $("#fd_host_email").val();
		
		// 검증에 사용할 정규식 변수 regExp에 저장
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if (email.match(regExp) != null) {
			// 타입이 맞으면
			e_message = "정상 이메일 형식 입니다."
			$('#email_message').css("color", "green");
			e_reslt = true;
		} else {
			e_message = "정상적인 이메일 형식이 아닙니다."
			$('#email_message').css("color", "red");
		}
		$('#email_message').text(e_message);
		return e_reslt;
	}
)


$('#fd_host_phone').blur(
	function() {
		// 전화번호 검사
		var regNumber = /^[0-9]*$/;
		var temp = $('#fd_host_phone').val();

		if (!regNumber.test(temp) || temp.length != 11) {
			p_message = "정상적인 전화번호가 아닙니다."
			$('#phone_message').css("color", "red");
		}else {
			p_message = ""
			p_reslt = true;
		}
		$('#phone_message').text(p_message);
		return p_reslt;
	}
)

$('#fd_goals').blur(
	function() {
		// 목표금액 검사
		var regNumber = /^[0-9]*$/;
		var temp = $('#fd_goals').val();
		$('#goals_message').css("color", "red");
		if (!regNumber.test(temp)) {
			g_message = "숫자를 입력하세요."
		}else if (Number(temp) < Number($('#fd_price').val()) && temp != "") {
			g_message = "상품금액보다 커야합니다."
		}else {
			g_message = ""
			g_reslt = true;
		}
		$('#goals_message').text(g_message);
		return g_reslt;
	}
)

$('#fd_price').blur(
	function() {
	//  상품금액 검사
		var regNumber = /^[0-9]*$/;
		var temp = $('#fd_price').val();

		if (!regNumber.test(temp)) {
			r_message = "숫자를 입력하세요."
			$('#price_message').css("color", "red");
		}else {
			r_message = ""
			r_reslt = true;
		}
		$('#price_message').text(r_message);
		return r_reslt;
	}
)

$('#open-fd-btn').click(function() {
	if(e_reslt == true && p_reslt == true && g_reslt == true && r_reslt == true && d_reslt == true){
			$('#open-fd-from').submit();
			alert("프로젝트 신청이 정상적으로 등록되었습니다.");
	}else {
		alert("잘못된 입력이 있습니다. 수정 후 다시 등록해주세요.");		
	}
})





