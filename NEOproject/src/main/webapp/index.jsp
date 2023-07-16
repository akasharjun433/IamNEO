<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="com.neo.Controller.FetchController" %>
<jsp:useBean id="myServlet" class="com.neo.Controller.FetchController" scope="request" />

<%@ page import="com.neo.Controller.Fetch1Controller" %>
<jsp:useBean id="myServlet1" class="com.neo.Controller.Fetch1Controller" scope="request" />


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Neo Project</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
    <style>
      @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css");
      .has-search .form-control {
    padding-left: 2.375rem;
}

.nav_title {
  display: flex;
  align-items: center;
  background: transparent;
}
@media (max-width: 767px) {
  .nav_title {
    display: none;
  }
}
.nav_title div {
  margin-left: 10px;
  font-weight: bold;
  font-size: 17px;
  background: transparent;
}
.center {
    float:none;
    margin-left: auto;
    margin-right: auto;
}
h1 { font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; font-size: 24px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 26.4px; } h3 { font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15.4px; } p { font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 20px; } blockquote { font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; font-size: 21px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 30px; } pre { font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 18.5714px; }
   
   </style>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><svg xmlns="http://www.w3.org/2000/svg" width="28" height="37" style="margin-left:10px;"  fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
              </svg> <span>&nbsp;IamNeo</span></a>
            </div>
          <div class="clearfix"></div>
            <br />
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side  main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home </a></li>
                  <li><a><i class="fa fa-edit"></i> Forms</a></li>
                  <li><a><i class="fa fa-briefcase"></i>Jobs</a> </li>
                  <li><a><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="fa fa-people" viewBox="0 0 16 16">
                    <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
                  </svg>&nbsp; peoples </a></li>
                </ul>
              </div>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

<!-- top navigation -->
<div class="top_nav">
  <div class="nav_menu">
    <div class="nav toggle">
      <a id="menu_toggle"><i class="fa fa-bars"></i></a> 
    </div>
    <div class="nav_title" style="background: transparent;">
      <div class="title">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="39" fill="currentColor"  class="bi bi-person-circle" viewBox="0 0 16 16" style="vertical-align: middle;color:#834dee;">
          <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
          <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
        </svg>
        <h6 style="display: inline; color: rgb(99, 98, 98); margin-left: 5px;">iamneo.ai Talent Center</h6>
      </div>
    </div>
    
    <nav class="nav navbar-nav">
      <ul class="navbar-right">                
        <li class="nav-item open" style="padding-left: 20px;">
          <a href="javascript:;" class="user-profile" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown">
            <img src="production/images/img.jpg" alt="" style="height: 39px; width: 40px;">
          </a>
        </li>
        <li style="padding-left: 20px;">
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="39" fill="currentColor" class="bi bi-question-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"/>
          </svg>
        </li>
        <li style="padding-left: 20px;" >
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="39" fill="currentColor" class="bi bi-gift" viewBox="0 0 16 16">
            <path d="M3 2.5a2.5 2.5 0 0 1 5 0 2.5 2.5 0 0 1 5 0v.006c0 .07 0 .27-.038.494H15a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a1.5 1.5 0 0 1-1.5 1.5h-11A1.5 1.5 0 0 1 1 14.5V7a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h2.038A2.968 2.968 0 0 1 3 2.506V2.5zm1.068.5H7v-.5a1.5 1.5 0 1 0-3 0c0 .085.002.274.045.43a.522.522 0 0 0 .023.07zM9 3h2.932a.56.56 0 0 0 .023-.07c.043-.156.045-.345.045-.43a1.5 1.5 0 0 0-3 0V3zM1 4v2h6V4H1zm8 0v2h6V4H9zm5 3H9v8h4.5a.5.5 0 0 0 .5-.5V7zm-7 8V7H2v7.5a.5.5 0 0 0 .5.5H7z"/>
          </svg>
        </li>
        <li style="padding-left: 20px;" >
          <button type="button" class="btn btn-sm" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="border-radius: 3%; padding-top: 5px;background-color: #12344c;color: white;">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
              <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
            </svg>
            Add new
          </button> 
        </li>
        <li class="nav-item" style="padding-left: 20px;">
          <div class="form-group has-search">
            <span class="fa fa-search form-control-feedback"></span> 
            <input type="text" class="form-control" placeholder="Search" style="border: none; background-color: #ededed; border-bottom: 2px solid rgb(203, 203, 203);">
          </div>
        </li>
      </ul>
    </nav>
  </div>
</div>
<!-- /top navigation -->

<!-- top navigation -->
<div class="top_nav" >
  <div class="nav_menu">
    <div class="nav_title" style="background: transparent;">
      <div class="title">
        <h6 style="display: inline; color: rgb(99, 98, 98);">Jobs
          <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
          </svg>
          <h6 style="display: inline; color: rgb(99, 98, 98);" >Full-stack Developer</h6>
         
      </div>
    </div>
    <div class="nav_title" style="background: transparent;">
      <div class="title">
        <button class="btn border border-secondary btn-sm" type="button" >View Job Details</button>
      </div>
    </div>
    


    <nav class="nav navbar-nav">
      
      <ul class="navbar-right">                
        <li style="padding-left: 20px;" >
          <button type="button" class=" btn btn-sm " style="border-radius: 3%; padding-top: 5px;background-color:#12344c;color: white;">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe" viewBox="0 0 16 16">
              <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm7.5-6.923c-.67.204-1.335.82-1.887 1.855A7.97 7.97 0 0 0 5.145 4H7.5V1.077zM4.09 4a9.267 9.267 0 0 1 .64-1.539 6.7 6.7 0 0 1 .597-.933A7.025 7.025 0 0 0 2.255 4H4.09zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a6.958 6.958 0 0 0-.656 2.5h2.49zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5H4.847zM8.5 5v2.5h2.99a12.495 12.495 0 0 0-.337-2.5H8.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5H4.51zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5H8.5zM5.145 12c.138.386.295.744.468 1.068.552 1.035 1.218 1.65 1.887 1.855V12H5.145zm.182 2.472a6.696 6.696 0 0 1-.597-.933A9.268 9.268 0 0 1 4.09 12H2.255a7.024 7.024 0 0 0 3.072 2.472zM3.82 11a13.652 13.652 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5H3.82zm6.853 3.472A7.024 7.024 0 0 0 13.745 12H11.91a9.27 9.27 0 0 1-.64 1.539 6.688 6.688 0 0 1-.597.933zM8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855.173-.324.33-.682.468-1.068H8.5zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.65 13.65 0 0 1-.312 2.5zm2.802-3.5a6.959 6.959 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5h2.49zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7.024 7.024 0 0 0-3.072-2.472c.218.284.418.598.597.933zM10.855 4a7.966 7.966 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4h2.355z"/>
            </svg>
            Published
          </button> 
        </li>
        <li style="padding-left: 20px;" >
          <div class="btn-group">
            <button class="btn border border-secondary btn-sm" type="button" >
              Add Candidate
            </button>
            <button type="button" class="btn btn-sm border border-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
              <span class="visually-hidden"></span>
            </button>
            <ul class="dropdown-menu">
              ...
            </ul>
          </div>
        </li>
        
      </ul>
    </nav>
  </div>
</div>

<%
    // Accessing the servlet instance
    FetchController mySer = new FetchController();
    Map<List<String>,byte[]> lb = mySer.fetch();
	
	 %>



      <div >
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="container overflow-hidden">
        
                   
            <div class="row">
           <div class="col">
                <table style="width: 100%;" >
                  <tr style="height: 60px;background-color: #fffefe;border-left:6px solid #F2B23E;">
                    <th style="color:   #000000;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Open
                    </th>
                  </tr>
                </table>
              </div>
              
<%
    // Accessing the servlet instance
    Fetch1Controller mySer1 = new Fetch1Controller();
    Map<List<String>,byte[]> lb1 = mySer.fetch();
	
	 %>
              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;border-left:6px solid #F2B23E;">
                    <th style="color:   #000000;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Contacted - 5</th>
                  </tr>
                </table>
              </div>
              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;border-left:6px solid #F2B23E;">
                    <th style="color:   #000000;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Written test - 10
                   
                    </th>
                  </tr>              
                </table>
              </div>
              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;border-left:6px solid #F2B23E;">
                    <th style="color:   #000000;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Written Test completed - 3
                    
                    </th>
                  </tr>
                </table>
              </div>

              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;border-left:6px solid #F2B23E;">
                    <th style="color:   #000000;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Newton School - 0
                    </th>
                  </tr>
                </table>
              </div>
            </div>
            <br>
         
            
            
            
            
            
            <div class="row gx-5">
            
              <div class="col" style="margin-bottom:50px;">
              <% for(Map.Entry<List<String>,byte[]> nm:lb.entrySet()){ 
            	     int i=0;
                 %>
                <table style="width: 100%;">
                <tr style="height: 60px;background-color: #fffefe;">
                    <td style="color:   #6b9ae2;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;<%= nm.getKey().get(i++) %>
                    <br>
                    <span style="color: rgb(99, 98, 98);">&nbsp;&nbsp;<%= nm.getKey().get(i) %></span>
                    <br>
                    <p style="color: rgb(99, 98, 98);padding-right: 20px;" class="text-right">REQ:#1062</p>  
                    </td>
                  </tr>
                  <tr style="height: 30px;background-color: #F9FBFC;">
                    <td>
                      <form>
                        <div class="form-group">
                          <span><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i></span> 
                          <span class="pull-right" style="padding-left: 20px;"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                          </svg></a></span>
                          <span class="pull-right" ><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-r-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002V12h1.335V8.924H8.52L9.98 12h1.52L9.856 8.701c.828-.299 1.495-1.101 1.495-2.238 0-1.488-1.03-2.461-2.74-2.461H5.5Zm1.335 1.09v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417H6.835Z"/>
                          </svg></a></span>        
                        </div>
                      </form>
                    </td>  
                  </tr>
                  <br>
                </table>
                     <% } %>
              </div>
              
              <div class="col">
               <% for(Map.Entry<List<String>,byte[]> nm:lb1.entrySet()){ 
            	     int i=0;
                 %>
                <table style="width: 100%;">
                 <tr style="height: 60px;background-color: #fffefe;">
                    <td style="color:   #6b9ae2;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Naveen
                    <br>
                    <span style="color: rgb(99, 98, 98);">&nbsp;&nbsp;KCE</span>
                    <br>
                    <p style="color: rgb(99, 98, 98);padding-right: 20px;" class="text-right">REQ:#1062</p>  
                    </td>
                  </tr>
                  <tr style="height: 30px;background-color: #F9FBFC;">
                    <td>
                      <form>
                        <div class="form-group">
                          <span><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i></span> 
                          <span class="pull-right" style="padding-left: 20px;"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                          </svg></a></span>
                          <span class="pull-right" ><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-r-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002V12h1.335V8.924H8.52L9.98 12h1.52L9.856 8.701c.828-.299 1.495-1.101 1.495-2.238 0-1.488-1.03-2.461-2.74-2.461H5.5Zm1.335 1.09v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417H6.835Z"/>
                          </svg></a></span>        
                        </div>
                      </form>
                    </td>  
                  </tr>
                  <br>
                </table>
                   <% } %>
              </div>
              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;">
                    <td style="color:   #6b9ae2;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Naveen kumar
                    <br>
                    <span style="color: rgb(99, 98, 98);">&nbsp;&nbsp;KCE</span>
                    <br>
                    <p style="color: rgb(99, 98, 98);padding-right: 20px;" class="text-right">REQ:#1062</p>  
                    </td>
                  </tr>
                  <tr style="height: 30px;background-color: #F9FBFC;">
                    <td>
                      <form>
                        <div class="form-group">
                          <span><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i></span> 
                          <span class="pull-right" style="padding-left: 20px;"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                          </svg></a></span>
                          <span class="pull-right" ><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-r-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002V12h1.335V8.924H8.52L9.98 12h1.52L9.856 8.701c.828-.299 1.495-1.101 1.495-2.238 0-1.488-1.03-2.461-2.74-2.461H5.5Zm1.335 1.09v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417H6.835Z"/>
                          </svg></a></span>        
                        </div>
                      </form>
                    </td>  
                  </tr>
                </table>
              </div>
              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;">
                    <td style="color:   #6b9ae2;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Munish
                    <br>
                    <span style="color: rgb(99, 98, 98);">&nbsp;&nbsp;KCE</span>
                    <br>
                    <p style="color: rgb(99, 98, 98);padding-right: 20px;" class="text-right">REQ:#1062</p>  
                    </td>
                  </tr>
                  <tr style="height: 30px;background-color: #F9FBFC;">
                    <td>
                      <form>
                        <div class="form-group">
                          <span><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i></span> 
                          <span class="pull-right" style="padding-left: 20px;"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                          </svg></a></span>
                          <span class="pull-right" ><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-r-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002V12h1.335V8.924H8.52L9.98 12h1.52L9.856 8.701c.828-.299 1.495-1.101 1.495-2.238 0-1.488-1.03-2.461-2.74-2.461H5.5Zm1.335 1.09v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417H6.835Z"/>
                          </svg></a></span>        
                        </div>
                      </form>
                    </td>  
                  </tr>
                </table>
              </div>

              <div class="col">
                <table style="width: 100%;">
                  <tr style="height: 60px;background-color: #fffefe;">
                    <td style="color:   #6b9ae2;font-weight: 800;padding-top: 10px;">&nbsp;&nbsp;Jessy
                    <br>
                    <span style="color: rgb(99, 98, 98);">&nbsp;&nbsp;KCE</span>
                    <br>
                    <p style="color: rgb(99, 98, 98);padding-right: 20px;" class="text-right">REQ:#1062</p>  
                    </td>
                  </tr>
                  <tr style="height: 30px;background-color: #F9FBFC;">
                    <td>
                      <form>
                        <div class="form-group">
                          <span><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i></span> 
                          <span class="pull-right" style="padding-left: 20px;"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical" viewBox="0 0 16 16">
                            <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                          </svg></a></span>
                          <span class="pull-right" ><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-r-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM5.5 4.002V12h1.335V8.924H8.52L9.98 12h1.52L9.856 8.701c.828-.299 1.495-1.101 1.495-2.238 0-1.488-1.03-2.461-2.74-2.461H5.5Zm1.335 1.09v2.777h1.549c.995 0 1.573-.463 1.573-1.36 0-.913-.596-1.417-1.537-1.417H6.835Z"/>
                          </svg></a></span>        
                        </div>
                      </form>
                    </td>  
                  </tr>
                </table>
              </div>
            </div>
         <br>

         
          
    
            </div>



          </div>
        

        

      </div>
        <!-- /page content -->
      </div>
        <!-- footer content -->
        <footer>
          
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Add New Candidate</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form  action="addcandidate" method="get" enctype="multipart/form-data">
              <div class="form-group">
                <label class="form-label" for="customFile">Image</label>
                <input type="file" class="form-control" id="customFile" accept="image/*" name="profile" required />
              </div>
              <div class="form-group">
                <label for="recipient-name" class="col-form-label">Name:</label>
                <input type="text" class="form-control" id="recipient-name" name="name" required>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Email:</label>
                <input type="email" class="form-control" id="recipient-name" name="email" required>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Institution:</label>
                <input type="email" class="form-control" id="recipient-name" name="ins" required>
              </div>
              <div class="form-group">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="exampleFormControlSelect1" name="category" required>
                  <option>Open</option>
                  <option>Contacted</option>
                  <option>Written test</option>
                  <option>Written Test completed</option>
                  <option>Newton School</option>
                </select>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Phone:</label>
                <input type="text" class="form-control" id="recipient-name" name="phno" required>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">DOB:</label>
                <input type="date" class="form-control" id="recipient-name" name="dob" required>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Location:</label>
                <input type="text" class="form-control" id="recipient-name" name="Location" required>
              </div>
              <div class="form-group">
                <label for="exampleFormControlSelect1">Gender</label>
                <select class="form-control" id="exampleFormControlSelect1" name="gender" required>
                  <option>Male</option>
                  <option>Female</option>
                  <option>Other</option>
                </select>
              </div>
              <div class="form-group">
                <label for="message-text" class="col-form-label">Address:</label>
                <input type="text" class="form-control" id="recipient-name" name="Address" required>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <input type="submit" class="btn btn-primary" placeholder="Send message" />
              </div>
            </form>
          </div>

        </div>
      </div>
    </div>








    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	
  </body>
</html>
