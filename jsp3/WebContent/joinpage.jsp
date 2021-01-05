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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script type="text/javascript" src="assets/js/masonry.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.fitvids.js"></script>
<script type="text/javascript" src="assets/js/index.js"></script>
 
 <script type="text/javascript">
 $(function(){
		$("#btnJoin").click(function(){
			var userid=$("#userid").val();
			var passwd=$("#passwd").val();
			var name=$("#name").val();
			var email=$("#email").val();
			var hp=$("#hp").val();
			//파라미터 구성 {"변수명":값, "변수명":값, "변수명":값,...};
			var param={"userid":userid, "passwd":passwd, "name":name,
					"email":email, "hp":hp};
			
			
			if(userid=="") {
				alert('아이디를 입력하세요');
				return;
			}
			if(passwd=="") {
				alert('비밀번호를 입력하세요');
				return;
				
			}
			if(name=="") {
				alert('이름을 입력하세요');
				return;
			
			}	
			if(email=="") {
				alert('이메일을 입력하세요');
				return;	
			}	
			if(hp=="") {
				alert('전화번호를 입력하세요');
				return;
			} 
				
				
				
			else{
				$("#result").html(result);
				alert('회원가입이 되었습니다.');
				}
			
			$.ajax({
				type: "post",
				url: "../jsp02/member_servlet/join.do",
				data: param,
				success: function(){
					alert("처리가 완료되었습니다.");
				}
			});
		});
	});

/* $(function(){//페이지 로딩이 끝나면 자동으로 실행되는 코드
	list();//아래 list()호출	
	$("#btnSave").click(function(){
		insert();
	});
})

$("#btnjoin").click(function(){
	var userid=$('#userid').val();
	var passwd=$('#passwd').val();
	var passwd=$('#name').val();
	var passwd=$('#email').val();
	var passwd=$('#hp').val();
	
	if(userid=="") {
		alert('아이디를 입력하세요');
		return;
	}
	if(passwd=="") {
		alert('비밀번호를 입력하세요');
		return;
		
	}if(name=="") {
		alert('이름을 입력하세요');
		return;
		
	}if(email=="") {
		alert('이메일을 입력하세요');
		return;
		
	}if(hp=="") {
		alert('전화번호를 입력하세요');
		return;
		
	}else{
		$("#result").html(result);
		alert('회원가입이 완료되었습니다.');
		
		}
	
	document.form1.action="${path}/member_servlet/login.do";
	document.form1.submit();	
	
	
	
	
	 */
	/* var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&hp="+$("#hp").val();
	$.ajax({
		type: "post",
		url: "/jsp3/member_servlet/join.do",
		data: param,
		success: function(){
			list();//회원목록 갱신
			//입력값 초기화
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#hp").val("");
		}
	});

} */

/* 
function list(){
	//회원 목록을 div에 출력, 백그라운드로 실행
	$.ajax({
		type: "post",
		url: "/jsp3/member_servlet/list.do",
		success: function(result){
			console.log(result);//F12 consol에서 응답text 확인
			$("#memberList").html(result);
			alert("처리가 완료되었습니다.");
		}
	});
} */
</script>
    
  <!--   <script>
    function send_go(){
        if(document.f.name.value == ""){
            alert("이름을 입력하세요");
            document.f.name.focus();
            return;
        }
       
        if(document.f.id.value == ""){
            alert("아이디를 입력하세요");
            document.f.id.focus();
            return;
        }
       
        if(document.f.pw.value == ""){
            alert("패스워드를 입력하세요");
            document.f.pw.focus();
            return;
        } else if (document.f.pw.value != document.f.pwc.value){
            alert("암호가 일치하지 않습니다. 다시 입력하세요");
            document.f.pw.value = "";
            document.f.pwc.value = "";
            document.f.pwd.focus();
            return;
        }
   
       
        //요청 URL
        document.f.action = "ex05_resp.jsp";
       
        //서버쪽에 보내기
        document.f.submit();
    }
 
 
</script> -->

</head>
<body class="home-template">
<div class="site-wrapper">
	<nav class="main-nav overlay clearfix">
	<a class="blog-logo" href="index.html"><img src=assets/img/logo2.png alt="Fashion Critiques"/></a>
	<ul id="menu">
		<li class="nav-home nav-current" role="presentation"><a href="loginpage.jsp">Please login.</a></li>

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
<div>
<h2>회원가입과 로그인</h2>
아이디 : <input id="userid"> <br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"> <br>
이메일 : <input id="email"> <br>
휴대폰 : <input id="hp"> <br>
<button id="btnJoin">회원가입</button>

</div>
    
 
	<br>
  <a href="loginpage.jsp" class="button">Login</a> 
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
		Review and my thoughts <a href="http://localhost/jsp02/index.html">Nectaria</a>
	
	</footer>
</div>

</body>
</html>