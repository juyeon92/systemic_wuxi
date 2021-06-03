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

          <!--tit-->
          <div class="box3 bt-2-3 bb-1-6">
              <div class="row">
                  <div class="col-lg-8 col-sm-12"><h5 class="mb-0">board & news 타이틀 영역</h5></div>
                  <div class="col-lg-4 col-sm-12 text-right"><span class="bd-view">48</span> <span class="bd-date">2021.01.30</span> <span class="bd-admin">관리자</span></div>
              </div>
          </div>

          <!--main cnt-->
          <div class="bb-1-6 p-3">
              <div class="mb-2">&nbsp;<i class="mdi mdi-attachment"></i> 첨부파일(4) </div>
              <a>
                  <div class="p-2 bordered-1-e w-50">
                      <span class="strong"><i class="icon-mm mdi mdi-image f-left pr-4"></i>첨부파일 제목입니다.jpg</span>
                  </div>
              </a>
              <a>
                  <div class="p-2 bordered-1-e w-50 mt-2">
                      <span class="strong"><i class="icon-mm mdi mdi-file-powerpoint f-left pr-4"></i>첨부파일 제목입니다.ppt</span>
                  </div>
              </a>
              <a>
                  <div class="p-2 bordered-1-e w-50 mt-2">
                      <span class="strong"><i class="icon-mm mdi mdi-file-pdf f-left pr-4"></i>첨부파일 제목입니다.pdf</span>
                  </div>
              </a>
              <a>
                  <div class="p-2 bordered-1-e w-50 mt-2">
                      <span class="strong"><i class="icon-mm mdi mdi-file-excel f-left pr-4"></i>첨부파일 제목입니다.exc</span>
                  </div>
              </a>
          </div>
          <div class="box3 bb-1-6">

              <span class="d-block pb-4">
                  관리자가 작성한 게시물 내용이 들억는영역입니다!<br>
                  아래는 영상도 들어가고, 이미지도 들어가고 자유로운 영역으로 노출<br>
                  - 텍스트 다음 이미지 or 영상올시 자동으로 pb-4클래스 넣어주세요<br>
                  - 영상 or 이미지만 가운데 정렬, 텍스트는 왼쪽 정렬
                  - 영상삽입시 width 고정 height auto (아래 이미지는 단순 예시입니다)
              </span>


                <div class="db-movie text-center p-10" style="width: 600px; margin: 0 auto;"></div>

          </div>
          <div class="pt-4 pb-4 bb-1-3 ">
              <div class="row">
                  <div class="col-lg-9 col-sm-12"><span><strong>출처 :</strong> www.naver.com(외부 url 입력시만 노출)</span></div>
                  <div class="col-lg-3 col-sm-12 text-right"><a type="button" href="board_news" class="btn btn-danger btn-m-block-mid"> 목록보기</a></div>
              </div>

          </div>

          <!--after-->
          <div class="p-3 bt-1-c bb-1-6">
              <a href="#">
              <div class="row">
                  <div class="col-lg-1 col-sm-4"><p class="p-0 m-0">다음글</p></div>
                  <div class="col-lg-11 col-sm-8 ellipsis-3"><span>다음 공지사항 & 게시판 제목이 나옵니다.</span></div>
              </div>
              </a>
          </div>
          <!--before-->
          <div class="p-3 bb-1-6">
              <a href="">
                  <div class="row">
                      <div class="col-lg-1 col-sm-4"><p class="p-0 m-0">이전글</p></div>
                      <div class="col-lg-11 col-sm-8 ellipsis-3"><span>이전에 쓰였던 공지사항 & 게시판 제목이 나옵니다.</span></div>
                  </div>
              </a>
          </div>
    </div>


    </div>





</div>

<%@include file="../inc/-inc-footer.jsp" %>