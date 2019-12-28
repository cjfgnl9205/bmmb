console.log("*****ppg Module........");

var replyService = (function() {     
	function getList(param, callback, error) {
		var ebook_ID = param.ebook_ID;
		var sno = param.sno;
		var eno = param.eno;
		// alert(param.ebook_ID);
		
		$.getJSON("./reply/list/" + ebook_ID + "/" + sno + "/" + eno + ".json",
				function(data) {
					/*alert(data);*/
					if (callback) {
						callback(data); // 댓글 목록만 가져오는 경우
						// callback(data.replyCnt, data.list); //댓글 숫자와 목록을 가져오는
						// 경우
					}
				}
		);

	}
	
	return {
		getList : getList
	}

})();
