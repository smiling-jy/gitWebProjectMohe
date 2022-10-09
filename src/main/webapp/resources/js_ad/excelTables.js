/**
 * 엑셀 내보내기 기능 js
 */

// 관리자 기부하기 목록
$(function() {
	$('#excel_export').click(function() {
		var exlName = $('#exportExcel_name').text();
		$('#export_table').table2excel({
			// exclude CSS class
			exclude : ".noExl", // 제외할 클래스들
			name : exlName, // 저장할 워크시트 이름
			filename : exlName + "List", // 저장할 파일명
			fileext : exlName + "List.xls", // file extension
			preserveColors : true
		// 배경 및 글꼴 색상을 보존
		});
	});
});