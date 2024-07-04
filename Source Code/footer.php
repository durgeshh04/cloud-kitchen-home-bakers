<hr>   
   <footer class="section-padding bg-light-theme pt-0 u-line">
        <div class="u-line instagram-slider swiper-container">
            <ul class="hm-list hm-instagram swiper-wrapper">
			<?php
			$sqlhomecheflist = "SELECT * FROM homechef 	WHERE status='Active'";
			$qsqlhomecheflist = mysqli_query($con,$sqlhomecheflist);
			while($rshomecheflist = mysqli_fetch_array($qsqlhomecheflist))
			{
				if($rshomecheflist['image'] == "")
				{
					$img = "assets/img/noimage.png";
				}
				else if(file_exists("imghomechef/".$rshomecheflist['image']))
				{
					$img = "imghomechef/".$rshomecheflist['image'];
				}
				else
				{
					$img = "assets/img/noimage.png";
				}					
			?>
                <li class="swiper-slide">
				<a href="#"><img src="<?php echo $img; ?>" style="height: 100px;" alt="<?php echo $rshomecheflist['homechefname']; ?>"></a>
                </li>
			<?php
			}
			?>
            </ul>
        </div>
    </footer>
    <!-- footer -->
    <div class="footer-top section-padding bg-black">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-3 mb-sm-20">
                    <div class="icon-box"> <span class="text-light-green"><i class="flaticon-credit-card-1"></i></span>
                        <span class="text-custom-white">100% Payment<br>Secured</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-3 mb-sm-20">
                    <div class="icon-box"> <span class="text-light-green"><i class="flaticon-help"></i></span>
                        <span class="text-custom-white">24 hours / 7 days<br>Service</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-3">
                    <div class="icon-box"> <span class="text-light-green"><i class="flaticon-truck"></i></span>
                        <span class="text-custom-white">Free Delivery</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3 col-3">
                    <div class="icon-box"> <span class="text-light-green"><i class="flaticon-guarantee"></i></span>
                        <span class="text-custom-white">Best Price<br>Guaranteed</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="payment-logo mb-md-20"> <span class="text-light-white fs-14 mr-3">We are accept</span>
                        <div class="payemt-icon">
                            <img src="assets/img/card-front.jpg" alt="#">
                            <img src="assets/img/visa.jpg" alt="#">
                            <img src="assets/img/amex-card-front.png" alt="#">
                            <img src="assets/img/mastercard.png" alt="#">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-center medewithlove align-self-center">
					 © <?php date('Y'); ?> Home Bakers. All Rights Reserved | Designed by : AVNS TECHNOSOFT
                </div>
				<?php
				if(!isset($_SESSION['employeeid'])){
					if(!isset($_SESSION['homechefid'])){
				?>
	<div class="col-lg-2">
		<div class="copyright-text"> <span class="text-light-black"><a href="stafflogin.php" class='btn btn-primary'>Staff Login</a> </span>
		</div>
	</div>
				<?php } } ?>
            </div>
        </div>
    </div>
    <!-- footer -->
    <!-- modal boxes -->
    <div class="modal fade" id="address-box">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title fw-700">Change Address</h4>
                </div>
                <div class="modal-body">
                    <div class="location-picker">
                        <input type="text" class="form-control" placeholder="Enter a new address">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="search-box">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <div class="search-box p-relative full-width">
                        <input type="text" class="form-control" placeholder="Pizza, Burger, Chinese">
                    </div>
                </div>
                <div class="modal-body"></div>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="assets/js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Range Slider -->
    <script src="assets/js/ion.rangeSlider.min.js"></script>
    <!-- Swiper Slider -->
    <script src="assets/js/swiper.min.js"></script>
    <!-- Nice Select -->
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <!-- magnific popup -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Maps -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnd9JwZvXty-1gHZihMoFhJtCXmHfeRQg"></script>
    <!-- sticky sidebar -->
    <script src="assets/js/sticksy.js"></script>
    <!-- Munch Box Js -->
    <script src="assets/js/munchbox.js"></script>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <!-- /Place all Scripts Here -->
	<script>
	$(document).ready( function () {
    $('#datatable').DataTable();
	} );
	</script>
<?php
if(isset($_SESSION['customerid'])){
	if(!isset($_SESSION['locationid'])){
	?>
	<script type="text/javascript">
		$(window).on('load',function(){
			$('#myLocationModal').modal('show');
		});
		$('#myLocationModal').modal({
		backdrop: 'static',
		keyboard: false
		})
	</script>
	<?php
	}
}
?>
</body>
</html>