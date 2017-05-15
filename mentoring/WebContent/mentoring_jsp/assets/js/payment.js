//확인 버튼 클릭 시 결제가 완료되었습니다. 팝업 창 띄우기 
$(document).ready(function(){
		$("#btn_pay").magnificPopup({
			items: {
				src: '<div class="white-popup">결제가 완료되었습니다.</div>',
			      type: 'inline'
			}
		});
	});
