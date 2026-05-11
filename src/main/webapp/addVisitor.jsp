<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
    }
    .card {
        border-radius: 15px;
    }
</style>
<%@ include file="header.jsp" %>

<%


%>
<div class="container mt-5">
    <div class="row justify-content-center">
    
        <div class="col-md-6">
            <div class="card shadow p-4">
                
                <h3 class="text-center mb-4 text-primary">Add Visitor</h3>

                <form action="addVisitor" method="post" enctype="multipart/form-data">

                    <div class="mb-3">
                        <label class="form-label">Visitor Name</label>
                        <input type="text" name="vname" class="form-control" placeholder="Enter name" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Contact</label>
                        <input type="text" name="contact" class="form-control" placeholder="Enter mobile" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Purpose</label>
                        <input type="text" name="purpose" class="form-control" placeholder="Enter purpose">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Upload Photo</label>
                        <input type="file" name="image" class="form-control" required>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Add Visitor</button>
                    </div>
						
					
                </form>

            </div>
        </div>
        
    </div>
</div>

<%@ include file="footer.jsp" %>