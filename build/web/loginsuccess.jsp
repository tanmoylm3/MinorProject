<%-- 
    Document   : loginsuccess
    Created on : Dec 24, 2021, 11:03:42 AM
    Author     : Tanmoy
--%>


<%
String id = (String)session.getAttribute("sessionid");
if(id==null) {

%>
<jsp:forward page="LOGIN_STUDENT.jsp" />
<%  } %>


<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DaoImplement.DbConnectionImpl"%>
<%@page import="DaoInterface.QueryInterface"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="login.database.LoginDao"%>


<%@page import="login.database.*"%>
<!DOCTYPE html>
<!--<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>You have logined successfully</h1>
 </div>
</body>
</html>-->



<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style type="text/css">
    	* {
  box-sizing: border-box;
}


body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
 /* float: left;*/
  width: 50%;
  padding: 0 10px;
  height: 25%;
}

/* Remove extra left and right margins, due to padding in columns */
.row {margin: 0 -10px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
  padding: 32px;
  text-align: left;
  background-color: #fff;


}

/* Responsive columns - one column layout (vertical) on small screens */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}



    </style>


</head>

<body id="page-top" >
    
 <%
try{
    
Connection connection=null;
connection =  DbConnectionImpl.getConnection();
PreparedStatement preparedStatement=connection.prepareStatement(QueryInterface.MatchStudentPersonalSQL);

preparedStatement.setString(1, id);
//out.println(id);
//out.println(preparedStatement);
ResultSet resultSet = null;
resultSet = preparedStatement.executeQuery();
while(resultSet.next()){
%>


    <!-- Page Wrapper -->
    <div id="wrapper" style="background: #2C6E8B">

        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" >

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <!-- <div class="sidebar-brand-text mx-3">S R M S<sup>2</sup></div> -->
                <div class="sidebar-brand-text mx-3 h3">S R M S</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
      <!--       <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading" style="text-align: center;">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="13071020010_TANMOY JANA_CA_3.pdf " download="" target="_blank" >
                    <!-- <i class="fas fa-fw fa-cog"></i> -->
                    <span>Class Routine</span>
                </a>
               <!--  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div> -->
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="Subjects.html" >
                   <!--  <i class="fas fa-fw fa-wrench"></i> -->
                    <span>Subjects</span>
                </a>
                <!-- <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.html">Colors</a>
                        <a class="collapse-item" href="utilities-border.html">Borders</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div> -->
            </li>

            <!-- Divider -->
            <!-- <hr class="sidebar-divider"> -->

            <!-- Heading -->
       <!--      <div class="sidebar-heading">
                Addons
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="Teachers.html" >
                   <!--  <i class="fas fa-fw fa-folder"></i> -->
                    <span>Teachers</span>
                </a>
                <!-- <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a>
                    </div>
                </div> -->
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <!-- <i class="fas fa-fw fa-chart-area"></i> -->
                    <span>Feedback</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <!-- <i class="fas fa-fw fa-table"></i> -->
                    <span>About Institution</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
        <!--     <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
 -->
            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
                <p class="text-center mb-2"><strong>S R M S </strong> is packed with premium features, components, and more!</p>
                <p class="text-center mb-2"> CONTACT : XXXXX XXXXX</p>
                <p class="text-center mb-2"> EMAIL : ######@xxxx.com</p>
                <p class="text-center mb-2"> ADDRESS : XXXXXXXXXXXXX</p>


               <!--  <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a> -->
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

               <nav class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow w-100 fixed-top" style="background-color: #2C6E8B; position: sticky;">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <!-- <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    
 -->
                    <!-- Topbar Navbar -->
                    <h3 style="color:#fff ">Welcome  <%=resultSet.getString("STUDENT_NAME") %></h3>
                    <button class="btn btn-light ml-auto" ><a href="LOGOUT.jsp">Sign Out</a></button>
                    

                </nav>

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
             
                <!-- End of Topbar -->


                <!-- Begin Page Content -->
                <div class="container-fluid ">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Resume</a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2 " style="  background: linear-gradient(to right, rgba(246, 211, 101, 0.5), rgba(253, 160, 133))">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                            	<center><a href="STUDENT_APPLICATION_FORM.html" style="color: #fff;">Edit Application Form</a></center>
                                            </div>
                                        </div>
                                       <!--  <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-light shadow h-100 py-2 bg-success" style=" background: linear-gradient(to right, rgba(48, 207, 208, 0.5), rgba(51, 8, 103))">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <center><a href="SEMESTER_RESULT.jsp" style="color: #fff;">Semester<br>Result</a></center>
                                                </div>
                                            <!-- <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div> -->
                                        </div>
                                        <!-- <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2 bg-info" style="background: linear-gradient(to right, rgba(240, 147, 251, 0.5), rgba(245, 87, 108))">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                                                <center><a href="#" style="color: #fff;">Practical <br>Marks</a></center>
                                                </div>
                                           <!--  <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </div>
                                        <!-- <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2 bg-secondary" style="background: linear-gradient(to right, rgba(67, 233, 123, 0.5), rgba(56, 249, 215))">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h5 mb-0 font-weight-bold text-warning">
                                                <center><a href="CA_MARKS.html" style="color: #fff;">CA <br>Marks</a></center>
                                                </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                        </div>
                                       <!--  <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div >
                        <!-- <div class="col-xl-8 col-lg-7"> -->
                        	<div>
                           <!--  <div class="card shadow mb-4"> -->
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Your Profile </h6>
                                    <!-- <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                            aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Dropdown Header:</div>
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div> -->
                                </div>
                                <!-- Card Body -->
                                <!-- <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div> -->

                                <div class="card-body" >
                                    <div class="chart-area">
                                        <!--  <canvas id="myAreaChart"></canvas> -->
                                        <div class="row" >
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-info shadow text-info">NAME:  <%=resultSet.getString("STUDENT_NAME") %></div>
										    
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-warning shadow text-warning" >COUNTRY:  <%=resultSet.getString("COUNTRY") %></div>
										  </div>
										 
									<!-- 	</div>


										<div class="row" style="margin-top: 25px;"> -->
											  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-primary shadow text-primary" >STATE:  <%=resultSet.getString("STATE") %></div>
										  </div>

										    <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-success shadow text-success" >CITY:  </div>
										  </div>

											 <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-info shadow text-info" >AREA:  <%=resultSet.getString("AREA") %></div>
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-warning shadow text-warning" >D.O.B:  <%=resultSet.getString("DOB") %></div>
										  </div>
									<!-- 	</div>

										<div class="row" style="margin-top: 25px;"> -->
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-primary shadow text-primary" > CONTACT NUMBER:  <%=resultSet.getString("CONTACT_NO") %></div>
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-success shadow text-success" > GENDER:  <%=resultSet.getString("GENDER") %></div>
										  </div>
									<!-- 	</div>

										<div class="row" style="margin-top: 25px;"> -->
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-info shadow text-info" >  FATHERS NAME:  <%=resultSet.getString("FATHER_NAME") %></div>
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-warning shadow text-warning" > FATHER'S OCCUPATION:  <%=resultSet.getString("FATHER_OCCUPATION") %> </div>
										  </div>
									<!-- 	</div>

										<div class="row mb-4" style="margin-top: 50px; "> -->
										  <div class="column" style="margin-top: 5px;"> 
										    <div class="card border-left-primary shadow text-primary" > GUARDIAN'S CONTACT NO: <%=resultSet.getString("GUARDIAN_CONTACT_NO") %></div>
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-success shadow table-success" >MOTHER'S NAME:   <%=resultSet.getString("MOTHER_NAME") %></div>
										  </div>
										<!-- </div>

										<div class="row" style="margin-top: 25px;"> -->
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-info shadow text-info" style="text-align: left;">MOTHER'S OCCUPATION:  <%=resultSet.getString("MOTHER_OCCUPATION") %></div>
										  </div>
										  <div class="column" style="margin-top: 5px;">
										    <div class="card border-left-warning shadow text-warning" style="text-align: left;">AADHAR NO:   <%=resultSet.getString("AADHAR_NO") %></div>
										  </div>
										</div>


                                    </div>
                                </div> 
                            </div>
                        </div>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

                        
</body>

</html>
