<%-- 
    Document   : login
    Created on : Dec 24, 2021, 11:02:11 AM
    Author     : Tanmoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>Employee Login Form</h1>
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>-->

<!DOCTYPE html>
<html>
    <meta charset="ISO-8859-1">
<head>
  <title></title>
  <style type="text/css">
    body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background-image: url('Images/5951544.jpg');


}

.card {
  
    border: none;
    display: flex;
  justify-content: center;

  
}

.box {
    width: 500px;
    padding: 25px;

    background: none;
    
    text-align: center;
    align-content: center;
    transition: 0.25s;
    margin-top: 100px;
    align-items: center;
    border: 5px solid #3498db;
    
}

.box input[type="text"],
.box input[type="password"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 250px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
   
}

.box h1 {
    color: white;
    text-transform: uppercase;
    font-weight: 500
    /*opacity:1;*/
}

.box input[type="text"]:focus,
.box input[type="password"]:focus {
    width: 300px;
    border-color: #2ecc71;
    color: white;
}

.box input[type="submit"] {
    border: 0;
    background: none;
    background-color: #307BDD;
    display: block;
    margin: 20px auto;
    text-align: center;
/*    border: 2px solid #2ecc71;*/
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.box input[type="submit"]:hover {
    background: #2ecc71
}

.forgot {
    text-decoration: underline;
    color: white;
}
::-webkit-input-placeholder {
   color: white;
}
.test{
    padding: 2px;
    border: 2px solid #3498db;
}



  </style>
</head>
<body>
  <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card ">
                <form class="box" action="<%=request.getContextPath()%>/login" method="post">
                    <div class ="test">
                    <h1 style="color: #FFFFFF; font-size: 40px;"><b> Student  &nbsp Login</b></h1>
                   <input type="text" name="username" placeholder="Username" style="background-color: #010101;"> 
                   <input type="password" name="password" placeholder="Password" style="background-color: #010101;"> 
                   <a class="forgot text-muted" href="#" style="color: #ffffff;"><b>Forgot password?</b></a> 
                   <input type="submit" value="submit">
                    <a class="forgot" href="#" style="color: #ECF0F4;"><b>New here? Register Now</b></a> 

                  </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
