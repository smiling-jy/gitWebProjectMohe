/**
 * 
 */

$(document).ready(function(){
	
	$("button[type=button]").click(function(){
		//alert("js연결");
		let txt=$("input[type=text]").val();
			if($.trim(txt)!=""){
				//클릭시 일단 전체 목록을 먼저 숨기고
				$("li.accordion").hide();
				//검색어 포함된요소만 나오는 순서로
				let result=$("li.accordion *:contains('" +txt+ "')");
				$(result).parent().show();
			}else{
				$("li.accordion>div").show();
			}
		
	})
	
})
		
		
		

	