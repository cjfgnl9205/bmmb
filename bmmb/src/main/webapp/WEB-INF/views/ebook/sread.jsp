<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e북 미리보기</title>
<style>
	.sread { padding : 20px 0 0 0;}
	tr td a { color:black;}

.header{	
  position: fixed;
  top: 0;
  z-index: 1;
  width: 100%;
  background-color: #f1f1f1;
}

.progress-container{
  width: 100%;
  height: 5px;
  background: #ccc;
}

.progress-bar{
  height: 5px;
  background: #4caf50;
  width: 0%;
}

</style>
<script>	

window.onscroll = function(){ 	myFunction()  };

function myFunction(){
	
	var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
	var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
	var scrolled = (winScroll / height) * 100;
	 document.getElementById("myBar").style.width = scrolled + "%";
	
}


</script>
</head>
<body>

<div class="container">
	<h2 style="padding-bottom: 20px;">sread</h2><br>

	${dto.ebook_ID }<br>
	${dto.page1}<br>
	${dto.page2}<br>
	${dto.page3}
	
	<p>
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu.
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu.
	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet venenatis urna cursus. In hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Commodo elit at imperdiet dui accumsan. Massa ultricies mi quis hendrerit dolor magna eget. Nascetur ridiculus mus mauris vitae ultricies leo integer malesuada. Morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae semper. Neque ornare aenean euismod elementum nisi quis eleifend. Ac odio tempor orci dapibus ultrices in iaculis nunc. Tellus orci ac auctor augue mauris. Ultricies tristique nulla aliquet enim tortor at auctor. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Volutpat sed cras ornare arcu.
	</p>
	
	
	<!-- s: scroll bar indicator -->
	<div class="header">
		<h1>e북 미리보기</h1>
		<div class="progress-container">
			<div class="progress-bar" id="myBar"></div>
		</div>
	</div>
	<!-- e: scroll bar indicator -->

</div>



</body>
</html>