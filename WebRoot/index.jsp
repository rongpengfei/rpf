<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <%  
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy");    
   java.util.Date currentTime = new java.util.Date();    
   int time =   Integer.parseInt(simpleDateFormat.format(currentTime).toString());
  
     %>  
<html lang="en-US" dir="ltr">
<base href="${ctx }">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  
    Document Title
    =============================================
    -->
    <title>登陆</title>
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="${ctx}/upload_files/assets/images/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="${ctx}/upload_files/assets/images/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${ctx}/upload_files/assets/images/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${ctx}/upload_files/assets/images/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${ctx}/upload_files/assets/images/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${ctx}/upload_files/assets/images/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="${ctx}/upload_files/assets/images/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${ctx}/upload_files/assets/images/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="${ctx}/upload_files/assets/images/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="${ctx}/upload_files/assets/images/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${ctx}/upload_files/assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="${ctx}/upload_files/assets/images/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${ctx}/upload_files/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="${ctx}/upload_files/assets/images/favicons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
    <!-- Default stylesheets-->
    <link href="${ctx}/upload_files/assets/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="${ctx}/upload_files/assets/lib/owl.carousel/dist/${ctx}/upload_files/assets/owl.carousel.css" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="${ctx}/upload_files/assets/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="${ctx}/upload_files/assets/css/colors/default.css" rel="stylesheet">
    <script src="${ctx}/upload_files/jquery-1.10.1.js" type ="text/javascript"></script>
    
    <script type="text/javascript">
    
    function login1(){
    	
    	
    	$.ajax({
    	    url:"${ctx}/gologin.do",
    	    type:"POST", //GET
    	    async: false,
    	    data:{
    	        name:$("#name").val(),pass:$("#pass").val()
    	    },
    	    success:function(data){
    	    	if(0==data.id){
    	    		alert("登录错误");
    	    	}else{
    	    		$("#subscription-form").submit();
    	    		  $("#id").val(data.id);
    	    		 
    	    	}
    	     
    	    }
    	});
    	
    	
    }
    </script>
  </head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <video id="video-background" autoplay="" loop="" muted="" poster="${ctx}/upload_files/assets/images/3.jpg">
        <source src="https://s3.amazonaws.com/distill-videos/videos/processed/2180/lighthouse.mp4" type="video/mp4">
      </video>
      <section class="main">
        <div class="content">
          <div class="container">
            <div class="content2">
              <h1>家庭理财</h1>
            </div>
            <div class="counter" id="countdown">
              <h2>离<%=(time+1) %>年还有<span class="days timenumbers">00 </span>&nbsp;天 <span class="hours timenumbers">00 </span>时 <span class="minutes timenumbers">00 </span>分 <span class="seconds timenumbers yellow-text">00 </span>秒</h2>
              <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                  <p>不知道写什么！！！</p>
                </div>
              </div>
            </div>
            <div class="subscribe">
              <div class="row">
                <div class="col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4 input-group subscribe-box">
                  <form class="subscribe-form" method="post" id="subscription-form" action="${ctx}/login.do">
                    <div class="input-group">
                     <input  id="id" name="id" value="" type="hidden" >
                      <input class="form-control notify-me" id="name" name="name" type="text" placeholder="用户名" required="">
                        <input class="form-control notify-me" id="pass" name="pass" type="password" placeholder="密码" required="">
                        <span class="input-group-addon">
                        <input class="btn btn-default notify-me"  onclick="login1();"  type="button" value="登陆"></span>
                     
                    </div>
                  </form>
                  <div id="subscription-response"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
    <script src="${ctx}/upload_files/assets/lib/jquery/dist/jquery.js"></script>
    <script src="${ctx}/upload_files/assets/lib/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${ctx}/upload_files/assets/lib/owl.carousel/dist/owl.carousel.js"></script>
    <script src="${ctx}/upload_files/assets/lib/ajaxchimp/jquery.ajaxchimp.js"></script>
    <script src="${ctx}/upload_files/assets/js/main.js"></script>
  </body>
</html>
