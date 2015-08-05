<%@ page import="com.model.Item" %>
<%--
  Created by IntelliJ IDEA.
  User: erzyasd
  Date: 03.08.15
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Add Item</title>

  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="json-jquery.js" type="text/javascript"></script>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<h1>Add Item</h1>
<form:form method="post" action="addItem" commandName="item">
  <table>
    <tr>
      <td><form:label path="name">Name</form:label></td>
      <td><form:input path="name"/></td>
    </tr>
    <tr>
      <td><form:label path="category">Category</form:label></td>
      <td>

            <form:select path="category">
                <c:forEach items="${categories}" var="categor">
                    <form:option value="${categor.id}">${categor.id}</form:option>
                </c:forEach>
            </form:select>
        </td>

    </tr>
    <tr>
      <td colspan="1"><input type="submit" value="Add Item"/></td>
    </tr>
  </table>
</form:form>

<%--<script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/jQuery.js" >

    $(document).ready(function() {
        $('#catSelect').click().switchValue();
    });




    $.fn.switchValue = function(options) {

        var mydiv1 = document.getElementById("clasCat");
        var $temp = this;
        console.log($temp.value());

        var tempVal = $temp.value();
        console.log(tempVal);
        mydiv1.set(tempVal);

    };
</script>--%>
</body>
</html>