<html>
<body>
	   
<style>
body  {
    background-image: url("images/pg1.jpg");
}
</style>

<button style="padding:10px 20px;border:none" onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>

<?php
	$database_host = "localhost";
	$database_user = "root";
	$database_pass = "root";
    $database_name = "car_rental";
	$connection = mysqli_connect($database_host, $database_user, $database_pass, $database_name);
	if(mysqli_connect_errno()){
		die("Failed connecting to MySQL database. Invalid credentials" . mysqli_connect_error(). "(" .mysqli_connect_errno(). ")" ); }
		
		
	$Nric=$_POST["nric"];
	$res="SELECT Amount FROM rental where Nric = '$Nric'";
	$result=mysqli_query($connection,$res);
	$row = mysqli_fetch_assoc($result);
		
			if ($row["Noweeks"]==0) {
			$res1="SELECT * FROM car_rental.rental where Nric = '$Nric'";
	$result1=mysqli_query($connection,$res1);
	echo "<h1><center>Amount due</h1><br><br>";
	$row1 = mysqli_fetch_assoc($result1);
	echo "<h1>SGD&nbsp".$row1["Amount"]."</h1>";
			}
			else{
			$res2="SELECT * FROM car_rental.rental where Nric = '$Nric'";
	$result2=mysqli_query($connection,$res2);
	echo "<h1><center>Amount due</h1><br><br>";
	$row2 = mysqli_fetch_assoc($result2);
	echo "<h1>SGD&nbsp".$row2["Amount"]."</h1>";
			}
?>
</body>
</html>