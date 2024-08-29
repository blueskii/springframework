<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		데이터(객체)사용 범위
	</div>
	
	<div class="card-body">
		<%-- page 사용 범위 --%>
		<c:set var="key0" value="value0" scope="page"/>
		
		<%-- 각 범위의 데이터을 얻고 출력 --%>
		<p>key0: ${key0}</p>
		<p>key1: ${key1}</p>
		<p>key2: ${key2}</p>
		<p>key3: ${key3}</p>
		<p>key4: ${key4}</p>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





