<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
    <%@ page import="com.neo.Servlet.ProfileServlet" %>
<jsp:useBean id="myServlet" class="com.neo.Servlet.ProfileServlet" scope="request" />
<!doctype html>
<html lang="en">
<head>
  <link rel="stylesheet" href="Bak.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Profile</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  
  <style>
    .additional-info {
      display: none;
    }
    
    .social-list li:hover .additional-info {
      display: inline;
    }

    .page-title {
      text-align: center;
      font-size: 40px;
      font-weight: bold;
      color: #ffffff;
    }
    
    .container {
      margin-top: 50px;
    }
    
    .bg-part1 {
      background-color: #fff;
      padding-top: 20px;
      color: black;
    }
    
    .bg-part2 {
      background-color: #ffffff;
    }
  </style>
</head>
<body>
  <div class="bg-part1">
    <h1 class="page-title" style="color: #000;">USER PROFILE</h1>
  </div>
  
   <%
    // Accessing the servlet instance
    ProfileServlet mySer = (ProfileServlet) request.getAttribute("myServlet");
	Map<List<String>,byte[]>  lb = mySer.ret();
	
	 %>
	 
  <div class="bg-part2">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-7">
          <div class="card p-3 py-4">
          <% for(Map.Entry<List<String>,byte[]> nm:lb.entrySet()){ 
            	     int i=1;
                 %>
            <div class="text-center">
              <img src="data:image/png;base64, <%= java.util.Base64.getEncoder().encodeToString(nm.getValue())%>"
              class="rounded-circle" alt="Rounded Image" height="160" width="170">
            </div>
            
            <div class="text-center mt-3">
              <h3 class="mt-2 mb-0"><%= nm.getKey().get(1) %></h3>
              <span><i>Student</i> - <b><%= nm.getKey().get(2) %></b></span>
              <br>
              <br>
              <ul class="social-list">
                <li>
                  <i class="bi bi-person-fill"></i>
                  <span class="additional-info"><%= nm.getKey().get(8) %></span>
                </li>
                <li>
                  <i class="bi bi-envelope-fill"></i>
                  <span class="additional-info"><%= nm.getKey().get(3) %></span>
                </li>
                <li>
                  <i class="bi bi-calendar2-event-fill"></i> 
                  <span class="additional-info"><%= nm.getKey().get(6) %></span>
                </li>
                <li>
                  <i class="bi bi-geo-alt-fill"></i> 
                  <span class="additional-info"><%= nm.getKey().get(7) %></span>
                </li>
                <li>
                  <i class="bi bi-phone-fill"></i>
                  <span class="additional-info">+91 <%= nm.getKey().get(5) %></span>
                </li>
             <%} %>
                <li>
                 
               
                 <button style="border: none;background: transparent;"type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo" > 
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="12" style="color: rgb(0, 0, 0);" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                    <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                  </svg>
                </button>
                  <span class="additional-info" style="font-size: 20px;color: #000;"><b>Edit</b></span>
                </li>
              </ul>
            </div> 
          </div>    
        </div>    
      </div>
    </div>
  </div>

  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update Profile</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <% for(Map.Entry<List<String>,byte[]> nm:lb.entrySet()){ 
            	     int i=1;
                 %>
           <form action="EditServlet" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label class="form-label" for="customFile">Image</label>
              <input type="file" class="form-control" accept="image/*" id="customFile" name="profile" required />
            </div>
            <div class="form-group">
              <label for="recipient-name" class="col-form-label">Name:</label>
              <input type="text" class="form-control" id="recipient-name" value="<%= nm.getKey().get(1) %>" name="name" required>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Institution:</label>
              <input type="text" class="form-control" id="recipient-name" name="ins" value="<%= nm.getKey().get(2) %>" name="email" required>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Email:</label>
              <input type="email" class="form-control" id="recipient-name" value="<%= nm.getKey().get(3) %>" name="email" required>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Phone:</label>
              <input type="text" class="form-control" id="recipient-name" value="<%= nm.getKey().get(5) %>" name="phno" required>
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="exampleFormControlSelect1" name="category" required>
                 <option><%= nm.getKey().get(4) %></option>
                  <option>Open</option>
                  <option>Contacted</option>
                  <option>Written test</option>
                  <option>Written Test completed</option>
                  <option>Newton School</option>
                </select>
              </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">DOB:</label>
              <input type="date" class="form-control" id="recipient-name" value="<%= nm.getKey().get(6) %>" name="dob" required>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Location:</label>
              <input type="text" class="form-control" id="recipient-name" value="<%= nm.getKey().get(7) %>" name="locat" required>
            </div>
            <div class="form-group">
              <label for="exampleFormControlSelect1">Gender</label>
              <select class="form-control" id="exampleFormControlSelect1" value="" name="gender" required>
                 <option><%= nm.getKey().get(8) %></option>
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
              </select>
            </div>
            <div class="form-group">
              <label for="message-text" class="col-form-label">Address:</label>
              <input type="text" class="form-control" id="recipient-name" value="<%= nm.getKey().get(9) %>" name="address" required>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="submit" value="<%= nm.getKey().get(0) %>" name="id" class="btn btn-primary">Edit</button>
            </div>
          </form>
          <% } %>
        </div>
        
      </div>
    </div>
  </div>









  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
