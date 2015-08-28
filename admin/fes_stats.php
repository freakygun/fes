<?php 
	  
	  include('session_chk.php');
	  include("includes/config_db.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>FES Stats</title>
<link rel="stylesheet" type="text/css" href="includes/style.css" />
</head>

<body>
<table width="57%" align="center" border="0" cellpadding="0" cellspacing="1">
<?php include('admin_panel_heading.php'); ?>
<tr>
<td width="22%" bgcolor="#FFFFFF">
<?php include('left_side.php');?>
</td>

<?php
$feed_total = mysql_query("SELECT * FROM feedback_master");
?>
<td width="78%" align="center" valign="top" bgcolor="#FFFFFF">
<p>
  <table width="480px"><tr><td><div align="right"><font size="3">Total no.of submitted feedbacks: <?php echo mysql_num_rows($feed_total)/6;?></font></div></td></tr></table>
</p>
<table width="100%" id="rounded-corner" border="0" align="center" cellpadding="0" cellspacing="0" >
<thead>
<tr>
	<th align="center" scope="col" class="rounded-company">Branch</th>
	<th align="center" scope="col" class="rounded-q1">No.of feedbacks</th>
	<th align="center" scope="col" class="rounded-q1">Semester</th>
	<th align="center" scope="col" class="rounded-q4">No.of feedbacks</th>
</tr>
</thead>

<?php

//LAST UPDATE
// 27-09-2007
// load the configuration file.
        //load all news from the database and then OREDER them by newsid
        //you will notice that newlly added news will appeare first.
        //also you can OREDER by (dtime) instaed of (news id)
        $result = mysql_query("SELECT distinct(b_id) FROM feedback_master ORDER BY b_id");
        $result_sem = mysql_query("SELECT distinct(sem_id) FROM feedback_master ORDER BY sem_id");
        //lets make a loop and get all news from the database
		if(mysql_num_rows($result)>0)
		{
			$myrow = mysql_fetch_array($result);
			echo '<tr>';
		   	echo "<td align=center>". CS  ."</td>";
		   	$mysemrow = mysql_fetch_array($result_sem);
		   	$br_res = mysql_query("SELECT * FROM feedback_master WHERE b_id = 1");			   	
		   	echo "<td align=center>".(mysql_num_rows($br_res)/6)."</td>";
		   	$sem_res = mysql_query("SELECT * FROM feedback_master WHERE sem_id = 1 AND b_id= 1 ");
		   	echo "<td align=center>". Ccycle  ."</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res)/6)."</td>";
		   	echo '</tr>';
		   	//next sem
  		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_13 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 1 AND sem_id = 3 ");
		   	echo "<td align=center>" . III . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_13)/6)."</td>";
		   	echo '</tr>';
		   	//5th sem
  		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_15 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 1 AND sem_id = 5 ");
		   	echo "<td align=center>" . V . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_15)/6)."</td>";
		   	echo '</tr>';
		   	//7th sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_17 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 1 AND sem_id = 7 ");
		   	echo "<td align=center>" . VII . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_17)/6)."</td>";
		   	echo '</tr>';

		   	//Next Branch
		   	echo '<tr>';
		   	echo "<td align=center>" . Civil . "</td>";
		   	$br_res_2 = mysql_query("SELECT * FROM feedback_master WHERE b_id = 2");			   	
		   	echo "<td align=center>".(mysql_num_rows($br_res_2)/6)."</td>";
		   	$sem_res_21 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 2 AND sem_id = 2 ");
		   	echo "<td align=center>" . Pcycle . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_21)/6)."</td>";
		   	echo '</tr>';
		   	//3rd sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_23 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 2 AND sem_id = 3 ");
		   	echo "<td align=center>" . III . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_23)/6)."</td>";
		   	echo '</tr>';
		   	//5th sem
  		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_25 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 2 AND sem_id = 5 ");
		   	echo "<td align=center>" . V . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_25)/6)."</td>";
		   	echo '</tr>';
		   	//7th sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_27 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 2 AND sem_id = 7 ");
		   	echo "<td align=center>" . VII . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_27)/6)."</td>";
		   	echo '</tr>';

		   	//Next Branch
		   	echo '<tr>';
		   	echo "<td align=center>" . EC . "</td>";
		   	$br_res_3 = mysql_query("SELECT * FROM feedback_master WHERE b_id = 3");			   	
		   	echo "<td align=center>".(mysql_num_rows($br_res_3)/6)."</td>";
		   	$sem_res_31 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 3 AND sem_id = 1 ");
		   	echo "<td align=center>" . Ccycle . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_31)/6)."</td>";
		   	echo '</tr>';
		   	//3rd sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_33 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 3 AND sem_id = 3 ");
		   	echo "<td align=center>" . III . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_33)/6)."</td>";
		   	echo '</tr>';
		   	//5th sem
  		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_35 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 3 AND sem_id = 5 ");
		   	echo "<td align=center>" . V . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_35)/6)."</td>";
		   	echo '</tr>';
		   	//7th sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_37 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 3 AND sem_id = 7 ");
		   	echo "<td align=center>" . VII . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_37)/6)."</td>";
		   	echo '</tr>';

		   	//Next Branch
		   	echo '<tr>';
		   	echo "<td align=center>" . Mechanical . "</td>";
		   	$br_res_4 = mysql_query("SELECT * FROM feedback_master WHERE b_id = 4");			   	
		   	echo "<td align=center>".(mysql_num_rows($br_res_4)/6)."</td>";
		   	$sem_res_41 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 4 AND sem_id = 2 ");
		   	echo "<td align=center>" . Pcycle . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_41)/6)."</td>";
		   	echo '</tr>';
		   	//3rd sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_43 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 4 AND sem_id = 3 ");
		   	echo "<td align=center>" . III . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_43)/6)."</td>";
		   	echo '</tr>';
		   	//5th sem
  		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_45 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 4 AND sem_id = 5 ");
		   	echo "<td align=center>" . V . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_45)/6)."</td>";
		   	echo '</tr>';
		   	//7th sem
		   	echo '<tr>';
		   	echo '<td align=center> </td>';
		   	echo '<td align=center> </td>';
		   	$sem_res_47 = mysql_query("SELECT * FROM feedback_master WHERE b_id= 4 AND sem_id = 7 ");
		   	echo "<td align=center>" . VII . "</td>";
		   	echo "<td align=center>".(mysql_num_rows($sem_res_47)/6)."</td>";
		   	echo '</tr>';


		}
		else
		{
			echo '<tr><td colspan=3 align=center>No record found!</td></tr>';
		}
?>
</table>
</td>
</tr>
</table>
</body>
</html>
