<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- include 지시자의 역할: 외부의 파일의 내용을 가져와서 삽입시켜줌 --%>    
<%@ include file="/WEB-INF/views/common/top.jsp" %>

<div class="card">
	<div class="card-header">
		게시물 수정
	</div>
	
	<div class="card-body">
		<form id="updateBoardForm" method="post" action="updateBoard" enctype="multipart/form-data">
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">bno</span></div>
				<input id="bno" type="text" name="bno" class="form-control" readonly value="${board.bno}"/>
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">btitle</span></div>
				<input id="btitle" type="text" name="btitle" class="form-control" value="${board.btitle}">
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">bcontent</span></div>
				<textarea id="bcontent" name="bcontent" class="form-control">${board.bcontent}</textarea>
			</div>
			
			<div class="input-group mt-2">
				<div class="input-group-prepend"><span class="input-group-text">battach</span></div>
				<input id="battach" type="file" name="battach" class="form-control">
				<c:if test="${board.battachoname != null}">
					<img src="attachDownload?bno=${board.bno}" width="150"/>
				</c:if>
			</div>
				
			<div class="mt-3">
				<button type="submit" class="btn btn-info btn-sm me-2">수정</button>
				<a class="btn btn-info btn-sm" href="boardList?pageNo=${pager.pageNo}">목록</a>
			</div>
		</form>
	</div>
</div>

<%-- include 액션의 역할: 외부의 JSP를 실행하고 그 결과를 삽입시켜줌 --%>
<jsp:include page="/WEB-INF/views/common/bottom.jsp"/>





