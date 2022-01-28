
<html>
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
				<!-- Bootstrap CSS -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  </head>
			<body>

			<section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">REGISTER</h3>
            <form  method="POST">
            <div class="form-outline mb-4">
              <label class="form-label" >First-Name</label>
			  <input type="text" class="form-control form-control-lg" name="firstName" />
            </div>
			<div class="form-outline mb-4">
              <label class="form-label" >Last-Name</label>
			  <input type="text" class="form-control form-control-lg" name="lastName" />
            </div>
			<div class="form-outline mb-4">
              <label class="form-label">Email</label>
			  <input type="email" class="form-control form-control-lg" name="email" />
            </div>
			<div class="form-outline mb-4">
              <label class="form-label" >Password</label>
			  <input type="password" class="form-control form-control-lg" name="password" />
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="submit" name="register">Register</button>
           </form>
              <div id="register-link" class="text-right">
              <a href="giris.php" class="text-info">Login </a>
              </div> 
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"/>
		</body>
					</html>
<?php
     
     require_once'C:\xampp\htdocs\webproject\assets\connection.php';
     if(isset($_POST['register'])){
	 $email=$_POST['email'];
	 $password=$_POST['password'];
	 $lastName=$_POST['lastName'];
	 $firstName=$_POST['firstName'];
	 }


	 $query = "INSERT INTO users (name,last_name, email, password) 
  			  VALUES('".$firstName."','".$lastName."', '".$email."', '".$password."')";
			  mysqli_query($link,$query);
	 
?>
