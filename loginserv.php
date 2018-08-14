<?php
$error=''; //Variable to Store error message;
if(isset($_POST['submit'])){
    if(empty($_POST['user']) || empty($_POST['pass'])){
        $error = "Username or Password is Invalid"; 
    }
    else
    {
        //Define $user and $pass
       
        $user=$_POST["user"];
        $pass=$_POST["pass"];
        //Establishing Connection with server by passing server_name, user_id and pass a parameter
        $conn = mysqli_connect("localhost", "root", "root");
        //Selecting Database
        $db = mysqli_select_db($conn, "userpass");
        //sql query to fetch information of registered user and finds user match
        $query = mysqli_query($conn, "SELECT * FROM car_rental.userpass WHERE user='$user' AND pass='$pass'");
       
        $rows = mysqli_num_rows($query);
        if($rows == 1){
            header("Location: homepage.html"); //Redirecting to other page
        }
        else{
            $error = "Username or Password is Invalid";
        }
        mysqli_close($conn); //Closing connection
    }
}
?>