<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		장바구니
	</div>
	
	<div class="card-body">
		<ul>
			<c:forEach items="${cart.contents}" var="item">
				<li class="m-2">
					<span>${item.pname}</span> 
					<a href="deleteitem?pno=${item.pno}" class="btn btn-danger btn-sm">삭제</a>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





