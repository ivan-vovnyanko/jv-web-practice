<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Manufacturers</title>
    </head>
<body>
    <h1>All Manufacturers:</h1>
    <br>
    <table>
      <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
      </tr>
      <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
          <td><c:out value="${manufacturer.id}" /></td>
          <td><c:out value="${manufacturer.name}" /></td>
          <td><c:out value="${manufacturer.country}" /></td>
          <td>
<a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}">Delete</a>
          </td>
        </tr>
      </c:forEach>
    </table>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>