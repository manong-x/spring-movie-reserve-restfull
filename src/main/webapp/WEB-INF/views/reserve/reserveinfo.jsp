<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- 아이콘 -->
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<!-- 구글 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Bowlby+One+SC&family=Bungee&family=Noto+Sans+KR:wght@400;500&display=swap" rel="stylesheet">

<!-- 파비콘 설정-->
<link rel="shortcut icon" href="img/movie_favicon.ico" type="image/x-icon">

<title>예매 관리 페이지(관리자)</title>

<!-- 스타일, js 라이브러리 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/CSS/reserve/reserveinfo.css"/>
<script src="https://kit.fontawesome.com/bb29575d31.js"></script>
<script src="${pageContext.request.contextPath }/resources/JS/reserve/reserveinfo.js"></script>
</head>
<body>
<jsp:include page="../admin/managerTheme.jsp" />
	
	<h2>예매 관리 목록</h2>

	<div id="list">
		<div class="clear"></div>
		<form id="frmList" name="frmList">
			<table id="reserveTable">
				<thead>
					<th>번호</th>
					<th>예매번호</th>
					<th>예매자</th>
					<th>예매영화</th>
					<th>상영관</th>
					<th>예매날짜</th>
					<th>예매시간</th>
					<th>예매좌석</th>
					<th>결제가격</th>
					<th>결제일</th>
					<th></th>
				</thead>
				<tbody>
				
				</tbody>
			</table>
		</form>
		
		
	
	</div>
	
	<div class="clear"></div>
	
	
	<div class="center">
		<ul class="pagination" id="pagination">
		</ul>
	</div>


</body>
</html>