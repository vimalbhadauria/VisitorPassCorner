<%@ page import="java.util.*,com.visitor.dao.*,com.visitor.model.*" %>

<%
    String user = (String)session.getAttribute("uname");

  

    VisitorDAO dao = new VisitorDAO();
    List<Visitor> list = dao.getAllVisitors();

    int total = list.size();
    int inCount = 0;
    int outCount = 0;

    for(Visitor v : list){
        if("IN".equals(v.getStatus())) inCount++;
        else outCount++;
    }
%>




<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<%@ include file="header.jsp" %>
<style>


.stat-number {
    font-size: 28px;
    font-weight: bold;
}

/* Table */
.table {
    background: white;
    color: black;
    border-radius: 10px;
    overflow: hidden;
}

img {
    border-radius: 10px;
    object-fit: cover;
}
</style>



<div class="container mt-4">

    <!-- HEADER -->
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h4>Welcome:- <%= user %></h4>
       
    </div>

    <!-- STATS -->
    <div class="row mb-4">

        <div class="col-md-4">
            <div class="glass stat-card">
                <h6>Total Visitors</h6>
                <div class="stat-number text-primary"><%= total %></div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="glass stat-card">
                <h6>IN Visitors</h6>
                <div class="stat-number text-success"><%= inCount %></div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="glass stat-card">
                <h6>OUT Visitors</h6>
                <div class="stat-number text-danger"><%= outCount %></div>
            </div>
        </div>

    </div>

    <!-- ADD BUTTON -->
    
    <!-- TABLE -->
    <div class="glass">

        <table class="table table-hover text-center align-middle">

            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Photo</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>

            <%
            if(list.isEmpty()){
            %>
                <tr>
                    <td colspan="6">No Visitors Found</td>
                </tr>
            <%
            } else {
                for(Visitor v : list){
            %>

            <tr>

                <td><%= v.getId() %></td>
                <td><%= v.getVname() %></td>
                <td><%= v.getContact() %></td>

                <td>
                    <% if(v.getImagePath()!=null){ %>
                        <img src="<%= request.getContextPath() %>/visitorImage/<%= v.getImagePath() %>" width="80" height="80">
                    <% } %>
                </td>

                <td>
                    <% if("IN".equals(v.getStatus())){ %>
                        <span class="badge bg-success">IN</span>
                    <% } else { %>
                        <span class="badge bg-danger">OUT</span>
                    <% } %>
                </td>

                <td>

                    <% if("IN".equals(v.getStatus())){ %>
                        <a href="checkout?id=<%= v.getId() %>" 
                           class="btn btn-warning btn-sm">
                           Checkout
                        </a>
                    <% } else { %>
                        <span class="badge bg-secondary">Done</span>
                    <% } %>

                    <a href="DeleteVisitorServlet?id=<%= v.getId() %>" 
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Delete?')">
                       Delete
                    </a>

                </td>

            </tr>

            <%
                }
            }
            %>

            </tbody>

        </table>

    </div>

</div>
<%@ include file="footer.jsp" %>
