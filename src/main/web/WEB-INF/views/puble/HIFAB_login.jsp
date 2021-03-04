<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>HIFAB 연동</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/mdi/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/notokr.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/roboto.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />

    <!-- Template CSS-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" media="( min-width:992px)"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles_m.css" rel="stylesheet" media="( min-width:0px ) and ( max-width:991px )"/>


    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
</head>
<body translate="no" data-aos-easing="ease" data-aos-duration="1200" data-aos-delay="0">

<div class="bg-light-danger site-section h-100">
    <div class="container2 vertical-center" id="container center">


            <div class="row justify-content-center">
                <div class="col-md-6 cl-wh text-center align-self-center">
                    <i class="cl-wh icon-2Xlg fa fa-user-circle"></i>
                    <h5 class="text-center">HIFAB login</h5>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 box pt-10 pb-10 ms-md-auto">
                    <input class="form-control mb-4" id="loginid" type="ID" placeholder="ID">
                    <input class="form-control mb-4" id="loginpw" type="password" placeholder="Password">
                    <button class="btn btn-danger btn-lg btn-block" >로그인</button>
                </div>
            </div>


    </div>
</div>

</body>
</html>
