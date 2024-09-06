<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		게시물 정보
	</div>
	
	<div class="card-body">
		<p>번호: ${board.bno}</p>
		<p>제목: ${board.btitle}</p>
		<p>글쓴이: ${board.mid}</p>
		<p>날짜: <fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/></p>
		<p>조회수: ${board.bhitcount}</p>
		
		<c:if test="${board.battachoname != null}">
			<div class="mb-2">
				<p>첨부파일: <a href="attachDownload?bno=${board.bno}">${board.battachoname}</a></p>
				<img src="attachDownload?bno=${board.bno}" width="150"/>
			</div>
		</c:if>
		
		<p>내용: ${board.bcontent}</p>
		
		<hr/>
		
		<a href="boardList?pageNo=${pager.pageNo}" class="btn btn-info btn-sm">목록</a>
		<a href="updateBoardForm?bno=${board.bno}" class="btn btn-info btn-sm">수정</a>
		<a href="deleteBoard?bno=${board.bno}" class="btn btn-info btn-sm">삭제</a>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





