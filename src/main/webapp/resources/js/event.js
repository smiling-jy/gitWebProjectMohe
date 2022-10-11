/**
 * 
 */

$(function(){
	
	//이벤트 적용 대상들을 포괄하고 있는 큰 태그를 하나 선택
	let topDiv=$('.tabSet');
	
	//이벤트 대상 선택
	let anchors=topDiv.find('.event-btn a');
	let panelDivs=topDiv.find('div.panel');
	
	//이벤트 적용
	anchors.show();
	panelDivs.hide();
	
	let lastAnchor=anchors.filter('.on');
	var lastPanel=$(lastAnchor.attr('href')); //a안의 href 속성
	lastPanel.show();

	
		anchors.click(function(){
//		alert('클릭');
		let currentAnchor=$(this);
        let currentPanel=$(currentAnchor.attr('href')); 
		
        lastAnchor.removeAttr('on');
        currentAnchor.attr('class','on');
		
	
       lastPanel.hide();
       currentPanel.show();
		
        lastAnchor=currentAnchor;
        lastPanel=currentPanel;
		
	})
	
		
})
		
		
		

	