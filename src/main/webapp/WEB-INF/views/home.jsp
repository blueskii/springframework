<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		Home
	</div>
	
	<div class="card-body">
		<img 
			src="${pageContext.request.contextPath}/resources/image/photos/photo1.jpg"
			height="100"/>
		<img 
			src="resources/image/photos/photo2.jpg"
			height="100"/>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





