<?php

include("style.inc");


error_reporting(E_ALL);
ini_set('display_errors', 1);


?>
<html>
<body>

    <?php if (isset($_POST['submit'])) { 
       

	$snn = htmlentities($_POST['SN'], ENT_QUOTES);
	$mtt = htmlentities($_POST['MT'], ENT_QUOTES);
	$stt = htmlentities($_POST['ST'], ENT_QUOTES);
	$sqq = htmlentities($_POST['SQ'], ENT_QUOTES);
	$spp = htmlentities($_POST['SP'], ENT_QUOTES);

	if ($snn==''||$mtt==''||$spp ==''||$stt=='' ||$sqq==''){
	
	echo "Soemthing isnt working!";
	}else{
	echo "Style added";
	$Purchase = new Style();
	$Purchase->addStyle($snn, $mtt, $stt, $spp, $sqq);
	} }

?></h1>
   <a href="admin.php">Return to Admin Page</a>
    <form action="" method="post">
    <p>Style Number: <input type="text" name="SN" /></p>
    <p>Metal Type: <select name="MT">
		  <option value="14KW"> 14KW </option>	
		 <option value="925"> 925 Silver </option>
		 <option value="18KW"> 18KW </option>
		 <option value="24KW"> 24KW </option></select></p>	
    <p>Style Type: <select name="ST">
		  <option value="Bracelet"> Bracelet </option>
		  <option value="Ring"> Ring </option>
		 <option value="Necklace"> Necklace </option>
		 <option value="Earrings"> Earrings </option></select></p>
    <p>Price: <input type="text" name="SP" /></p>
    
    <p>Qty: <input type="text" name="SQ" /></p>
      <p><input name="submit" value="Submit" type="submit"/></p>

</body>
</html>

