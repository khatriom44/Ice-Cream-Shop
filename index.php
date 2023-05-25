<?php
$is_invalid = false;
$mysqli = require __DIR__ . "/database.php";
if(!empty($_POST['btn'])){
	$username=$_POST["username"];
	$password=$_POST["password"];


	$sql="SELECT * FROM user WHERE username='$username' and password='$password' ";

	$result  = mysqli_query($conn, $sql);

	$count = mysqli_num_rows($result);

	if($count>0){
		header("location: index2.php");
		
	}
	
	$is_invalid = true;
	
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script>
		const alertList = document.querySelectorAll('.alert')
		const alerts = [...alertList].map(element => new bootstrap.Alert(element))
	</script>		
</head>
<body>
	<img class="wave" src="img/wave.png">
	<!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
		<strong>Well Done!</strong> Signup Successfully.
		<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	  </div> -->
	<div class="container">
	
		<div class="img">
			<img src="img/bg.svg">
		</div>
		<div class="login-content">
			<form method="post">
				<img src="img/avatar.svg">
				<h2 class="title">Welcome</h2>
				<!-- <div class="alert alert-warning alert-dismissible fade show" role="alert"> -->
				<?php 
					
					if ($is_invalid): ?>
						<em>Invalid Login</em>
					<?php endif; ?>
						<!-- <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div> -->
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-envelope"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" class="input" name="username" value="<?php htmlspecialchars($_POST['username'] ?? "") ?>">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="input" name="password">
            	   </div>
            	</div>
            	<!-- <a id="Fpassword" href="#">Forgot Password?</a> -->
            	<input type="submit" name="btn" class="btn" value="Login">
            	<!-- <p id="Caccountp">Not create account yet? <a id="Caccount" href="signup.html">Create account</a></p> -->
            </form>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>