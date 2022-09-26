<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<%@ include file="head.jsp" %>
	</head>
 <body>
	<div class="d-flex" id="wrapper">
		<jsp:include page="menu.jsp" />
		<div id="page-content-wrapper">
			<jsp:include page="nav.jsp" />
			<div class="container-fluid">
			${sessionScope.name } 사마 도-모.
				<div style="margin=0 auto; wudth: 95%;">
					<table class="table table-striped table-hover">
						<tr>

							<td>번호</td>
							<td>제목</td>
							<td>날짜</td>
							<td>작성자</td>

						</tr>
						<c:forEach items="${list }" var="l">
						<tr>

							<td>${l.board_no }</td>
							<td>
							<a href="./detail.do?bno=${l.board_no }">
							${l.board_title }
							<c:if test="${l.commentCount gt 0 }">
								<span class="badge bg-secondary">${l.commentCount }</span>
							</c:if>	
							</a> 
							</td>
							<td>${l.board_date }</td>
							<td>${l.b_name } ${detail.b_date }</td>
							<td>${l.borad_content }</td>
						</tr>
						</c:forEach>
					</table>
							
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
</body>
</html>