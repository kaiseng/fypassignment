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
		$res="SELECT * FROM car_rental.owner";
		$result=mysqli_query($connection,$res);
	echo "<h1><center>Profits according to Car Types</h1><br><br>";	
?>
<center>
<table border='1'>
<tr>
<th>Company id</th>
<th>Category</th>
<th>Earnings</th>
</tr>
<?php
if (mysqli_num_rows($result) > 0) {
while($row = mysqli_fetch_assoc($result))
{
echo "<tr>";
echo "<td>" . $row["Company_id"] . "</td>";
echo "<td>" . $row["Category"] . "</td>";
echo "<td>" . $row["Earnings"] . "</td>";
echo "</tr>";
}
}
?>
</table>
</body>
</html>