<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		AJAX로 파라미터 보내기
	</div>
	
	<div class="card-body">
		<form>
			<div class="input-group">
				<span class="input-group-text">param1</span>
				<input type="text" id="param1" name="param1" class="form-control" value="문자열">
			</div>
			<div class="input-group">
				<span class="input-group-text">param2</span>
				<input type="text" id="param2" name="param2" class="form-control" value="5" >
			</div>
			<div class="input-group">
				<span class="input-group-text">param3</span>
				<input type="text" id="param3" name="param3" class="form-control" value="3.14">
			</div>
			<div class="input-group">
				<span class="input-group-text">param4</span>
				<div class="form-control d-flex">
					<div>
					  <input type="radio" name="param4" checked value="true">
					  <label>true</label>
					</div>
					<div class="ms-3">
					  <input type="radio" name="param4" value="false">
					  <label>false</label>
					</div>
				</div>
			</div>
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">param5</span></div>
				<input type="date" id="param5" name="param5" class="form-control" value="2030-12-05">
			</div>
			<button type="button" onclick="requestAjax()" class="btn btn-info btn-sm mt-2">요청</button>
		</form>
		
		<script>
			function requestAjax() {
				var param1 = $("#param1").val();
				var param2 = $("#param2").val();
				var param3 = $("#param3").val();
				var param4 = $("input[name=param4]:checked").val();
				var param5 = $("#param5").val();
				
				const params = {
					param1:param1, 
					param2:param2, 
					param3, param4, param5
				};
				console.log(params);
				
				$.ajax({
					url: "requestAjax",
					type: "post",
					data: params,
					success: function(data) {
						console.log(data);
					}
				});
			}
		</script>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/bottom.jsp" %>

