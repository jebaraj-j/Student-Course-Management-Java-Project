<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
  <title>Edit Course</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

<div class="container">

  <h1>Edit Course</h1>

  <form action="${pageContext.request.contextPath}/update" method="post">

    <input type="hidden" name="id" value="${course.id}"/>

    <label>Course Name</label>
    <input type="text" name="name" value="${course.name}" required>

    <label>Instructor</label>
    <input type="text" name="instructor" value="${course.instructor}" required>

    <button type="submit" class="btn">Update Course</button>

  </form>

  <a class="back" href="${pageContext.request.contextPath}/">← Back to Course List</a>

</div>

</body>
</html>