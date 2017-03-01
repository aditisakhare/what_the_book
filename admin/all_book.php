<?php 
session_start();
require('includes/config.php');

	$q="select * from book";
	 $res=mysqli_query($conn,$q) or die("Can't Execute Query...");
	?>

<!DOCTYPE html>

<html>
<head>
		<?php
			include("includes/head.inc.php");
		?>
		<style>
			table{padding:5px;border:10px solid gray}
			td,th{padding:15px}
			
		</style>
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="menu">
		<?php
			include("includes/menu.inc.php");
		?>
	</div>
</div>

<!-- end header -->
<!-- start page -->

<div id="page">
	<!-- start content -->
	<div id="content">
	
					
					
		<div class="post">
			<h2>&nbsp;&nbsp; BOOKS </h2>
		    <br/>
			<div style="float:right;margin-top:-80px">
				<a style=" color: #000;text-decoration:none;" href="addbook.php">
				<button  style="margin-right:20px;height:50px;float:right">
					<h3>Add New Book<h3>
				</button>
				</a>
			</div>
			
			<div class="entry">
			
				
					<table border='1' WIDTH='100%'>
						
						<tr>
<td WIDTH='10%' style="color:#000"><b><u>SR.NO</u></b></td>
<TD style="color:#000" WIDTH='50%'><b><u>NAME</u></b></TD>
<TD style="color:#000" WIDTH='20%'><b><u>PUBLISHER</u></b></TD>
<TD style="color:#000" WIDTH='20%'><b><u>ISBN</u></b></TD>
<TD style="color:#000" WIDTH='25%'><b><u>PRICE</u></b></TD>
<TD style="color:#000" WIDTH='25%'><b><u>IMAGE</u></b></TD>
<TD style="color:#000" WIDTH='25%'><b><u>DELETE</u></b></TD>				
							
						</tr>
						<?php
							$count=1;
							while($row=mysqli_fetch_assoc($res))
							{
							echo '<tr>
										<td>'.$count.'
										<td>'.$row['b_nm'].'
										<td>'.$row['b_publisher'].'
										<td>'.$row['b_isbn'].'
										<td>'.$row['b_price'];
				echo "<td><img src='../$row[b_img]' width='50'/>";
										
										
									echo 	'<td><a href="process_del_book.php?sid='.$row['b_id'].'"><img src="images/drop.png" ></a>
												
									
									</tr>';
									$count++;
							}
						?>

					</TABLE>
				
			</div>
			
		</div>
		
	</div>
	
	
	<!-- end content -->
	
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->

</body>
</html>
