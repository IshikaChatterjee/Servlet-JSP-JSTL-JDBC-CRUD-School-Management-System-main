<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Student</title>
<%@ include file="css.jsp"%>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #FFDDEE; /* Pink Neutral Background */
    }

    .neumorphic, .neumorphic-form {
        border-radius: 10px;
        background: #FFDDEE;
        box-shadow:  10px 10px 20px #FFC1D1, 
                    -10px -10px 20px #FFF0FF;
        padding: 20px;
    }

    .neumorphic-btn {
        border: none;
        border-radius: 10px;
        padding: 10px 20px;
        background: #FFDDEE;
        box-shadow:  5px 5px 10px #FFC1D1, 
                    -5px -5px 10px #FFF0FF;
        cursor: pointer;
        transition: all 0.3s ease;
        width: 100%; /* full width of container */
    }

    .neumorphic-btn:hover {
        background: #FFC1D1;
    }

    .neumorphic-btn:active {
        box-shadow:  inset 5px 5px 10px #FFC1D1, 
                    inset -5px -5px 10px #FFF0FF;
    }

    .form-control {
        background-color: #FFDDEE;
        border: none;
        padding: 10px;
        border-radius: 10px;
        box-shadow:  inset 5px 5px 10px #FFC1D1, 
                    inset -5px -5px 10px #FFF0FF;
    }

    .form-control:focus {
        outline: none;
        box-shadow:  inset 7px 7px 14px #FFC1D1, 
                    inset -7px -7px 14px #FFF0FF;
    }
</style>
</head>
<body>
<%@ include file="navbar.jsp"%>

<div class="container p-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="neumorphic">
                <p class="fs-3 text-center">Add student</p>
                <c:if test="${not empty succMsg}">
                    <p class="text-center text-success">${succMsg}</p>
                    <c:remove var="succMsg" />
                </c:if>

                <c:if test="${not empty errorMsg}">
                    <p class="text-center text-danger">${errorMsg}</p>
                    <c:remove var="errorMsg" />
                </c:if>
                <form action="savestudent" method="post" class="neumorphic-form">
                    <div class="mb-3">
                        <label class="form-label">Student Name</label> 
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Student DOB</label> 
                        <input type="date" name="dob" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Student Address</label> 
                        <input type="text" name="address" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Student Qualification</label> 
                        <input type="text" name="qualification" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Student Email</label> 
                        <input type="email" name="email" class="form-control">
                    </div>
                    <button type="submit" class="neumorphic-btn">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
