<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #555555;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


</style>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Nectaria</title>
<meta name="description" content="Thoughts, reviews and ideas since 2010."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
<!-- <script src="../include/jquery-3.5.1.min.js"></script>-->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
<!-- ${path}를 사용하기 위해서는 header.jsp파일을 include해주어야함 -->
<%@ include file="../include/header.jsp" %>
<c:if test="${param.message == 'error' }">
	<script>
		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
	</script>
</c:if>
<script type="text/javascript">
$(function(){
	$("#logout").hide();
	
	$("#btnLogin").click(function(){
		var userid=$('#userid').val();
		var passwd=$('#passwd').val();
		
		if(userid=="") {
			alert('아이디를 입력하세요');
			$('#userid').focus();
			return;
		}
		if(passwd=="") {
			alert('비밀번호를 입력하세요');
			$('#passwd').focus();
			return;
		}
		
		document.form1.action="${path}/member_servlet/login.do";
		document.form1.submit();
		
		/* var param="userid="+$("#userid").val()
		+"&passwd="+$("#passwd").val(); */
		
		/* $.ajax({
			type: "post",
			url: "/jsp3/member_servlet/login.do",
			data: param,
			success: function(result){
				if(param==""){
					alert('아이디와 비밀번호를 확인해주세요');	
				}else{
				$("#result").html(result);
				alert('로그인 되었습니다.');
				$("#login").hide();
				$("#logout").show();
				}
			}
		}); */
	});
	$("#logout").click(function(){
		$("#login").show();
		$("#logout").hide();
		$("#result").html("");
	});
	
	$("#btnJoin").click(function(){
		var userid=$("#userid").val();
		var passwd=$("#passwd").val();
		var name=$("#name").val();
		var email=$("#email").val();
		var hp=$("#hp").val();
		//파라미터 구성 {"변수명":값, "변수명":값, "변수명":값,...};
		var param={"userid":userid, "passwd":passwd, "name":name,
				"email":email, "hp":hp};
		$.ajax({
			type: "post",
			url: "/jsp3/member_servlet/join.do",
			data: param,
			success: function(){
				alert('처리가 완료되었습니다.');
			}
		});
	});
});
 
function list(){
	//회원 목록을 div에 출력, 백그라운드로 실행
	$.ajax({
		type: "post",
		url: "/jsp3/member_servlet/list.do",
		success: function(result){
			console.log(result);//F12 consol에서 응답text 확인
			$("#memberList").html(result);+
			alert("처리가 완료되었습니다.");
		}
	});
}
</script>  
 
</head>
<body class="home-template">
<div class="site-wrapper">
	<nav class="main-nav overlay clearfix">.
	<a class="blog-logo" href="index.html"><img src="assets/img/logo2.png" alt="Fashion Critiques"/></a>
	<ul id="menu">
		<li class="nav-home nav-current" role="presentation"><a href="loginpage.jsp">Please login</a></li>

		<span class="socialheader">
		<a href="https://www.instagram.com/yong_9i8/?hl=ko"><span class='symbol'>circleinstagram</span></a>
		<a href="https://www.facebook.com/profile.php?id=100004836312461"><span class='symbol'>circlefacebook</span></a>
		<a href="https://www.youtube.com/"><span class='symbol'>circleyoutube</span></a>
		<a href="mailto:dldydrl114@naver.com"><span class='symbol'>circleemail</span></a>
		</span>
	</ul>
	</nav>
	<header class="main-header " style="background-image: url(assets/img/13.jpg)">
	<div class="vertical">
		<div class="main-header-content inner">
			<h1 class="page-title">Fashion Critiques</h1>
			<div class="entry-title-divider">
				<span></span><span></span><span></span>
			</div>
			<h2 class="page-description">Thoughts, reviews and ideas since 2010.</h2>
			<br><br>
			
			 
			
			
			
			 <div data-role="page" id="home">
    <form method="post" name="form1"  <%-- action="${path}/session_servlet/login.do" --%>>
      <div id="login">
      
      <h1>Login</h1>  
      <label for="userid">I..D </label>
      <input name="userid" id="userid" type="text">
      <br> 
      <label for="passwd">PW</label>
      <input name="passwd" id="passwd" type="password" > 
     <br> 
      <div>
        <div><!-- <a href="#"  id="btnLogin" 
        data-role="button" data-rel="close" >Login</a> -->
        <input type="button" id="btnLogin" value="login"> 
        </div>
      
		 <div><!-- <a href="joinpage.jsp"  
        data-role="button" data-rel="close">join membership</a>  -->
        <br>
        <br>
        <br>
        <br> 
        <a href="joinpage.jsp" class="button">join membership</a>

        </div>
        </div> 
      </div> 
    </form>
    
    
    
    
    
   <button id="logout">Logout</button>
        <div id="result"></div>
  	</div>
	</div>
	</div>
	<a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden">Scroll Down</span></a>
	</header>
	<footer class="site-footer clearfix">
	<a href="#top" id="back-to-top" class="back-top"></a>
	<div class="text-center">
		<a href="index.html">Nectaria</a> &copy; 2020<br/>
		Review and my thoughts <a href="http://localhost/jsp3/index.html">Nectaria</a>
	
	</footer>
	
</div>

</body>
</html>