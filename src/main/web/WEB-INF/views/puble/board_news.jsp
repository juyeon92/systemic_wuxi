<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../inc/-inc-header.jsp" %>



<!-- Content -->
<div>


    <!-- Banner -->
    <div class="sub-ban ">
        <div class="container">
            <div class="row justify-content-center pt-5 pb-4">
                <div class="col-lg-4 col-sm-12">
                    <h3 class="subj_tit"><span>게시판</span>& 뉴스</h3>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <p class="txt1">시스템아이씨 보도자료 및 다양한 소식을 확인 하실 수 있습니다.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- page navigation -->
    <div class="b-1-6 mobile-hide">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/puble/home">홈</a></li>
                <li class="breadcrumb-item">Contact US & Support</li>
                <li class="breadcrumb-item active" aria-current="page">게시판&뉴스</li>
            </ol>
        </div>
    </div>

    <div class="site-section">
      <div class="container" id="container">
        <div class="tabpanel">

            <!-- Nav tabs -->
            <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="500" >
            <ul class="nav-tab nav-justified mb-3" role="tablist">
                <li role="presentation" class="active" ><a class="nav-link" href="#news" aria-controls="news" role="tab" data-toggle="tab">NEWS</a></li>
                <li role="presentation"  ><a class="nav-link" href="#board" aria-controls="board" role="tab" data-toggle="tab">BOARD</a></li>
            </ul>
            </div>

            <!-- Tab panes -->
            <div class="tab-content">

                <!--simul-->
                <div role="tabpanel" class="tab-pane active " id="news">
                    <%@include file="../inc/-inc-news.jsp" %>
                </div>

                <!--simul-->
                <div role="tabpanel" class="tab-pane" id="board">
                    <%@include file="../inc/-inc-board.jsp" %>
                </div>

            </div>
        </div>
    </div>

        <!--pagination-->
        <div class="text-center mt-5">
            <%@include file="../inc/-inc-pagination.jsp" %>
        </div>
        <!--pagination/End-->
    </div>





</div>

<%@include file="../inc/-inc-footer.jsp" %>