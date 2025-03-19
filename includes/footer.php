<?php
session_start();
error_reporting(0);

include('includes/dbconnection.php');
?> <!--== Footer Area Start ==-->
    <section id="footer-area">
        <!-- Footer Widget Start -->
        <div class="footer-widget-area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">

                        <div class="single-footer-widget">
                            <h2><?php  echo "About Us";?></h2>
                            <div class="widget-body">
                            <h2>Vehicles.com</h2>
                                <p><?php  echo "Vehicle Rental is a self-drive brand owned XYZ second-largest self-drive vehicle rental company currently managing more than 63,000 vehicles in our fleet in India. With Vehicle Rental, we endeavor to provide Indian users the Best in World Japanese service and technology at Indian prices. Vehicle Rental is currently present in 13 Indian cities including Mangalore,Bangalore, Pune, Mumbai, Delhi-NCR, Hyderabad, Chennai, Kolkata, Jaipur, Indore, Chandigarh, Ahmedabad, Surat and Vadodara..";?>.</p>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
                            <h2>More Links</h2>
                            <div class="widget-body">
                                <ul>
                                    <li><a href="about.php">About Us</a></li>
                                    <li><a href="contact.php">Contact Us</a></li>
                                    <li><a href="twowheeler-details.php">Two Wheeler Details</a></li>
                                    <li><a href="car-details.php">Four Wheeler Details</a></li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->

                    <!-- Single Footer Widget Start -->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-footer-widget">
            
                            <h2>get touch</h2>
                            <div class="widget-body">
                                <p>Lorem ipsum doloer sited amet, consectetur adipisicing elit. nibh auguea, scelerisque sed</p>

                                <ul class="get-touch">
                                    <li><i class="fa fa-map-marker"></i> <?php  echo"MayurVehicles, GoldFinch City, Mangalore Karnataka-India";?></li>
                                    <li><i class="fa fa-mobile"></i> +<?php  echo "91 9898989898";?></li>
                                    <li><i class="fa fa-envelope"></i> <?php  echo "mayurvehicles@gmail.com";?></li>
                                </ul>
                               </div>
                        </div>
                    </div>
                    <!-- Single Footer Widget End -->
                </div>
            </div>
        </div>
        <!-- Footer Widget End -->

        <!-- Footer Bottom Start -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <p>Vehicle Rental Management System @ 2023

</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Bottom End -->
    </section>
    <!--== Footer Area End ==-->
