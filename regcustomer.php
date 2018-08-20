<html>
<body>
	   
<style>
body  {
    background-image: url("images/pg1.jpg");
}
</style>

<button onclick="goBack()">Go Back</button>
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
	
$Fname=$_POST["first_name"]; //NO
$Lname=$_POST["last_name"]; //NO
$NRIC=$_POST["nric"]; 
$AGE=$_POST["age"]; 
$Mobile=$_POST["mobile"]; 
$Email_address=$_POST["email_address"]; 

	$result="INSERT INTO customer(Fname,Lname,NRIC,AGE,Mobile,Email_address) VALUES('$Fname','$Lname', '$NRIC' ,'$AGE','$Mobile', '$Email_address')";
	mysqli_query($connection,$result) or die(mysqli_error($connection));
	echo "<h3>Successful Register</h3><br>";
?>
<?php	
	$result1="SELECT NRIC FROM customer WHERE nric='$NRIC'";
	$result2=mysqli_query($connection,$result1);
	while($row = mysqli_fetch_assoc($result2))
{
	echo "<h3>NRIC is :</h3>".$row["NRIC"];
}
?>
</body>
</html>
