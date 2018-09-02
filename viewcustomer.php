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
		die("Failed connecting to MySQL database. Invalid credentials" . mysqli_connect_error(). "(" .mysqli_connect_errno(). ")" ); 
	} else {

	}
	$res="SELECT * FROM car_rental.customer";
	$result=mysqli_query($connection,$res);
	echo "<h1><center>Customer's Information</h1><br><br>";
?>
<center>
<table border='1'>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>NRIC</th>
<th>Age</th>
<th>Mobile</th>
<th>Email_address</th>
</tr>

<?php
if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result))
{
echo "<tr>";
echo "<td>" . $row["Fname"] . "</td>";
echo "<td>" . $row["Lname"] . "</td>";
echo "<td>" . $row["NRIC"] . "</td>";
echo "<td>" . $row["AGE"] . "</td>";
echo "<td>" . $row["Mobile"] . "</td>";
echo "<td>" . $row["Email_address"] . "</td>";
echo "</tr>";
}
}
?>
</table>
</body>
</html>