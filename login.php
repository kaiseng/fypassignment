<?php
include("loginserv.php"); //Include loginserv for checking username and password
?>
<button style="padding:10px 20px;border:none" onclick="goBack()">Go Back</button>
<script>
function goBack() {
    window.history.back();
}
</script>
<!doctype html>
<html>
    <head>
            <style >
                .login{
                    width:360px;
                    margin:50px auto;
                    font:Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", serif;
                    border radius:10px;
                    border:2px solid #FF7F50;
                    padding:10px 40px 25px;
                    margin-top:70px;
                }
                input [type=text], input [type=password]{
                    width:99%;
                    padding:10px;
                    margin-top:8px;
                    border:1px solid #ccc;
                    padding-left:5px;
                    font-size:16px;
                    font-family:Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", serif;
                }
                input [type=submit]{
                    width:100%;
                    background-color:#009;
                    color:#fff;
                    border:2px solid #06F;
                    padding:10px;
                    font-size:20px;
                    cursor:pointer;
                    border radius:5px;
                    margin-bottom:15px;
                }
                body  {
                    font-family:Arial, Helvetica, sans-serif;
                    font-size:12px;
                    background:#000000 ;
                    background-image: url(images/pg1.jpg);
                    color:black;
}
                </style>
</head>
<body>
    <div class="login">
    <h1 align="center">Login</h1>
    <IMG SRC="logo.png" WIDTH=380 HEIGHT=190><br><br>
    <form action="" method="post" style="text-align:center;">
        <input type="text" style="width:200px;height:20px;font-size:15;" placeholder="Username" id="user" name="user"><br/><br/>
        <input type="password"  style="width:200px;height:20px;font-size:15;"placeholder="Password" id="pass" name="pass"><br/><br/>
        <input type="submit"  style="width:120px;height:20px;font-size:15;" value="Login" name="submit">
        <a href="index.html">Log in as user</a>
<!-- Error Message -->
<span><?php echo $error; ?></span>
</body>
</html>