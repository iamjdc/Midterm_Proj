


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Shopping Cart</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>



<div class="products">
<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once("connect.inc");


$current_url = urlencode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);

$results = $conn->query("SELECT * FROM stoneLists ORDER BY ID ASC");
if($results){ 
$products_item = '<ul class="products">';
//fetch results set as object and output HTML
while($obj = $results->fetch_object())
{
$products_item .= <<<EOT
    <form method="post" action="cart_update.php">
<li class="product">	
<fieldset>

	<p>Stone Type: {$obj->stoneType}</p> 
	<p>Price: {$currency}{$obj->stonePrice} </p>
    	<p> Stone Cut: {$obj->stoneCut}</p>
	<p> Stone Avaliable Qty: {$obj->stoneQty} </p> 
    <input type="hidden" name="type" value="add" />
    <input type="hidden" name="return_url" value="{$current_url}" />
    <td align="center"><button type="submit" class="add_to_cart">Add</button></td>
    </fieldset>

    </form></li>
   
EOT;
}
$products_item .= '</ul>';
echo $products_item;
}
?>


</body>
</html>
