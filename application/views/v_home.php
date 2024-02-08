<div class="row">
	<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-shopping-cart color-blue"></em>
							<div class="large">
								<?php
								$sql=$this->db->query("SELECT * From barang");
								 ?>
								4
							</div>
							<div class="text-muted">Jumlah Suplayer</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-comments color-orange"></em>
							<div class="large">
								<?php
								$saldo = 0;
								$sql=$this->db->query("SELECT * From tabungan");
								foreach ($sql->result() as $rw) {
									$saldo = $saldo+$rw->saldo;
								}
								echo number_format($saldo);

								 ?>
							</div>
							<div class="text-muted">Jumlah Tabungan</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
							<div class="large">
								<?php
								$sql=$this->db->query("SELECT * From santri");
								echo $sql->num_rows();
								 ?>
							</div>
							<div class="text-muted">Jumlah Siswa</div>
						</div>
					</div>
				</div>
</div>
<div class="alert alert-success">
	<center>
		<img src="image/icon-rupiah.png">
	</center>
<marquee>
		<h2>Selamat Datang Di Aplikasi E-Kantin </h2>
</marquee>
</div>
