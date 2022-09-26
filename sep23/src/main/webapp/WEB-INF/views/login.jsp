<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- 메뉴 따로 뺐습니다. -->
            <jsp:include page="menu.jsp"/>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- 네비게이션도 뺐습니다. -->
                <jsp:include page="nav.jsp"/>
                <!-- Page content-->
                <div class="container-fluid">
                    <!-- 본문내용은 여기에 -->
                    <div style="margin:0 auto; width:auto; height:auto; margin-top:calc(50vh - 300px); background-color: green">
                    	<div style="height: 200px; width: auto; background-color: white; text-align:center; vertical-align: middle;">
                   			<img alt="login" src="./resources/img/login.png">
                    		<form action="./login.do" method="post">
                    			<input type="text" name="id" required="required">
                    			<input type="password" name="pw" required="required">
	                    		<button	type="submit">로그인</button>
	                    	</form>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>