<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 01.08.15
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<html>
<head>
    <title>Categories</title>
  <style>
    #inline{
      float: left;
      display: inline;
    }
  </style>
</head>

<jsp:include page="/addCategory"></jsp:include>
<div id = "inline">
<jsp:include page="/itemList"></jsp:include>
  </div>
<div id = "inline">
<jsp:include page="/categoryList"></jsp:include>
</div>



</body>
</html>
