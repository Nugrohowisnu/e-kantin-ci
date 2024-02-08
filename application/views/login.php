<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
	<base href="<?php echo base_url() ?>">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>E-Kantin - Login</title>
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/datepicker3.css" rel="stylesheet">
	<link href="assets/css/styles.css" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body style="background:#222;">

	<div class="container">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<center>
				<img src="image/icon-rupiah.png" width="150">
			</center>
			<br>
			<div class="login-panel panel panel-primary">
				<div class="panel-heading"><center>E-Kantin </center></div>
				<form role="form" action="" method="post">
					<div class="panel-body">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Username" name="username" type="text" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="password" type="password" value="">
							</div>
							<div class="form-group" hidden>
								<select name="unit" class="form-control">
									<option value="0">--Pilih Unit--</option>
									<option value="KMA Al Wustho">SD</option>
					        <option value="KMI Al Wustho">SMP</option>
					        <option value="KMA Al Ulya">SMK</option>
					        <option value="SMK MH">MAHASISWA</option>
								</select>
							</div>
						</fieldset>
					</div>
				<button class="btn btn-info btn-block btn-lg">Login</button>
				</form>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->


	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>

</html>
