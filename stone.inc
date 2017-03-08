<?php

class Stone{

public function __construct()
{
	$this->db = new mysqli("localhost","root","root",'JDC');
	if ($this->db->connect_errno != 0)
	{
		echo "error connecting to databse: ".$this->db->connect_error.PHP_EOL;
		exit();
	}
}

public function __destruct()
{
	if (isset($this->db))
	{
		$this->db->close();
	}
}



public function addStone($stoneType,$stonePrice, $stoneCut, $stoneQty)

{

	$ST = $stoneType;
	$SP = $stonePrice;
	$SC = $stoneCut;
	$SQ = $stoneQty;

	$sql = "insert into stoneLists(stoneType, stonePrice, stoneCut, stoneQty) VALUES ('$ST','$SP','$SC','$SQ');";


	if (!$this->db->query($sql))
		{
			echo "Failed to insert record for $stoneType".PHP_EOL;
		}

			
}

public function editStone($stoneId)
{

	$SI = $stoneId;

	$sql = "select * from stoneLists where id =" . $SI.";";
	$result = $this->db->query($sql);
	
	return $result;
}
public function editStoneSubmit($stoneID,$stoneType,$stonePrice, $stoneCut, $stoneQty)
{
	$SI= $stoneID;
	$ST = $stoneType;
	$SP = $stonePrice;
	$SC = $stoneCut;
	$SQ = $stoneQty;


		$sql = "update stoneLists set stoneType = \"".$ST."\",
					      stonePrice = $SP,
					      stoneCut = \"".$SC."\",
					      stoneQty = $SQ
					      where id =" . $SI.";";


	if (!$this->db->query($sql))
			{
				echo "Failed to insert record for $stoneType".PHP_EOL;
			}

	


}


public function deleteStone($stoneID)
{
	$SD = $stoneID;

	$sql= "delete from stoneLists where ID = " . $SD.";";


	if (!$this->db->query($sql))
			{
				echo "Failed to insert record for $stoneType".PHP_EOL;
			}


}




}

?>
