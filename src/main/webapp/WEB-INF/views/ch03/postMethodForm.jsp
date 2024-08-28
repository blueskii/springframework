<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		Post 방식 폼
	</div>
	
	<div class="card-body">
		<form method="post" action="receivePostMethodForm">
			<div class="input-group">
				<span class="input-group-text">param1</span>
				<input type="text" name="param1" class="form-control" value="문자열">
			</div>
			<div class="input-group">
				<span class="input-group-text">param2</span>
				<input type="text" name="param2" class="form-control" value="5" >
			</div>
			<div class="input-group">
				<span class="input-group-text">param3</span>
				<input type="text" name="param3" class="form-control" value="3.14">
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
				<input type="date" name="param5" class="form-control" value="2030-12-05">
			</div>
			<input class="mt-2 btn btn-info btn-sm" type="submit" value="요청"/>
		</form>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/bottom.jsp" %>

