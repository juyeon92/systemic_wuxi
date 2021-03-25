<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../inc/-inc-header.jsp" %>



<!-- Content -->
<div>
    <!-- Banner -->
    <div class="sub-ban ">
        <div class="container">
            <div class="row justify-content-center pt-5 pb-4">
                <div class="col-lg-12 col-sm-12">
                    <h3 class="subj_tit text-center"><span>Design</span>Service</h3>
                </div>
            </div>
        </div>
    </div>

    <!-- page navigation -->
    <div class="b-1-6 mobile-hide">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/puble/home">홈</a></li>
                <li class="breadcrumb-item">파운드리 서비스</li>
                <li class="breadcrumb-item active" aria-current="page">Design Service</li>
            </ol>
        </div>
    </div>


    <!-- cnt -->

    <div class="site-section" >
       <div class="container">



               <h5 class="s-title bb-2-r cl-rd text-center pb-3">고객 설계 지원을 위한 다양한 IP 제공</h5>

               <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="500" >
                   <table class="table table-bordered table-type1 table-bold mobile-hide">

                       <thead>
                       <tr>
                            <th rowspan="2" class="th-bg-rd">Tech</th>
                            <th rowspan="2" class="th-bg-og">Standard Cell</th>
                            <th colspan="2" class="th-bg-og">SRAM</th>
                            <th colspan="3" class="th-bg-og">NVM</th>
                            <th rowspan="2" class="th-bg-og">IP</th>
                       </tr>
                       <tr>
                           <th class="th-bg-og">Bit Cell</th>
                           <th class="th-bg-og">Compiler</th>
                           <th class="th-bg-og">OTP</th>
                           <th class="th-bg-og">MTP</th>
                           <th class="th-bg-og">eFlash</th>
                       </tr>
                       </thead>
                       <tbody>
                       <tr>
                           <th class="th-bg-rd">HV CMOS</th>
                           <td>15T<br>13T<br>11T</td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>

                       <tr>
                           <th class="th-bg-rd">BCDMOS</th>
                           <td>11T<br>9T</td>
                           <td><div id="circle" class="center"></div></td>
                           <td>M31</td>
                           <td>SKHYIS<br>eMemory</td>
                           <td>SKHYIS<br>eMemory<br>YMC</td>
                           <td></td>
                           <td></td>
                       </tr>

                       <tr>
                           <th class="th-bg-rd">CIS</th>
                           <td>11T<br>9T</td>
                           <td><div id="circle" class="center"></div></td>
                           <td></td>
                           <td><span class="cl-rd">eMemory</span></td>
                           <td></td>
                           <td></td>
                           <td></td>
                       </tr>

                       <tr>
                           <th class="th-bg-rd">Mixed<br>Signal</th>
                           <td>7T</td>
                           <td><div id="circle" class="center"></div></td>
                           <td>M31</td>
                           <td></td>
                           <td>YMC</td>
                           <td>SST</td>
                           <td><span class="cl-rd">ADC, PLL <br> BRG, LDO <br> POR</span></td>
                       </tr>

                       </tbody>
                   </table>
               </div>
               <img class="PC-hide" src="${pageContext.request.contextPath}/resources/images/service_m.jpg">
               <span class="s-title cl-rd">Under Development</span>

       </div>
    </div>

    <div class="site-section">
        <div class="container">
            <h5 class="s-title bb-2-r cl-rd text-center pb-3">Analog 설계를 위한 EDA Tool 지원</h5>
            <h6 class="s-title">PDK based Analog Design flow</h6>
            <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="500" >
                <img src="http://www.skhynixsystemic.cn/common/images/design_service_pic2.png">
            </div>
            <h6 class="s-title pt-5">EDA tool support status</h6>
            <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="900" >
                <img src="http://www.skhynixsystemic.cn/common/images/design_service_pic3.png">
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <h5 class="s-title bb-2-r cl-rd text-center pb-3">Digital 설계를 위한 EDA Tool 지원</h5>
            <h6 class="s-title">Digital Design Flow</h6>
            <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="500" >
            <img src="http://www.skhynixsystemic.cn/common/images/design_service_pic4.png">
            </div>

            <h6 class="s-title pt-5">EDA tool support status</h6>
            <div data-aos="fade-up" aos-offset="300" aos-easing="ease-in-sine" aos-duration="900" >
            <img src="http://www.skhynixsystemic.cn/common/images/design_service_pic5.png">
            </div>
        </div>
    </div>



    <!-- cnt/END -->




</div>

<%@include file="../inc/-inc-footer.jsp" %>