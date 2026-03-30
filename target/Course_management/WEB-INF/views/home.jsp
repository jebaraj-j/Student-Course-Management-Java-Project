<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <title>Course List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

<div class="container">

    <h2>Course List</h2>

    <a class="btn" href="${pageContext.request.contextPath}/add">Add Course</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Instructor</th>
            <th>Action</th>
        </tr>

        <c:forEach var="c" items="${courses}">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.instructor}</td>
                <td class="action">
                    <a href="${pageContext.request.contextPath}/edit?id=${c.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/delete?id=${c.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>