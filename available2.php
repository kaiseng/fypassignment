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
        
        $Cid=$_POST["cbid"];
        $Sdate=$_POST["Sdate"];
        $Ctype=$_POST["Ctype"];
        $Rtype=$_POST["Rtype"];
        $Nodays=$_POST["Days"];
        $Noweeks=$_POST["Weeks"];
        $Vehicle_id=$_POST["Vehicleid"];
        ?>
        <CENTER>
        <table border='1'><tr><th>Vehicle ID</th></tr>
        <?php
        $res="select vehicle_id from car where ctype='$Ctype' and Vehicle_id not in 
        (SELECT Vehicle_id FROM rental WHERE rental.Ctype='$Ctype' and Sdate='$Sdate')";
            $result=mysqli_query($connection,$res);
            if ($Noweeks>=1) {
                $num=$Noweeks*7;
                $D2=date('Y-m-d', strtotime($Sdate. ' + $num days'));
            }
            
            if ((mysqli_num_rows($result) > 0) || (strtotime($Sdate) > strtotime($D2))) {
                echo "<br><h2>Availability shown below</h2><br>";
                echo "<h3>List of Available vehicles</h3><br>";
                while($row = mysqli_fetch_assoc($result))
                {
                    echo "<tr>"; echo "<td>" . $row["vehicle_id"] . "</td>";
                    echo "</tr>";
                }
            }
            else
                echo "Car is not available";
        ?>
        </table>
        <?php
        
        if($Vehicle_id!=null) {
            
            $res="INSERT into rental(Cid,Vehicle_id,Ctype,Rtype,Sdate,Nodays,Noweeks) values('$Cid','$Vehicle_id','$Ctype','$Rtype','$Sdate','$Nodays','$Noweeks')";
            $result=mysqli_query($connection,$res);
            echo "Rental has been added";
        }
        ?>
        
        <?php
        
        ?>
        </table>
        </body>
        </html>
