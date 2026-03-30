<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<h2>Course List</h2>

<a href="add">Add Course</a>

<table border="1">
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
            <td>
                <a href="${pageContext.request.contextPath}/edit?id=${c.id}">Edit</a>
                |
                <a href="${pageContext.request.contextPath}/delete?id=${c.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>

</table>