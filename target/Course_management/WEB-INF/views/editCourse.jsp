<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>Edit Course</h2>

<form action="${pageContext.request.contextPath}/update" method="post">

  <input type="hidden" name="id" value="${course.id}"/>

  Name:
  <input type="text" name="name" value="${course.name}" required><br><br>

  Instructor:
  <input type="text" name="instructor" value="${course.instructor}" required><br><br>

  <button type="submit">Update</button>

</form>

<a href="${pageContext.request.contextPath}/">Back</a>