<html>
<head>
	<title>JDC Group Admin</title>
</head>
<body>
<h1>JDC Groupe Admin Login</h1>
<?php
if (!isset($_POST['submit'])){
?>
<!-- The HTML login form -->
	<form action="<?=$_SERVER['PHP_SELF']?>" method="post">
		Username: <input type="text" name="username" /><br />
		Password: <input type="password" name="password" /><br />

		<input type="submit" name="submit" value="Login" />
	</form>
<?php
} else {
	require_once("connect.inc");
	

	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * from userAccounts WHERE username LIKE '{$username}' AND password LIKE '{$password}' LIMIT 1";
	$result = $mysqli->query($sql);
	if (!$result->num_rows == 1) {
		echo "<p>Invalid username/password combination</p>";
	} else {
		echo "<p>Logged in successfully</p>";
	header("Location: admin.php");
		
	}
}
?>		
</body>
</html>
