<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Add Course</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

<div class="container">

    <h1>Add a New Course</h1>

    <form action="${pageContext.request.contextPath}/save" method="post">

        <label for="name">Course Name</label>
        <input type="text" id="name" name="name" placeholder="Enter course name" required>

        <label for="instructor">Instructor</label>
        <input type="text" id="instructor" name="instructor" placeholder="Enter instructor name" required>

        <button type="submit" class="btn">Save Course</button>

    </form>

    <a class="back" href="${pageContext.request.contextPath}/">← Back to Course List</a>

</div>

</body>
</html>