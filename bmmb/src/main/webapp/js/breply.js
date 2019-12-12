console.log("*****Reply Module........");

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
	

	function getPage(param, callback, error) {
		$.ajax({
			type : 'get',
			url : "./reply/page",
			data : param,
			contentType : "application/text; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
					alert("code: "+ request.status + "\n" + "message:"+ request.responseText + "\n" + "error: " + er);
				}
			}
		});
	}

	function add(reply, callback, error) {
		console.log("add reply...............");

		$.ajax({
			type : 'post',
			url : './reply/create',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
					alert("code: "+ request.status + "\n" + "message:"+ request.responseText + "\n" + "error: " + er);
				}
			}
		});
	}

	function get(rnum, callback, error) {

		$.get("./reply/" + rnum + ".json", function(result) {

			if (callback) {
				callback(result);
			}

		}).fail(function(xhr, status, err) {
			if (error) {
				error();
				alert("code: "+ request.status + "\n" + "message:"+ request.responseText + "\n" + "error: " + er);
			}
		});
	}

	function remove(param, callback, error) {
		$.ajax({
			type : 'delete',
			url : './reply/'+param.rnum+'/'+param.ebook_ID+'/'+param.nPage+'.json',
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
					alert("code: "+ request.status + "\n" + "message:"+ request.responseText + "\n" + "error: " + er);
				}
			}
		});
	}

	function update(reply, callback, error) {

		console.log("rnum: " + reply.rnum);

		$.ajax({
			type : 'put',
			url : './reply/' + reply.rnum,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
					alert("code: "+ request.status + "\n" + "message:"+ request.responseText + "\n" + "error: " + er);
				}
			}
		});
	}

	return {
		getList : getList,
		getPage : getPage,
		add : add,
		get : get,
		update : update,
		remove : remove
	}

})();
