<script src="${pageContext.request.contextPath}/resources/js/handlebars.js"></script>

<!-- sample -->
<div class="modal fade" id="modal-sample" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				sample
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
				sample
			</div>
		</div>
	</div>
</div>
<!-- //sample -->

<!-- information -->
<div class="modal fade" id="modal-information" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				개인정보의 수집범위 및 이용목적
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
				<%@include file="-inc-Priv.jsp" %>
			</div>
			<div class="modal-footer">
				<a type="button" data-dismiss="modal" >
					<input class="btn btn-basic btn-m-block-mid btn-sm" type="button" value="닫기">
				</a>
			</div>
		</div>
	</div>
</div>
<!-- //information -->

<!-- sitemap -->
<div class="modal fade" id="modal-sitemap" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				Sitemap
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body p-0">
				<%@include file="-inc-sitemap.jsp" %>
			</div>

		</div>
	</div>
</div>
<!-- //sitemap -->




