<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body{
        background: #fdf6e3;
        margin: 0;
        padding: 0;
        min-height: 100vh;
    }

    .page-wrap{
        min-height: calc(100vh - 120px);
        display: flex;
        align-items: center;
        padding: 20px 0;
    }

    .login-box{
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        background: #fff;
        max-width: 950px;
        margin: auto;
    }

    .image-side{
        background: url('images/visi.jpg') no-repeat center center;
        background-size: cover;
        min-height: 430px;
        position: relative;
    }

    .image-overlay{
        position: absolute;
        inset: 0;
        background: rgba(0,0,0,0.35);
    }

    .image-text{
        position: absolute;
        bottom: 30px;
        left: 25px;
        right: 25px;
        color: #fff;
        z-index: 2;
    }

    .image-text h1{
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 6px;
    }

    .image-text p{
        font-size: 14px;
        margin: 0;
    }

    .form-side{
        background: #fff;
        min-height: 430px;
        padding: 30px 30px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .login-title{
        color: #8b5e3c;
        font-weight: 700;
        margin-bottom: 5px;
        font-size: 28px;
    }

    .login-subtitle{
        color: #6c757d;
        margin-bottom: 20px;
        font-size: 14px;
    }

    .form-control{
        height: 42px;
        border-radius: 8px;
        border: 1px solid #d8c7a1;
        padding-left: 12px;
        font-size: 14px;
    }

    .form-control:focus{
        box-shadow: none;
        border-color: #c8a97e;
    }

    .btn-login{
        height: 42px;
        border: none;
        border-radius: 8px;
        background: #c8a97e;
        color: #fff;
        font-size: 15px;
        font-weight: 600;
        transition: 0.3s;
    }

    .btn-login:hover{
        background: #a67c52;
    }

    .register-link{
        color: #8b5e3c;
        text-decoration: none;
        font-weight: 600;
        font-size: 14px;
    }

    .register-link:hover{
        text-decoration: underline;
    }

    .login-icon{
        font-size: 42px;
        margin-bottom: 8px;
    }

    @media (max-width: 767px){
        .image-side{
            min-height: 220px;
        }

        .form-side{
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
        <div class="row login-box">

            <!-- Left Image Side -->
            <div class="col-md-7 p-0">
                <div class="image-side">
                    <div class="image-overlay"></div>
                   
                </div>
            </div>

            <!-- Right Login Form -->
            <div class="col-md-5 p-0">
                <div class="form-side">
                    <div class="text-center">
                        <div class="login-icon">🔐</div>
                        <h2 class="login-title">Welcome Back</h2>
                        <p class="login-subtitle">Please login to continue</p>
                    </div>

                    <%
                        String error = request.getParameter("error");
                        if(error != null)
                        {
                    %>
                        <div class="alert alert-danger text-center">
                            Invalid username or password
                        </div>
                    <% } %>

                    <form action="login" method="post">
                        <div class="mb-3">
                            <input type="text" name="uname" class="form-control" placeholder="Enter Username" required>
                        </div>

                        <div class="mb-3">
                            <input type="password" name="pwd" class="form-control" placeholder="Enter Password" required>
                        </div>

                        <button type="submit" class="btn btn-login w-100">Login</button>
                    </form>

                    <div class="text-center mt-3">
                        <a href="Reg.jsp" class="register-link">New User? Register Here</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>