<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  import="java.sql.*,javax.servlet.*"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title> User Management</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
    color: #566787;
    background: #f5f5f5;
    font-family: 'Varela Round', sans-serif;
    font-size: 13px;
}
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
    min-width: 1000px;
    background: #fff;
    padding: 20px 25px;
    border-radius: 3px;
    box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {
    padding-bottom: 15px;
    background: #299be4;
    color: #fff;
    padding: 16px 30px;
    margin: -20px -25px 10px;
    border-radius: 3px 3px 0 0;
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}
.table-title .btn {
    color: #566787;
    float: right;
    font-size: 13px;
    background: #fff;
    border: none;
    min-width: 50px;
    border-radius: 2px;
    border: none;
    outline: none !important;
    margin-left: 10px;
}
.table-title .btn:hover, .table-title .btn:focus {
    color: #566787;
    background: #f2f2f2;
}
.table-title .btn i {
    float: left;
    font-size: 21px;
    margin-right: 5px;
}
.table-title .btn span {
    float: left;
    margin-top: 2px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    padding: 12px 15px;
    vertical-align: middle;
}
table.table tr th:first-child {
    width: 60px;
}
table.table tr th:last-child {
    width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table th i {
    font-size: 13px;
    margin: 0 5px;
    cursor: pointer;
}	
table.table td:last-child i {
    opacity: 0.9;
    font-size: 22px;
    margin: 0 5px;
}
table.table td a {
    font-weight: bold;
    color: #566787;
    display: inline-block;
    text-decoration: none;
}
table.table td a:hover {
    color: #2196F3;
}
table.table td a.settings {
    color: #2196F3;
}
table.table td a.delete {
    color: #F44336;
}
table.table td i {
    font-size: 19px;
}
table.table .avatar {
    border-radius: 50%;
    vertical-align: middle;
    margin-right: 10px;
}
.status {
    font-size: 30px;
    margin: 2px 2px 0 0;
    display: inline-block;
    vertical-align: middle;
    line-height: 10px;
}
.text-success {
    color: #10c469;
}
.text-info {
    color: #62c9e8;
}
.text-warning {
    color: #FFC107;
}
.text-danger {
    color: #ff5b5b;
}
.pagination {
    float: right;
    margin: 0 0 5px;
}
.pagination li a {
    border: none;
    font-size: 13px;
    min-width: 30px;
    min-height: 30px;
    color: #999;
    margin: 0 2px;
    line-height: 30px;
    border-radius: 2px !important;
    text-align: center;
    padding: 0 6px;
}
.pagination li a:hover {
    color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
    background: #03A9F4;
}
.pagination li.active a:hover {        
    background: #0397d6;
}
.pagination li.disabled i {
    color: #ccc;
}
.pagination li i {
    font-size: 16px;
    padding-top: 6px
}
.hint-text {
    float: left;
    margin-top: 10px;
    font-size: 13px;
}
// css example
span {
  content: "\2713";
}
</style>
<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
</head>
<body>
<form>

<nav class="navbar navbar-expand-md navbar-light bg-light">
				<a  href="adminhome.jsp" class="navbar-brand" style="color: rgb(90, 88, 88);font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size:23px">CAR</a>
                <a href="adminhome.jsp" class="navbar-brand" style="color:  rgb(60, 124, 243);font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size:23px">GURU</a>
				<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
		
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav">
						<a href="adminhome.jsp" class="nav-item nav-link active" style="color: firebrick; font-weight: 500; font-size:20.5px;">Home</a>
						<a href="#" class="nav-item nav-link" style="font-weight: 500; font-size:20.5px">Profile</a>
						<a href="addcars.jsp" class="nav-item nav-link" style=" font-family: Arial, Helvetica, sans-serif; font-weight: 500; font-size:20.5px">Add Cars</a>
					</div>
					<div class="navbar-nav ml-auto">
						<a href="adminprofile.jsp" class="nav-item nav-link" style="font-family: Arial, Helvetica, sans-serif; font-weight: 500; font-size:20.5px">
						<%HttpSession ses=request.getSession(false);
			String username=(String)ses.getAttribute("username");
	        out.println(username); %>
						</a>
					</div>
				</div>
			</nav>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                        <h2>Pending <b>Requests</b></h2>
                    </div>
                    <div class="col-sm-7">
                    
                        						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>Username</th>						
                        <th>Car Name</th>
                        <th>Licence</th>
                        <th>Date & Time</th>
                        <th>Action</th>
                       
                    </tr>
                </thead>
                <tbody>
                   
                    <%

try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            
PreparedStatement pstmt = con.prepareStatement("select * from booked");
           int i=1;
            int c=0;
         ResultSet rs = pstmt.executeQuery();
         
             while(rs.next()) 
             {
            	 
            	 
            	
            		 PreparedStatement p = con.prepareStatement("select * from carbook where username=?");
                	 String uname=rs.getString("username");
                    p.setString(1,uname );
                   ResultSet r = p.executeQuery();
                	 c++;
                	 if(rs.getString("status").equals("Pending"))
                  	{
                		 
                	 %>
                	 <tr>
                            <td><% out.println(i++); %></td>
                            
                            <td><% out.println(rs.getString("username")); %></td>
                            <td><% out.println(rs.getString("carname")); %></td>
                           
                            <td><a href="view.jsp?id=<%out.println(rs.getString("username"));%>">view</a></td>
                            <td><% out.println(rs.getString("booked_date")); %></td>
                            
                            <td>
                            
                                 <a title="Approve" href="approve.jsp?id=<% out.println(rs.getString("username"));%>" ><span style="color:green; font-family: wingdings; font-size: 200%;">&#252;</span></a>
                                 <a title="Decline" href="decline.jsp?id=<% out.println(rs.getString("username"));%>" ><span style='color:red; font-size:20px;'>&#10008;</span></a>
                               
                            </td>
                            <td>
                              
                            </td>                        
                        </tr>
                	 
                	 <%
                  	}
                	 if(c%3==0)
                	 {
                		 %><br><br><%
                	 }
            	
            	 
             }
             


}
catch(Exception e) {
out.println(e);
}%>
                  
                </tbody>
            </table>
           
        </div>
    </div>
</div> 





























<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                        <h2>Approved <b>Requests</b></h2>
                    </div>
                    <div class="col-sm-7">
                    
                        						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>Username</th>						
                        <th>Car Name</th>
                        <th>Date & Time</th>
                        <th>Action</th>
                       
                    </tr>
                </thead>
                <tbody>
                   
                    <%

try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            
PreparedStatement pstmt = con.prepareStatement("select * from booked");
           int i=1;
            int c=0;
         ResultSet rs = pstmt.executeQuery();
         
             while(rs.next()) 
             {
            	 
            	 
            	
            		 PreparedStatement p = con.prepareStatement("select * from carbook where username=?");
                	 String uname=rs.getString("username");
                    p.setString(1,uname );
                   ResultSet r = p.executeQuery();
                	 c++;
                	 if(rs.getString("status").equals("Approved"))
                  	{
                	 %>
                	 <tr>
                            <td><% out.println(i++); %></td>
                            
                            <td><% out.println(rs.getString("username")); %></td>
                            <td><% out.println(rs.getString("carname")); %></td>
                            <td><% out.println(rs.getString("booked_date")); %></td>
                            <td>
                                 
                                
                                <a title="Decline" href="decline.jsp?id=<% out.println(rs.getString("username"));%>" ><span style='color:red; font-size:20px;'>&#10008;</span></a>
                            </td>
                            <td>
                              
                            </td>                        
                        </tr>
                	 
                	 <%
                  	}
                	 if(c%3==0)
                	 {
                		 %><br><br><%
                	 }
            	
            	 
             }
             


}
catch(Exception e) {
out.println(e);
}%>
                  
                </tbody>
            </table>
           
        </div>
    </div>
</div> 










































<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-5">
                        <h2>Declined <b>Requests</b></h2>
                    </div>
                    <div class="col-sm-7">
                    
                        						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th></th>
                        <th>Username</th>						
                        <th>Car Name</th>
                        <th>Date & Time</th>
                        <th>Action</th>
                       
                    </tr>
                </thead>
                <tbody>
                   
                    <%

try {
Connection con = null;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eppro","root","Pinku@2001");
            
PreparedStatement pstmt = con.prepareStatement("select * from booked");
           int i=1;
            int c=0;
         ResultSet rs = pstmt.executeQuery();
         
             while(rs.next()) 
             {
            	 
            	 
            	
            		 PreparedStatement p = con.prepareStatement("select * from carbook where username=?");
                	 String uname=rs.getString("username");
                    p.setString(1,uname );
                   ResultSet r = p.executeQuery();
                	 c++;
                	 if(rs.getString("status").equals("Declined"))
                  	{
                	 %>
                	 <tr>
                            <td><% out.println(i++); %></td>
                            
                            <td><% out.println(rs.getString("username")); %></td>
                            <td><% out.println(rs.getString("carname")); %></td>
                            <td><% out.println(rs.getString("booked_date")); %></td>
                            <td>
                                 <a title="Approve" href="approve.jsp?id=<% out.println(rs.getString("username"));%>" ><span style="color:green; font-family: wingdings; font-size: 200%;">&#252;</span></a>
                                
                                
                            </td>
                            <td>
                              
                            </td>                        
                        </tr>
                	 
                	 <%
                  	}
                	 if(c%3==0)
                	 {
                		 %><br><br><%
                	 }
            	
            	 
             }
             


}
catch(Exception e) {
out.println(e);
}%>
                  
                </tbody>
            </table>
           
        </div>
    </div>
</div> 




















</form>    
</body>
</html>