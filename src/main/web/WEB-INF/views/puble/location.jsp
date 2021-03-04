<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../inc/-inc-header.jsp" %>



<!-- Content -->
<div>

    <!-- Banner -->
    <div class="sub-ban ">
        <div class="container">
            <div class="row justify-content-center pt-5 pb-4">
                <div class="col-lg-4 col-sm-12">
                    <h3 class="subj_tit"><span>회사위치</span></h3>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <p class="txt1">SK하이닉스 시스템아이씨는 구성원과 고객은 물론 협력사와 투자자 등 모든 이해관계자들의 가치를 창출하기 위해<br>
                        최고의 수준을 추구하는 SUPEX Spirit으로 치열한 도전을 이어가겠습니다.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- page navigation -->
    <div class="b-1-6 mobile-hide">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/puble/home">홈</a></li>
                <li class="breadcrumb-item">회사소개</li>
                <li class="breadcrumb-item active" aria-current="page">회사위치</li>
            </ol>
        </div>
    </div>


    <!-- cnt -->
    <div class="site-section">
        <div class="container" id="container">

            <div class="row">
                <div id="map_canvas" style="width:100%;height:430px;"></div>
            </div>

            <div class="row text-center mt-5 m-layout">
                <div class="col-lg-4 ">
                    <div class="animated fadeInLeft delay-01" data-animation="fadeInLeft" data-animation-delay="01">
                    <h5 class="s-title pt-3">회사 위치</h5>
                    </div>
                </div>
                <div class="col-lg-8 pt-3 bl-1-6">
                    <div class="animated fadeInRight delay-01" data-animation="fadeInRight" data-animation-delay="01">
                    <address>SK hynix system ic, 702 Zhide Rd, Xinwu District, Wuxi, Jiangsu </address>
                    </div>
                </div>

            </div>


        </div>


    </div>
    <!-- cnt/END -->




</div>

<%@include file="../inc/-inc-footer.jsp" %>

<script>
    window.onload = function() {
        var latlng = new google.maps.LatLng(31.516278, 120.473556);
        var marker_name = "에스케이 하이닉스 시스템아이씨";
        var marker_position = new google.maps.LatLng(31.516278, 120.473556);
        var myOptions = {
            zoom: 15,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            zoomControl : true,
            /*zoomControlOptions: {
                position: google.maps.ControlPosition.RIGHT_CENTER
            },*/
            streetViewControl : true,
            disableDoubleClickZoom : false,
            fullscreenControl : true,
            draggable  : true,
            scrollwheel : true,
            mapTypeControl : true,
            scaleControl : true,
            rotateControl : true,
            panControl : false
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),myOptions);
        var marker = new google.maps.Marker({
            position : marker_position,
            map : map,
            title : marker_name
        });
        function showAsCeterByMarker(){ //마커 기준 중앙으로
            map.setCenter(marker.getPosition());
        }
        google.maps.event.addDomListener(window, "resize", function() {
            var center = map.getCenter();
            google.maps.event.trigger(map, "resize");
            map.setCenter(center);

            showAsCeterByMarker();
        });
    }
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1f4NCRt_SORiLTAv1dwxhWXjYeRdi1fY"></script>