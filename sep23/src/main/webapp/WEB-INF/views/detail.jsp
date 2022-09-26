<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="head.jsp" />
</head>
<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<jsp:include page="menu.jsp" />
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<jsp:include page="nav.jsp" />
			<!-- Page content-->
			<div class="container-fluid">
				<div>${detail }</div>
				<button class="btn btn-primary" onclick="location.href='./update.do'">수정</button>
				<button class="btn btn-danger" onclick="location.href='./delete.do'">삭제</button>
				<button class="btn btn-success" onclick="location.href='./main.do'">보드</button>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
</body>
</html>