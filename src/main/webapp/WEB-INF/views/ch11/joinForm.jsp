<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		국제화(다국어 처리)
	</div>
	
	<div class="card-body">
		<form id="joinForm" method="post" action="#">
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text"><spring:message code="joinForm.id"/></span></div>
				<input id="mid" type="text" name="mid" class="form-control">
			</div>
			
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text"><spring:message code="joinForm.name"/></span></div>
				<input id="mname" type="text" name="mname" class="form-control"">
			</div>
			
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text"><spring:message code="joinForm.password"/></span></div>
				<input id="mpassword" type="password" name="mpassword" class="form-control">
			</div>
			
                     <div class="input-group">
                        <div class="input-group-prepend">
                           <span class="input-group-text"><spring:message code="joinForm.job"/></span>
                        </div>
                        <input id="mjob" type="text" name="mjob" class="form-control"">
                     </div>
                     
                     <div class="input-group">
                        <div class="input-group-prepend">
                           <span class="input-group-text"><spring:message code="joinForm.city"/></span>
                        </div>
                        <input id="mcity" type="text" name="mcity" class="form-control"">
                     </div>
		
			<div class="mt-3">
				<button class="btn btn-info btn-sm mr-2"><spring:message code="joinForm.btnJoin"/></button>
			</div>
		</form>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





