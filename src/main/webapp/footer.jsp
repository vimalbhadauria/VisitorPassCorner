</div>

<footer class="footer">

    <div class="footer-container">

        <!-- About -->
        <div class="footer-box">
            <h2>Visitor Pass Corner</h2>

            <p>
                Manage visitors easily with secure dashboard system.
            </p>
        </div>


        <!-- Quick Links -->
        <div class="footer-box">
            <h3>Quick Links</h3>

            <a href="dashboard.jsp">Dashboard</a>
            <a href="addVisitor.jsp">Add Visitor</a>
            <a href="dashboard.jsp">View Visitor</a>
          
        </div>


        <!-- Technologies -->
       

        <!-- Social Media -->
        <div class="footer-box">
            <h3>Follow Us</h3>

            <div class="social-links">

                <a href="https://facebook.com" target="_blank">
                    Facebook
                </a>

                <a href="https://instagram.com" target="_blank">
                    Instagram
                </a>

                <a href="https://linkedin.com" target="_blank">
                    LinkedIn
                </a>

                <a href="https://youtube.com" target="_blank">
                    YouTube
                </a>

            </div>
        </div>

    </div>


    <!-- Bottom -->
    <div class="footer-bottom">
       © 2026 Visitor Management System 
    </div>

</footer>



<style>

.footer{
    width:100%;
    background:linear-gradient(to right,#0d6efd,#001f3f);
    color:white;
    margin-top:50px;
}

.footer-container{
    display:flex;
    justify-content:space-around;
    flex-wrap:wrap;
    padding:40px 20px;
}

.footer-box{
    width:250px;
    margin:15px;
}

.footer-box h2,
.footer-box h3{
    margin-bottom:15px;
    color:#ffd43b;
}

.footer-box p{
    margin:8px 0;
    line-height:1.6;
}

.footer-box a{
    display:block;
    color:white;
    text-decoration:none;
    margin:8px 0;
    transition:0.3s;
}

.footer-box a:hover{
    color:yellow;
    padding-left:5px;
}

.social-links a{
    background:rgba(255,255,255,0.1);
    padding:10px;
    border-radius:5px;
}

.social-links a:hover{
    background:white;
    color:#0d6efd;
}

.footer-bottom{
    background:rgba(0,0,0,0.3);
    text-align:center;
    padding:15px;
    font-size:15px;
    letter-spacing:1px;
}

</style>

</body>
</html>