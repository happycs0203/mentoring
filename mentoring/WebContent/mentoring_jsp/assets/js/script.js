$(function(){

	
	// 팝업 창 띄우기
	new jBox('Modal', {	
	    attach: '#login',
	    title: "Minju's College",
	    ajax: {
	    	url:'loginForm.jsp',
	    	data:'',
	    	reload: false
	    }
	    
	});
	
	//팝업창 쿠키 확인
//	var ck = $.cookie('xx');
//	if(ck == null || ck != 'checked' ) {
//		myModal.open();
//	}
//	
//	var swiper = new Swiper('.swiper-container', { 
//		         //pagination: '.swiper-pagination', 
//		         paginationClickable: true,
//		         spaceBetween: 30,
//		         autoplay : 1000
//	});
//	
//	$('.playBtn').click(function(){
//		swiper.startAutoplay();
//	});
//
//	$('.stopBtn').click(function(){
//		swiper.stopAutoplay();
//	});
});