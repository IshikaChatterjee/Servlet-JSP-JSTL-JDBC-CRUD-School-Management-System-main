<%@page import="com.jsp.dto.Student"%>
<%@page import="com.jsp.dao.StudentDao"%>
<%@page import="com.jsp.connection.DbConnect"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>School Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #FFDDEE; /* Pink Neutral Background */
    }

    .neumorphic {
        border-radius: 10px;
        background: #FFDDEE;
        box-shadow:  10px 10px 20px #FFC1D1, 
                    -10px -10px 20px #FFF0FF;
        padding: 20px;
        margin-bottom: 20px;
    }

    .neumorphic-btn {
        border: none;
        border-radius: 10px;
        padding: 6px 16px;
        background: #FFDDEE;
        box-shadow:  5px 5px 10px #FFC1D1, 
                    -5px -5px 10px #FFF0FF;
        cursor: pointer;
        transition: all 0.3s ease;
         margin-bottom: 20px; 
         color: black;
    }
    

    .neumorphic-btn:hover {
        background: #FFC1D1;
    }

    .neumorphic-btn:active {
        box-shadow:  inset 5px 5px 10px #FFC1D1, 
                    inset -5px -5px 10px #FFF0FF;
    }
    

    /* Additional styles for appearance */
    .text-center {
        text-align: center;
    }

    .container {
        max-width: 1000px;
        margin: 40px auto;
    }

    table {
        width: 100%;
        margin-top: 40px;
        border-collapse: separate;
        border-spacing: 0;
    }

    th, td {
        padding: 10px;
        border: 1px solid #FFC1D1; /* Adjusted to pink shade */
    }

    a {
        text-decoration: none;
        margin-right: 10px;
    }

    .btn-dark {
        color: #fff;
        background-color: #FF749C; /* Adjusted to darker pink */
    }

    .btn-danger {
        color: #fff;
        background-color: #FF4567; /* Adjusted to reddish-pink */
    }

    .ms-1 {
        margin-left: 5px;
    }
</style>
</head>
<body>
<%@ include file="navbar.jsp"%>

<div class="container">
    <div class="neumorphic">
        <p class="text-center fs-2">Student Management System</p>

        <!-- Success Message -->
        <c:if test="${not empty succMsg}">
            <p class="text-center text-success">${succMsg}</p>
            <c:remove var="succMsg" />
        </c:if>

        <!-- Error Message -->
        <c:if test="${not empty errorMsg}">
            <p class="text-center text-danger">${errorMsg}</p>
            <c:remove var="errorMsg" />
        </c:if>

        <table>
            <thead>
                <tr class="fs-5">
                    <th>Student Name</th>
                    <th>DOB</th>
                    <th>Address</th>
                    <th>Qualification</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    StudentDao studentDao = new StudentDao(DbConnect.getConn());
                    List<Student> stu = studentDao.getAllStudent();
                    for (Student s : stu) { 
                %>
                <tr>
                    <td><%=s.getName()%></td>
                    <td><%=s.getDob()%></td>
                    <td><%=s.getAddress()%></td>
                    <td><%=s.getQualification()%></td>
                    <td><%=s.getEmail()%></td>
                   <td>
    					<div style="margin-bottom: 20px; margin-top: 20px; margin-left: 15px">
        					<a href="update-student.jsp?id=<%=s.getId()%>" class="neumorphic-btn">Update</a>
        					<a href="deletestudent?id=<%=s.getId()%>" class="neumorphic-btn">Delete</a>
   					  	</div>
				   </td>
                   
                </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
