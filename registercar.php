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
	
$License_no=$_POST["lno"];
$Model=$_POST["model"];
$Year=$_POST["year"];
$Ctype=$_POST["Cartype"];
$Daily_Rate=$_POST["daily_rate"];

	$result="INSERT INTO car(License_no,Model,Year,Ctype,Daily_Rate) VALUES('$License_no','$Model','$Year','$Ctype','$Daily_Rate')";
	mysqli_query($connection,$result) or die(mysqli_error($connection));
	echo "<h3>New car has been successfully added</h3>";

?>
</body>
</html>
