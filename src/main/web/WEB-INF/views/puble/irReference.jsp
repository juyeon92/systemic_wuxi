<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../inc/-inc-header.jsp" %>



<!-- Content -->
<div>

    <!-- Banner -->
    <div class="sub-ban ">
        <div class="container">
            <div class="row justify-content-center pt-5 pb-4">
                <div class="col-lg-4 col-sm-12">
                    <h3 class="subj_tit"><span>공시정보</span></h3>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <p class="txt1">첨부파일을 다운받아 공시정보 내용을 확인하실 수 있습니다.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- page navigation -->
    <div class="b-1-6 mobile-hide">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/puble/home">홈</a></li>
                <li class="breadcrumb-item">IR/홍보</li>
                <li class="breadcrumb-item active" aria-current="page">공시정보</li>
            </ol>
        </div>
    </div>


    <!-- cnt -->
    <div class="site-section" style="height: 500px;">
       <div class="container">

           <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="800" >
            <table class="table table-wrap-bordered table-responsive table-type1 mobile-hide">
               <colgroup>
                   <col style="width: 10%">
                   <col style="width: 50%">
                   <col style="width: 20%">
                   <col style="width: 20%">
               </colgroup>
               <tbody>
               <tr>
                   <th>번호</th>
                   <th>공시정보</th>
                   <th>날짜</th>
                   <th>첨부파일</th>
               </tr>
               <tr>
                   <td></td>
                   <td></td>
                   <td></td>
                   <td>
                       <!--<a href="/download/SK_hynix_system_ic_(Wuxi)_Co.Ltd_FM_727602.pdf" class="btn btn-line btn-m-block-mid" download>ISO 9001 Certification <i class="fa fa-file-pdf-o"></i></a>-->
                   </td>
               </tr>
               </tbody>
           </table>
           </div>

           <table class="table table-wrap-bordered table-responsive Dlabel2 PC-hide">

               <tbody>
               <tr>
                   <td class="th">1</td>
                   <td data-label="공시정보"></td>
                   <td data-label="날짜"></td>
                   <td data-label="첨부파일">
                       <!--<a href="/download/SK_hynix_system_ic_(Wuxi)_Co.Ltd_FM_727602.pdf" class="btn btn-line btn-m-block-mid" download>ISO 9001 Certification <i class="fa fa-file-pdf-o"></i></a>-->
                   </td>
               </tr>
               <tr>
                   <td class="th">2</td>
                   <td data-label="공시정보"></td>
                   <td data-label="날짜"></td>
                   <td data-label="첨부파일">
                       <!--<a href="/download/SK_hynix_system_ic_(Wuxi)_Co.Ltd_FM_727602.pdf" class="btn btn-line btn-m-block-mid" download>ISO 9001 Certification <i class="fa fa-file-pdf-o"></i></a>-->
                   </td>
               </tr>
               </tbody>
           </table>



       </div>
    </div>

    <!-- cnt/END -->




</div>

<%@include file="../inc/-inc-footer.jsp" %>