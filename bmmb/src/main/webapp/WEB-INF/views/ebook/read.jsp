<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 조회</title>
<style>
	.ebook_read { padding : 20px 0 0 0;}
	
	.col-lg-12{
	margin-left: 50px;
	margin-bottom: 50px;
	}
</style>
<script>
function typeCheck(f){
	alert(typeof f);
}

 function sRead(id){
	var url = "sread";
	url += "?ebook_ID="+id;
/* 	location.href=url;	 */
 
	var wr =  window.open(url,"sRead","width=1000,height=1200"); 
	wr.moveTo(((window.screen.width-500)/2), ((window.screen.height-500)/2));
	
 } 

function popRead(id){
	var url = "eread";
	url += "?ebook_ID="+id;
	var wr =  window.open(url,"e북read","width=500,height=700");
/* 	$(wr).on('load', function(){
		alert(url);
	}); */
	wr.moveTo(((window.screen.width-500)/2), ((window.screen.height-500)/2));
}

	function preview(f){
		var excerpt = f;
		alert(excerpt);
	}
	
	function downFile(fname){
		var url="${pageContext.request.contextPath}/download";
		url+="?dir=/ebook_storage";
		url+="&filename="+image;
		location.href=url;
	}
	
	function listM(){
		var url = "list";
		url += "?ebook_ID=${param.ebook_ID}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href=url;
	}
	function updateM(){
		var url = "update";
		url += "?ebook_ID=${param.ebook_ID}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&oldfile=${dto.image}";
		
		location.href=url;
	}
	function deleteM(){
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		     document.frm.submit();   
		 }else{   //취소
		     return false;
		 }
	}
	
	function ereadTest(){
		if(eread.name != null){
			document.eread.submit();
		}else{
			return false;
		}
		
	}

	function vcart(id){
		var url = "cart";
		url += "?ebook_ID="+id;
		location.href = url;
	}
</script>
</head>
<body>

<div class="container">
<div class="ebook_read">
	<h2>eBook</h2>
	
	<form action="eread" name="eread" method="post" target="_blank" >
		<input type="hidden" name="desc2" value="${dto.desc2}">
		<input type="hidden" name="author" value="${dto.author}">
		<div class="form-group">
			<button class="btn btn-light" type="button" onclick="ereadTest();">읽기</button>
		</div>
	</form>
	
	<form action="delete" name="frm" method="post" enctype="mulipart/form-data">
		<input type="hidden" name="ebook_ID" value="${param.ebook_ID }">
		<input type="hidden" name="word" value="${param.word }">
		<input type="hidden" name="nowPage" value="${param.nowPage }">
		<input type="hidden" name="oldfile" value="${dto.image }">
		<table class="table">
			<tr>
				<td colspan="2" align="right" style="border-top-color:rgb(255, 255, 255)">조회수 : ${dto.viewcnt } 등록일 : ${dto.rdate } </td>
			</tr>
			<tr>	
				<th style="width : 20%;">번호</th>
				<td>${dto.ebook_ID }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.name }</td>
			</tr>
			<c:if test="${not empty dto.image}">
				<tr>
					<th>첨부파일</th>
					<td>
					${dto.image }
					<a href="javascript:downFile('${dto.image }')"><img src="${pageContext.request.contextPath }/images/download.jpg" width="30px" height="30px"></a>
					</td>
				</tr>
			</c:if>
			<tr>
				<th>내용</th>
				<td>${dto.desc1 }</td>
			</tr>
			<tr>
				<th>e북 미리보기</th>
				<td><a href="javascript:sRead('${dto.ebook_ID }')">새창에서 보기</a></td>
			</tr>			
			<c:if test="${not empty dto.image }">
				<tr>
					<th>사진</th>
					<td><img src="${pageContext.request.contextPath }/ebook_storage/${dto.image}"></td>
				</tr>
			</c:if>
		</table>
		<div class="form-group">
			<button class="btn btn-light" type="button" onclick="location.href='create'">등록</button>
			<button class="btn btn-light" type="button" onclick="updateM();">수정</button>
			<button class="btn btn-light" type="button" onclick="deleteM();">삭제</button>
			<button class="btn btn-light" type="button" onclick="listM();">목록</button>
		</div>
	</form>
	<div class="cart">
					<a href="javascript:vcart('${dto.ebook_ID }')">장바구니 담기</a>
	</div>
	

</div>

<%-- <div class="ppg">${ppgret}</div> --%>


<!-- s: RESTful row-->
<div class='row'>
	<div class="col-lg-12">
		<div class="panel panel-default">
			 <div class="panel-heading">
			       <i class="fa fa-comments fa-fw"></i> 댓글
			       <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
      		 </div>     
		</div>
			<div class="panel-body">
				      <ul class="chat list-group">
				         <li class="left clearfix" data-rno="12">
				         <div>
					           <div class="header">
					            <strong class="primary-font">user1</strong>
					            <small class="pull-right text-muted">2019-05-12</small>
					           </div>
					           <p>Good job!</p>
				         </div>
				         </li>
				        </ul>			
			</div>
			<div class="panel-footer"></div>		
		</div><!-- e: col lg 12 -->
</div><!-- e: RESTful row-->


<!-- Modal -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>내용</label> 
                <textarea cols="10" rows="3" class="form-control" name='content'>New Reply!!!!</textarea> 
              </div>      
            </div>
       <div class="modal-footer">
        <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
        <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
        <button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
        <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
      </div>          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->



</div> <!-- e: container -->


      
      
<script type="text/javascript" src="${root}/js/breply.js"></script>

<script>

$(document).ready(function(){
	
	var ebook_ID = '<c:out value="${ebook_ID}"/>';
	var sno = '<c:out value="${sno}"/>';
	var eno = '<c:out value="${eno}"/>';
	var replyUL = $(".chat");
	 
	  showList();

	  function showList(){
		    replyService.getList(  
		    		{ebook_ID:ebook_ID,sno:sno,eno:eno}, 
		    		
		    		function(list) {            
		    			 var str="";
		     
					     if(list == null || list.length == 0){
					       return;
					     }
					     for (var i = 0, len = list.length || 0; i < len; i++) {
					       str +="<li class='list-group-item' data-rnum='"+list[i].rnum+"'>";
					       str +="<div><div class='header'><strong class='primary-font'>"+list[i].rname+"</strong>"; 
					       str +="<small class='pull-right text-muted'>"+list[i].rdate+"</small></div>";
					       str +=replaceAll(list[i].content,'\n','<br>')+"</div></li>";
					     }
					     replyUL.html(str);
					     showReplyPage();
}
		    		
		    		);  /* e: function */
		    		
		    	
	  } /* e: showList */
	  
	  function replaceAll(str, searchStr, replaceStr) {
		  return str.split(searchStr).join(replaceStr);
		}	  
	  
	  var nPage = '<c:out value="${nPage}"/>';
	  var nowPage = '<c:out value="${nowPage}"/>';
	  var colx = '<c:out value="${col}"/>';
	  var wordx = '<c:out value="${word}"/>';
	  var replyPageFooter = $(".panel-footer");
	  var param = "nPage="+nPage;
	  param += "&nowPage="+nowPage;
	  param += "&ebook_ID="+ebook_ID;
	  param += "&col="+colx;
	  param += "&word="+wordx;		    
		    
	  function showReplyPage(){
		  
		  replyService.getPage(param, function(paging) {
		   
		    console.log(paging);
		   
		      var str ="<div><small class='text-muted'>"+paging+"</small></div>";
		      replyPageFooter.html(str);
		    
		  });
		  }//end showReplyPage

		  var modal = $(".modal");
		  var modalInputContent = modal.find("textarea[name='content']");
		   
		  var modalModBtn = $("#modalModBtn");
		  var modalRemoveBtn = $("#modalRemoveBtn");
		  var modalRegisterBtn = $("#modalRegisterBtn");

		  $("#modalCloseBtn").on("click", function(e){
		   
		       modal.modal('hide');
		  });
	  
	  
		  $("#addReplyBtn").on("click", function(e){  		  
			  if('${sessionScope.id}'==''){
			  
				  if(confirm("로그인을 해야 댓글을 쓸수 있습니다.")) {
				        var url = "../member/login";
				        url += "?col=${col}";
				        url += "&word=${word}";
				        url += "&nowPage=${nowPage}";
				        url += "&nPage=${nPage}";
				        url += "&ebook_ID=${ebook_ID}";
				        url += "&rurl=../ebook/read";
				   location.href = url;  
				  }
				  
			  }else{
				  modalInputContent.val("");
				  modal.find("button[id !='modalCloseBtn']").hide();
				  
				  modalRegisterBtn.show();
				  
				  $(".modal").modal("show");
				  
			  }
			  });
		  
		  //댓글등록
		  modalRegisterBtn.on("click",function(e){
  
  if(modalInputContent.val()==''){
  alert("댓글을 입력하세요")
  return ;
  }
 
  var reply = {
        content: modalInputContent.val(),
        id:'<c:out value="${sessionScope.id}"/>',
        ebook_ID:'<c:out value="${ebook_ID}"/>'
      };
  //alert(reply.content);
  replyService.add(reply, function(result){
    
    alert(result);
    
    modal.find("input").val("");
    modal.modal("hide");
    
    //showList(1);
    
    showList();
    
  }); //end add
  
}); //end modalRegisterBtn.on
		  

//댓글 조회 클릭 이벤트 처리 
$(".chat").on("click", "li", function(e){
  
  var rnum = $(this).data("rnum");
  
  //alert(rnum)
  replyService.get(rnum, function(reply){
  
    modalInputContent.val(reply.content);
    modal.data("rnum", reply.rnum);
    
    modal.find("button[id !='modalCloseBtn']").hide();
    
    if('${sessionScope.id}'==reply.id){
        modalModBtn.show();
      modalRemoveBtn.show();
    }
    $(".modal").modal("show");
        
  });
});


modalModBtn.on("click", function(e){
	  
    var reply = {rnum:modal.data("rnum"), content: modalInputContent.val()};
    //alert(reply.rnum);
    replyService.update(reply, function(result){
          
      alert(result);
      modal.modal("hide");
      showList();
      
    });
    
  });//modify 
  
  modalRemoveBtn.on("click", function (e){
	    
	    var rnum = modal.data("rnum");
	    
	    replyService.remove(rnum, function(result){
	          
	        alert(result);
	        modal.modal("hide");
	        showList();
	        
	    });
	    
	  });//remove

});//end $(document).ready
</script>

</body>
</html>