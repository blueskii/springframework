<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		회원 가입
	</div>
	
	<div class="card-body">
		<form id="joinForm" method="post" action="join">
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">아이디</span></div>
				<input id="mid" type="text" name="mid" class="form-control" value="${ch13Member.mid}">
			</div>
			<div class="text-danger" style="font-size: 0.7rem">${errorMessage}</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">이름</span></div>
				<input id="mname" type="text" name="mname" class="form-control" value="${ch13Member.mname}"/>
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">비밀번호</span></div>
				<input id="mpassword" type="password" name="mpassword" class="form-control"/>
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">이메일</span></div>
				<input id="memail" type="email" name="memail" class="form-control" value="${ch13Member.memail}"/>
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">유형</span></div>
				<select id="mrole" name="mrole" class="form-control" >
					<option value="ROLE_USER" <c:if test="${ch13Member == null or ch13Member.mrole=='ROLE_USER'}">selected</c:if>>사용자</option>
					<option value="ROLE_ADMIN" <c:if test="${ch13Member.mrole=='ROLE_ADMIN'}">selected</c:if>>관리자</option>
				</select>
			</div>
				
			<div class="mt-3">
				<input type="submit" value="가입" class="btn btn-info btn-sm me-2"/>
				<input type="reset" value="재작성" class="btn btn-info btn-sm me-2"/>
			</div>
		</form>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





