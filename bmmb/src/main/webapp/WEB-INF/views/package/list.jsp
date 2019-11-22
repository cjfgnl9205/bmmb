<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.package_list { padding : 20px 0 0 0;}
	
</style>
</head>
<body>
<div class="package_list">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin:0 0 50px 0;">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="${pageContext.request.contextPath }/images/package/package1.png" alt="First slide" style="height:220px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="${pageContext.request.contextPath }/images/package/package2.png" alt="Second slide" style="height:220px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="${pageContext.request.contextPath }/images/package/package3.png" alt="Third slide" style="height:220px;">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<section style="margin-bottom: 50px;">
		<div style="margin-bottom: 15px;">
			<button type="button" onclick="location.href='create'">패키지 등록</button>  <!-- 관지라 전용 -->
			<h2 style="color: #343a40; font-size: 24px; font-weight: 700;">아이유유</h2> 
		</div>
		<div>
			<div>
				<ul style="display:block;">
					<li style="width: 235px; border: 1px solid #ededed;">
						<a href="read" style="display: block; padding-bottom: 18px;     text-decoration: none;">
							<span style="height: 200px; display: block; ">
							<img src="${pageContext.request.contextPath }/images/package/iu1.jpg" style="width: 100%; height:100%;">
							</span>
							<span style="display: block; height:32px; font-size: 16px; line-height: 1.2; font-weight: bold; color: #222; padding:15px 0 0 10px;">하노이/하롱베이 4일/5일</span>
							<span style="display: block; height:32px;color: #f66044; font-size: 16px;font-weight: bold; padding:15px 0 0 10px;">290,000원~</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</section>
	
	<section style="margin-bottom: 50px;">
		<div style="margin-bottom: 15px;">
			<h2 style="color: #343a40; font-size: 24px; font-weight: 700;">아이유유</h2>
		</div>
		<div>
			<div>
				<ul style="display:block;">
					<li style="width: 235px; border: 1px solid #ededed;">
						<a href="" style="display: block; padding-bottom: 18px;     text-decoration: none;">
							<span style="height: 200px; display: block; ">
							<img src="${pageContext.request.contextPath }/images/package/iu1.jpg" style="width: 100%; height:100%;">
							</span>
							<span style="display: block; height:32px; font-size: 16px; line-height: 1.2; font-weight: bold; color: #222; padding:15px 0 0 10px;">하노이/하롱베이 4일/5일</span>
							<span style="display: block; height:32px;color: #f66044; font-size: 16px;font-weight: bold; padding:15px 0 0 10px;">290,000원~</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</section>
	
	
	<section style="margin-bottom: 50px;">
		<div style="margin-bottom: 15px;">
			<h2 style="color: #343a40; font-size: 24px; font-weight: 700;">...여행정보</h2>
		</div>
		<div>
			<div style="display:flex; border: 1px solid #ededed; background-color: #f8f9fa;">
				<div style="width : 50%; display:block; margin : 50px 100px 50px 100px;">
					<img src="${pageContext.request.contextPath }/images/icon/facebook_icon.jpg"   style="height: 30px; width: 30px;">
					<a href="#" style="color: #2b96ed; text-decoration: none;     font-size: 15px; font-weight: 700; margin-top: 12px;">페이스북></a>
					<p style="color: #666d75; font-size: 14px;">마이리얼트립의 네이버 블로그에서 리얼생생 여행정보, 여행 후기, 추천 가이드 정보를 확인해보세요.</p>
				</div>
				<div style="width : 50%; display:block; margin : 50px 100px 50px 100px;">
					<img src="${pageContext.request.contextPath }/images/icon/insta_icon.png"   style="height: 30px; width: 30px;">
					<a href="#" style="color: #2b96ed; text-decoration: none;     font-size: 15px; font-weight: 700; margin-top: 12px;">인스타그램></a>
					<p style="color: #666d75; font-size: 14px;">마이리얼트립의 네이버 블로그에서 리얼생생 여행정보, 여행 후기, 추천 가이드 정보를 확인해보세요.</p>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>
