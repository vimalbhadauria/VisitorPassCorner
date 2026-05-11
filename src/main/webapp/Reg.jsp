<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
      crossorigin="anonymous">

<style>
    body{
        background: #fdf6e3;
        min-height: 100vh;
        margin: 0;
        padding: 0;
    }

    .page-wrap{
        min-height: calc(100vh - 120px);
        display: flex;
        align-items: center;
        padding: 30px 0;
    }

    .reg-box{
        max-width: 950px;
        margin: auto;
        border-radius: 18px;
        overflow: hidden;
        box-shadow: 0 10px 25px rgba(0,0,0,0.12);
        background: #fff;
    }

    .left-side{
        background: linear-gradient(rgba(0,0,0,0.45), rgba(0,0,0,0.45)), url('images/visi.jpg') no-repeat center center;
        background-size: cover;
        min-height: 520px;
        position: relative;
        color: white;
    }

    .left-content{
        position: absolute;
        top: 35px;
        left: 30px;
        right: 30px;
    }

    .left-content h1{
        font-size: 32px;
        font-weight: 700;
        margin-bottom: 10px;
    }

    .left-content p{
        font-size: 15px;
        margin: 0;
        opacity: 0.95;
    }

    .right-side{
        background: #fff;
        min-height: 520px;
        padding: 40px 35px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .reg-title{
        color: #8b5e3c;
        font-weight: 700;
        font-size: 30px;
        margin-bottom: 6px;
    }

    .reg-subtitle{
        color: #6c757d;
        font-size: 14px;
        margin-bottom: 24px;
    }

    .reg-icon{
        font-size: 48px;
        margin-bottom: 10px;
    }

    .form-control{
        height: 45px;
        border-radius: 10px;
        border: 1px solid #d8c7a1;
        padding-left: 14px;
        font-size: 14px;
    }

    .form-control:focus{
        box-shadow: none;
        border-color: #c8a97e;
    }

    .btn-register{
        height: 45px;
        border: none;
        border-radius: 10px;
        background: #c8a97e;
        color: #fff;
        font-size: 16px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn-register:hover{
        background: #a67c52;
        transform: translateY(-1px);
    }

    .login-link{
        color: #8b5e3c;
        text-decoration: none;
        font-weight: 600;
    }

    .login-link:hover{
        text-decoration: underline;
    }

    @media (max-width: 767px){
        .left-side{
            min-height: 220px;
        }

        .right-side{
            min-height: auto;
            padding: 30px 20px;
        }

        .page-wrap{
            padding: 15px 0 25px;
        }
    }
</style>

<div class="page-wrap">
    <div class="container">
        <div class="row reg-box">

            <!-- Left Image Side -->
            <div class="col-md-7 p-0">
                <div class="left-side">
                    <div class="left-content">
                        <h1>Welcome to Registration</h1>
                        <p>Create your account to access the Visitor Management System.</p>
                    </div>
                </div>
            </div>

            <!-- Right Form Side -->
            <div class="col-md-5 p-0">
                <div class="right-side">
                    <div class="text-center">
                        <div class="reg-icon">📝</div>
                        <h2 class="reg-title">Registration</h2>
                        <p class="reg-subtitle">Fill the details below to create account</p>
                    </div>

                    <form action="register" method="post">
                        <div class="mb-3">
                            <label class="form-label fw-semibold">User Name</label>
                            <input type="text" name="uname" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label fw-semibold">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label fw-semibold">Password</label>
                            <input type="password" name="pwd" class="form-control" required>
                        </div>

                        <button type="submit" class="btn btn-register w-100">Create Account</button>
                    </form>

                    <%
                        String msg = request.getParameter("msg");
                        if(msg != null && msg.equals("success"))
                        {
                    %>
                        <div class="alert alert-success mt-3 text-center">
                            Data successfully saved
                        </div>
                    <%
                        }
                    %>

                    <p class="text-center mt-4 mb-0">
                        Already have an account?
                        <a href="login.jsp" class="login-link">Login</a>
                    </p>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>

<%@ include file="footer.jsp" %>