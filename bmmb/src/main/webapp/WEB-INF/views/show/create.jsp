<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style>
	.notices_list { padding : 20px 0 0 0;}
</style>
<script>
	function check(f){
		if(f.show_name.value==''){
			alert("제목을 입력하세요");
			f.show_name.focus();
			return false;
		}
		if(f.show_genre.value==''){
			alert("장르를 입력하세요");
			f.show_genre.focus();
			return false;
		}
		if(f.show_place.value==''){
			alert("장소를 입력하세요");
			f.show_place.focus();
			return false;
		}
		if(f.show_actor.value==''){
			alert("배우를 입력하세요");
			f.show_actor.focus();
			return false;
		}
		if(f.show_time.value==''){
			alert("공연기간을 입력하세요");
			f.show_time.focus();
			return false;
		}
		if(f.show_runningtime.value==''){
			alert("러닝타임을 입력하세요");
			f.show_runningtime.focus();
			return false;
		}
		if(f.show_age.value==''){
			alert("관람가능연령 나이를 입력하세요");
			f.show_age.focus();
			return false;
		}
		if(f.show_date.value==''){
			alert("공연날짜정보를 입력하세요");
			f.show_date.focus();
			return false;
		}
		if(f.show_price.value==''){
			alert("요금안내를 입력하세요");
			f.show_price.focus();
			return false;
		}
		if(f.filenameMF.value==''){
			alert("파일을 입력하세요");
			f.filenameMF.focus();
			return false;
		}
		if(f.show_synopsis.value==''){
			alert("시놉시스를 입력하세요");
			f.show_synopsis.focus();
			return false;
		}
		if(f.show_content.value==''){
			alert("내용을 입력하세요");
			f.show_content.focus();
			return false;
		}
		if(f.show_totalseat.value==''){
			alert("좌석수를 입력하세요");
			f.show_totalseat.focus();
			return false;
		}
	}
</script>
</head>
<body>
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#foo').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function() {
    readURL(this);
});
</script>


<div class="notices_list">
	<h2 style="padding-bottom: 20px;">공연리스트 작성</h2>
	<form class="form-group" action="create" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
		<div class="form-group">
			<button class="btn btn-default" type="submit">등록</button>
			<button class="btn btn-default" type="button" onclick="history.back();">취소</button>
		</div>
		<table class="table">
			<tr>
				<td rowspan="12" style="width : 20%;"><img src="#" id="foo"></td>
				<th style="width : 15%;">작성자</th>
				<td>admin</td>
			</tr>
			<tr>
				<th>장르</th>
				<td>
					<select name="show_genre" class="form-control">
						<option value="show_mumusical">뮤지컬</option>
						<option value="show_concert">콘서트</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" class="form-control" name="show_name" placeholder="공연제목을 입력하세요"></td>
			</tr>
			<tr>
				<th>주연</th>
				<td><input type="text" class="form-control" name="show_actor" placeholder="주연(김길동, 이길동, 박길동)"></td>
			</tr>
			<tr>
				<th>장소</th>
				<td><input type="text" class="form-control" name="show_place" placeholder="세종 문화 센터"></td>
			</tr>
			<tr>
				<th>상영기간</th>
				<td><input type="text" class="form-control" name="show_time" placeholder="상영기간을 입력하세요"></td>
			</tr>
			<tr>
				<th>러닝타임</th>
				<td><input type="text" class="form-control" name="show_runningtime" placeholder="러닝타임을 입력하세요"></td>
			</tr>
			<tr>
				<th>관람가능연령</th>
				<td><input type="text" class="form-control" name="show_age" placeholder="관람가능연령을 입력하세요"></td>
			</tr>
			<tr>
				<th>공연날짜</th>
				<td><input type="text" class="form-control" name="show_date" placeholder="공연날짜를 입력하세요"></td>
			</tr>
			<tr>
				<th>요금안내</th>
				<td><input type="text" class="form-control" name="show_price" placeholder="요금안내를 입력하세요"></td>
			</tr>
			<tr>
				<th>예약 가능 좌석</th>
				<td><input type="text" class="form-control" name="total_seat" placeholder="예약가능 좌석을 입력하세요"></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" class="form-control" name="filenameMF"></td>
			</tr>
		</table>
		<table class="table">
			<tr>
				<th style="width : 20%;">시놉시스</th>
				<td><textarea name="show_synopsis" style="height:200px; width:863px;"></textarea></td>
			</tr>
			<tr>
				<th style="width : 20%;">내용</th>
				<td><textarea name="show_content" style="height:400px; width:863px;"></textarea></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>