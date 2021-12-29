<%-- 
    Document   : SEMESTER_RESULT
    Created on : Dec 27, 2021, 12:53:02 PM
    Author     : Tanmoy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title> RESULT </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src='js/download_icon.js'></script>
<style type="text/css">
	/*.body{
		padding: 0;
		margin: 0;
		background-color: #319ba8;
	}*/

  body {
    margin: 0;
    padding: 0;
    /*font-family: sans-serif;*/
    background-image: url('Images/result_bg.jpg');


}

	.table{
		border: 1px solid blue;
		margin-top: 15px;

    }

    <script type="text/javascript">

        function picture(){ 
        var pic = "dog1.jpg"
        document.getElementById('bigpic').src = pic.replace('90x90', '225x225');

        }


    </script>

</style>
</head>
<body style="background-image: result_bg.jpg;">
	<div class="container p-5 " style="border: 2px solid blue; background-color: #fff; width: 50%;  margin-top: 10%;
  "  >
	 <table class="table table-striped table-hover " style="text-align: center;">
  <thead>
  	<tr>
  		<th colspan="7" class="bg-primary" style="text-align: center;" >RESULT</th>
  	</tr>
  	<!-- <tr>
  		<th colspan="7" class=" text-center">sem 3</th>
  	</tr> -->
  <!--   <tr>
      <th scope="col">PAPER CODE</th>
      <th scope="col">PAPER NAME</th>
      <th scope="col">CA1</th>
      <th scope="col">CA2</th>
      <th scope="col">CA3</th>
      <th scope="col">CA4</th>
      <th scope="col">RESPONSIBLE TEACHER</th>
    </tr> -->
  </thead>
  <tbody>
    <tr>
      <th scope="row">SEMESTER 1</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="" download="" target="_blank">download</a><i class='fas fa-download'></i></td>
  
      <!-- <td>24</td>
      <td>24</td>
      <td></td>
      <td></td>
      <td> pb sir</td> -->
    </tr>
    <tr>
      <th scope="row">SEMESTER 2</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>

    <tr>
      <th scope="row">SEMESTER 3</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <tr>
      <th scope="row">SEMESTER 4</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <tr>
      <th scope="row">SEMESTER 5</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <tr>
      <th scope="row">SEMESTER 6</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <tr>
      <th scope="row">SEMESTER 7</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <tr>
      <th scope="row">SEMESTER 8</th>
      <td><a href="#">view </a><i class="fa fa-eye"></i></td>
      <td><a href="#">download </a><i class='fas fa-download'></i></td>
    </tr>
    

    <!-- <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr> -->
  </tbody>
</table>
</div>
</body>
</html>
