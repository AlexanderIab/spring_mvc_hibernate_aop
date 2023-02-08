<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>border-spacing</title>
    <style>
        table {
            border: 4px solid #333;
            border-collapse: separate;
            width: 50%;
            border-spacing: 7px 11px;
        }
        td {
            padding: 10px;
            border: 1px solid #2d2626;
        }
    </style>
</head>
<style>
    .button {
        font-weight: 700;
        color: white;
        text-decoration: none;
        padding: .8em 1em calc(.8em + 3px);
        border-radius: 3px;
        background: rgb(40, 58, 49);
        box-shadow: 0 -3px rgb(47, 58, 52) inset;
        transition: 0.2s;
    }
    .button:hover { background: rgb(59, 70, 64); }
    .button:active {
        background: rgb(91, 115, 102);
        box-shadow: 0 3px rgb(174, 213, 194) inset;
    }
</style>
<body>
<h2>All Employees</h2>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="update-info">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <c:url var="deleteButton" value="delete-employee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>

                <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>
</table>
<br>
<br>
<input type="button" value="Add" onclick="window.location.href='add-new-employee'" class="button"/>

</body>
</html>