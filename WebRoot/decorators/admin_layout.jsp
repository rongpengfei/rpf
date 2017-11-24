<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title><decorator:title default="家庭消费系统" /></title>

<decorator:head />
  <link href="${ctx}/upload_files/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100italic,100,300,300italic' rel='stylesheet' type='text/css'>
    <!-- Theme CSS -->
    <link href="${ctx}/upload_files/css/agency.min.css" rel="stylesheet">
</head>
<body id="page-top" class="index">
  <!-- Navigation -->
 
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Creative Agency</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">花费</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#clients">Clients</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                     <li>
                        <a class="page-scroll" href="javascript:"> 欢迎${sessionScope.admininfo.name}</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header style="height: 100px">
        <div class="container">
            <div class="intro-text">
                
            </div>
        </div>
    </header>

 

  
   

    <!-- jQuery -->
    <script src="${ctx}/upload_files/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${ctx}/upload_files/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="${ctx}/upload_files/js/jqBootstrapValidation.js"></script>
    <script src="${ctx}/upload_files/js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="${ctx}/upload_files/js/agency.min.js"></script>


<br>

	<decorator:body />
	
</body>
</html>