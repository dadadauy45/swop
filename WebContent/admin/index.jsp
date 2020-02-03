<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- <script src="js/jquery-1.11.2.js"></script> -->
<frameset rows="114,*"  scrolling='no'>
  	<frame src="${pageContext.request.contextPath }/admin/top.jsp" name="topFrame" id="topFrame">
  	<frameset cols="20%,78%" >
  		<frame src="${pageContext.request.contextPath }/admin/left.jsp" name="leftFrame" id="leftFrame">
  		<frame src="${pageContext.request.contextPath }/admin/welcome.jsp" name="rightFrame" id="rightFrame">
	</frameset>
</frameset>
</html>
