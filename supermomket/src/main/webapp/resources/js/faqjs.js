function faqselTr(val){
	location.href = "getFaq.do?faq_no="+val;
}
   function faqbtn(val) {
            let faq = document.frm;
            if (val == 1) {
                faq.faq_class.value = "결재";
            } else if (val == 2) {
                faq.faq_class.value = "거래";
            } else {
                faq.faq_class.value = "이용방법";
            }
            faq.action = "searchfaq.do";
            faq.submit();
        }

 
$(document).ready(function(){ 
	$( window ).resize(function() {
		var windowWidth = $( window ).width();
		if(windowWidth >= 978) {
			$("#subNavMenu").hide();
		}
	});
	
	$("#conList").click(function(){
		location.href = "getFaqAdminList.do";
	});
	
	$("#conDel").click(function(){
		let con_test = confirm("정말로 삭제하시겠습니까?");
		if(con_test == true){
			let v = document.fm.faq_no.value;
			location.href = "deletefaq.do?faq_no="+v;
		}
		else if(con_test == false){
		  	return false;
		}
	});
	
	$("#conList").click(function(){
		location.href = "getFaq.do?faq_no="+val;
	});
});
	function insertbtn(){
	location.href = "insertfaq.do";
}
