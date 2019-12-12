<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 조회</title>
	<script type="text/javascript" src="../js/jquery.js"> /* 경로 확인 필요 */	
	</script>
	<style>
	
/* s: NYT style */	
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,600);
@import url(https://fonts.googleapis.com/css?family=Rozha+One);

* {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
  background-color: #fff;
  font-family: 'Open Sans', sans-serif;
}

.book-cover {
  display: block;
  margin: 0 auto;
  width: 200px;
  -webkit-transform: translateY(-30px);
          transform: translateY(-30px);
}

.entry {
  margin: 30px 0px;
  padding: 20px 50px;
  -webkit-box-shadow: 2px 2px 2px 0px rgba(0, 0, 0, 0.21);
  box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.21);
}

.entry:before {
  content: attr(nyt-rank);
  font-family: 'Rozha One', serif;
  font-size: 3rem;
  display: inline-block;
  width: 50px;
  height: 50px;
  line-height: 50px;
  padding: 20px 20px;
  text-align: center;
  -webkit-transform: translate(-100px);
          transform: translate(-100px);
  border: 4px solid #282c37;
  background-color: #fff;
  border-radius: 50%;
  color: #282c37;
  -webkit-box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.21);
  box-shadow: 0px 0px 8px 0px rgba(0, 0, 0, 0.21);
}

#best-seller-titles {
  max-width: 475px;
  margin: 120px auto;
}

#best-seller-titles a {
  margin: 40px 0px 0px 0px;
  text-decoration: none;
  color: #2b90d9;
  line-height: .2;
}

#best-seller-titles h1, #best-seller-titles h2, #best-seller-titles h3, #best-seller-titles h4 {
  color: #282c37;
}

#best-seller-titles p {
  color: #333030;
  line-height: 1.4;
}

#best-seller-titles .publisher {
  color: #333030;
}

#best-seller-titles .stats hr {
  opacity: .5;
}

#best-seller-titles .stats p {
  color: #282c37;
}

#masthead {
  position: fixed;
  top: 0;
  left: 0;
  background: #FFF;
  z-index: 9999;
  width: 100%;
  padding: 10px;
  -webkit-box-shadow: 0px 1px 5px 0px #777;
  box-shadow: 0px 1px 5px 0px #777;
  -webkit-transition: 200ms;
  transition: 200ms;
}

#masthead img {
  -webkit-transition: 100ms;
  transition: 100ms;
}
/* 	e: NYT style */	

		
	</style>
</head>
<body>
<div class="container">	
<h1>미리보기</h1>

<div id="extractor">
<br><br><br><br><br>
				<button type="button" onclick="extrac();">통째 추출</button>
				<button type="button" onclick="popentry();">부분 추출</button>					
</div>
<div class="desc_read">
		<table class="table">
			<tr>
				<td colspan="2" align="right" style="border-top-color:rgb(255, 255, 255)">(본문 중) </td>
			</tr>
			<tr>	
				<th style="width : 20%;">본문</th>
				<td>${desc2}</td>
				<td>${id}</td>
				<td>${author}</td>
			</tr>
		</table>
</div>

<!-- s: NYT API -->
<div class="nyt_test">

	<div id="masthead">
	<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/387928/nyt-logo.png" height="80" id="nyt-logo">
	</div>
	
	<div id="reviews">
	   <!-- reviews -->
	</div>
	
	<div id="best-seller-titles">
	  <!-- best sellers -->
	</div>

</div>
<!-- e: NYT API -->


</div>

<script type="text/javascript">
fetch('https://api.nytimes.com/svc/books/v3/lists.json?list-name=hardcover-fiction&api-key=6ad84e249d054efeaefe1abb8f89df5b', {
    method: 'get',
  })
  .then(response => { return response.json(); })
  .then(json => { updateBestSellers(json); })
  .catch(error => {
    console.log('NYT API Error: Defaulting to nytimes archival data.', error);
    updateBestSellers(nytimesArchive);
  });

function updateBestSellers(nytimesBestSellers) {
  nytimesBestSellers.results.forEach(function(book) {
    var isbn = book.isbns[0].isbn10;
    var bookInfo = book.book_details[0];
    var lastWeekRank = book.rank_last_week || 'n/a';
    var weeksOnList = book.weeks_on_list || 'New this week!';
    var listing = 
        '<div id="' + book.rank + '" class="entry">' + 
          '<p>' + 
          '<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/387928/book%20placeholder.png" class="book-cover" id="cover-' + book.rank + '">' + 
          '</p>' + 
          '<h2><a href="' + book.amazon_product_url + '" target="_blank">' + bookInfo.title + '</a></h2>' +
          '<h4>By ' + bookInfo.author + '</h4>' +
          '<h4 class="publisher">' + bookInfo.publisher + '</h4>' +
          '<p>' + bookInfo.description + '</p>' + 
          '<div class="stats">' +
            '<hr>' + 
            '<p>Last Week: ' + lastWeekRank + '</p>' + 
            '<p>Weeks on list: ' + weeksOnList + '</p>' +
          '</div>' +
        '</div>';

    $('#best-seller-titles').append(listing);
    $('#' + book.rank).attr('nyt-rank', book.rank);

    updateCover(book.rank, isbn);
  });
}

function updateCover(id, isbn) {
  fetch('https://www.googleapis.com/books/v1/volumes?q=isbn:' + isbn + "&key=AIzaSyAyINR2SYnt4K-0x6zh6S3x6NVUY15pY7Q", {
    method: 'get'
  })
  .then(response => { return response.json(); })
  .then(data => {
    var img = data.items[0].volumeInfo.imageLinks.thumbnail;
    img = img.replace(/^http:\/\//i, 'https://');
    $('#cover-' + id).attr('src', img);
  })
  .catch(error => {
    console.log(error);
    // console.log('Googel API Error: Defaulting to archival images for book #' + id + ' ISBN: ' + isbn);
    // var index = id - 1;
    // var img = archivedImages[index];
    // $('#cover-' + id).attr('src', img);
  });
}

$(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll > 50) {
      $('#masthead').css({'height':'50', 'padding' : '8'})
      $('#nyt-logo').css({'height':'35'})
    } else {
      $('#masthead').css({'height':'100', 'padding':'10'});
      $('#nyt-logo').css({'height':'80'})
    }
});

function extrac(){
	var sourcetxt = document.getElementById("best-seller-titles");
	
	extracted = sourcetxt.textContent;
	alert(extracted);
	
}

function	popentry(){
	var entryArr = new Array();
	
	var entries = document.getElementsByClassName("entry");
/* 	for (i=0; i<entries.length; i++){
		alert(entries[i].innerText);
		 */
		//for (i=0; i<3; i++){
		alert(entries[i].innerText);	
	//}

} 


// read에서 eread 요청하듯 (post) eread에서 ebookcont 거쳐서 eread로 다시 오기.
function ereadTest2(){
	if(eread.name != null){
		document.eread.submit();
	}else{
		return false;
	}
}
</script>

	<form action="eread" name="eread" method="post" target="_blank" >
		<input type="hidden" name="desc2" value="${dto.desc2}">
		<input type="hidden" name="author" value="${dto.author}">
		<div class="form-group">
			<button class="btn btn-light" type="button" onclick="ereadTest2();">읽기</button>
		</div>
	</form>


</body>
</html>