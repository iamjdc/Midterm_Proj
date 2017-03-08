<?php

include("stone.inc");


error_reporting(E_ALL);
ini_set('display_errors', 1);


?>
<html>
<body>

    <?php if (isset($_POST['submit'])) { 
       

	$stt = htmlentities($_POST['ST'], ENT_QUOTES);
	$spp = htmlentities($_POST['SP'], ENT_QUOTES);
	$scc = htmlentities($_POST['SC'], ENT_QUOTES);
	$sqq = htmlentities($_POST['SQ'], ENT_QUOTES);
	
	if ($stt==''||$spp ==''||$scc=='' ||$sqq==''){
	
	echo "Soemthing isnt working!";
	}else{
	echo "Stone added";
	$Purchase = new Stone();
	$Purchase->addStone($stt,$spp,$scc, $sqq);
	} }

?></h1>
   <a href="admin.php">Return to Admin Page</a>
    <form action="" method="post">
    <p>Stone Type: <input type="text" name="ST" /></p>
    <p>Stone Price: <input type="text" name="SP" /></p>
    <p>Stone Cut: <select name="SC">
		  <option value="Round"> Round </option>
		  <option value="Square"> Square </option>
		 <option value="Princess"> Princess </option>
		 <option value="Emerald"> Emerald </option>
		 <option value="Heart"> Heart </option>
		 <option value="Rectangle"> Rectangle</option></select></p>
    <p>Stone Qty: <input type="text" name="SQ" /></p>
      <p><input name="submit" value="Submit" type="submit"/></p>

</body>
</html>

