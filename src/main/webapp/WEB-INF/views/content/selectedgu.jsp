<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container">
<!-- 
	 - 선택된 구에 대한 데이터를 보여줄 곳
	 - 데이터 베이스를 연동해서 이 부분에 대한 내용을 어떻게 보여줄 것인지!! 
	 - mybatis 사용하자! 
-->
	<table class="table table-bordered">
		<tr>
			<th>City</th>
			<th> <%= request.getParameter("city") %> </th>
		</tr>
	
	</table>

	


</div>
	