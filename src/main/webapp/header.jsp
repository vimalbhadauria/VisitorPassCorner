<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String currentUser =
        (String)session.getAttribute("uname");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visitor Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, sans-serif;
}

body{
    background:#f4f6f9;
}

.navbar{
    width:100%;
    background:#0d6efd;
    padding:15px 40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    color:white;
    font-size:24px;
    font-weight:bold;
}

.nav-links{
    display:flex;
    align-items:center;
}

.nav-links a{
    color:white;
    text-decoration:none;
    margin-left:20px;
    font-size:16px;
    transition:0.3s;
}

.nav-links a:hover{
    color:yellow;
}

.welcome{
    color:white;
    margin-right:15px;
    font-weight:bold;
}

.container{
    padding:20px;
}

</style>

</head>

<body>

<div class="navbar">

    <div class="logo">
        Visitor Pass Corner
    </div>

    <div class="nav-links">

    <% if(currentUser == null){ %>

        <!-- Before Login -->

        <a href="login.jsp">Login</a>

        <a href="Reg.jsp">Register</a>

    <% } else { %>

        <!-- After Login -->

        <span class="welcome">
            Welcome <%= currentUser %>
        </span>

        <a href="dashboard.jsp">Dashboard</a>

        <a href="addVisitor.jsp">Add Visitor</a>

        <a href="dashboard.jsp">View Visitor</a>

        <a href="logout">Logout</a>

    <% } %>

    </div>

</div>

<div class="container">