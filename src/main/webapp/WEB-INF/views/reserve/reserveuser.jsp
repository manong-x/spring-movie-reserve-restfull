<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="org.springframework.util.RouteMatcher.Route"%>
<%@page import="com.goldspoon.koreabox.reserveuser.beans.ReserveUserDTO"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%
	int uid = (int) session.getAttribute("mem_uid");
	String id = (String) session.getAttribute("mem_id");
	int mov_num = Integer.parseInt(request.getParameter("mov_num"));
	String mov_poster = request.getParameter("mov_poster");
%>

	<script>
	var mem_uid = <%=uid%>;
	var mem_id = "<%=id%>";
	var mov_num = <%= mov_num %>;
	var mov_poster = "<%= mov_poster %>";
	var path = "${pageContext.request.contextPath }";
	</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예매(사용자)</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/CSS/reserve/reserveuser.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/JS/reserve/reserveuser.js"></script>

</head>
<body>


	<%-- 날짜 선택하는 모달창 --%><!--  가장 먼저 뜸 -->
	<div id="dateChk" class="modal">
		<!-- <form class="modal-content animate" id="frmWrite" name="frmWrite" Method="POST"> -->
		<!-- <input type="hidden" id="aaa" value="${list}"/> -->
		<div class="modal-content animate">
			<div class="container">
				<h3 class="title">날짜 선택</h3>
				<span class="close" title="Close Modal">&times;</span>	<!-- 닫기버튼 -->
				
				<div class="d01 btn_group_write">  <!-- 날짜 선택 a태그 -->
				</div>
			</div>
		</div>
		<!-- </form> -->
	</div>
	
		<%-- 좌석 선택하는 모달창--%>
	<div id="seatChk" class="seatModal">
		<!-- <form class="modal-content animate" id="frmWrite" name="frmWrite" Method="POST"> -->
		<!-- <input type="hidden" id="aaa" value="${list}"/> -->
		<div class="seatModal-content animate">
			<div class="container">
				<h3 class="title">좌석 선택</h3>
				<div id="seatscreen">스크린</div>
				<span class="close" title="Close Modal">&times;</span>	<!-- 닫기버튼 -->
				
				<div id="seatimg">
					<table id="table">

					</table>
					<div id="done"><button id="seatdone" onsubmit="return false">좌석 선택 완료</button></div>

				</div>
			</div>
		</div>
		<!-- </form> -->
	</div>
	
		
	<div id="list">
		<table>
			<tr>
				<td>날짜</td>
				<td id="selectdate"></td>
			</tr>
			<tr>
				<td>영화</td>
				<td id="movieimg">
				<span id="moviename"></span>
				</td>
			</tr>
			<tr>
				<td>상영시간</td>
				<td id="movietime"></td>
			</tr>
			<tr>
				<td>인원선택</td>
				<td id="peopleCnt"></td>
			</tr>
			<tr>
				<td>좌석선택</td>
				<td id="seat"></td>
			</tr>
			<tr>
				<td>결제금액</td>
				<td id="pay"></td>
			</tr>
		</table>
		
<%-- 		<div>
			<div>날짜선택 <span id="selectdate"></span></div>
		</div>
		<hr>
		<div>
			<div>영화</div>
			<img alt="" src="${pageContext.request.contextPath }/resources/CSS/test/pp.jpg" width="100px" height="100px">
			<span id="moviename">영화이름</span>
		</div>
			 --%>
		
	
	</div>
	<div id="successbtn"></div>
	
	

</body>
</html>


