<?php
    include("header.php");
?>
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="top-header-inner">
                    <div class="logo-container">
                        <img src="img/logo.png" alt="Logo" class="site-logo">
                        <h1 class="site-name handwriting-font">Mercu Kopee</h1>
                    </div>
                    <div class="mobile-menu-icon">
                        <i class="fa fa-bars"></i>
                    </div>
                    <nav class="nav">
                        <ul>
                            <li><a href="/tugas-dwiky">Home</a></li>
                            <li><a href="coffee_menu.php" class="active">Menu</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <section class="welcome-section">
        <div class="container position-relative">
            <div class="lights-container">
                <img src="img/light.png" alt="Light" class="light light-1">
                <img src="img/light.png" alt="Light" class="light light-2">
                <img src="img/light.png" alt="Light" class="light light-3">
            </div>
            <div class="row welcome-content">
                <h2 class="white-text handwriting-font welcome-header"><img src="img/header-line.png" alt="Line" class="header-line">&nbsp;Our Menu&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="header-line"></h2>
                <h2 class="gold-text welcome-header-2">Mercu Kopee</h2>
                <a href="#main" class="more-button more-button-welcome">Details</a>
            </div>
            <img src="img/table-set.png" alt="Table Set" class="table-set img-responsive">
        </div>
    </section>
    <div class="main-section light-gray-bg">
        <div class="container" id="main">
            <section class="section row">
                <div class="col-lg-12 section-header-container margin-bottom-30">
                    <h2 class="section-header gold-text handwriting-font"><img src="img/logo.png" alt="Logo" class="site-logo"> Our Menus</h2>
                    <div class="hr-container">
                        <hr class="hr">
                    </div>
                </div>
                <div>
                    <div class="col-lg-3 col-md-3">
                        <div class="position-relative margin-bottom-30">
                            <nav class="side-menu">
                                <ul>
                                    <li><a href="coffee_menu.php">Kopi</a></li>
                                    <li><a href="non_coffe_menu.php" class="active">Bukan Kopi</a></li>
                                </ul>
                            </nav>
                            <img src="img/vertical-menu-bg.png" alt="Menu bg" class="side-menu-bg">
                        </div>
                    </div>
                    <div class="menu-product-content col-lg-9 col-md-9">
                        <!-- menu content -->
                        <div class="product" id="americano">
                            <img src="img/menukopi.jpeg" alt="Product">
                            <div class="product-text">
                                <h3 class="product-title">Americano</h3>
                                <p class="product-description">Americano merupakan kopi espresso yang penyajiannya ditambahkan air panas,
                                    sehingga teksturnya lebih encer.</p> <br>
                                <p class="product-harga"><b> Rp. 20.000</b></p>
                            </div>
                            <div class="product-price">
                                <a href="detail_americano.html" class="product-price-link handwriting-font">Order Now</a>
                            </div>
                        </div>
                        <div class="product" id="gayo">
                            <img src="img/menukopi.jpeg" alt="Product">
                            <div class="product-text">
                                <h3 class="product-title">Kopi Gayo</h3>
                                <p class="product-description">Kopi gayo merupakan varietas kopi arabika yang menjadi salah satu komoditi unggulan yang berasal dari Dataran tinggi Gayo, Aceh Tengah, Indonesia.</p>
                                <p class="product-harga"><b> Rp. 30.000</b></p>
                            </div>
                            <div class="product-price">
                                <a href="detail_gayo.html" class="product-price-link handwriting-font">Order Now </a>
                            </div>
                        </div>
                        <div class="product" id="toraja">
                            <img src="img/menukopi.jpeg" alt="Product">
                            <div class="product-text">
                                <h3 class="product-title">Kopi Toraja</h3>
                                <p class="product-description">Merupakan Kopi yang berasal dari tanah Toraja, Sulawesi Selatan ini memiliki rasa yang khas dan karakter yang unik.</p>
                                <p class="product-harga"><b> Rp. 25.000</b></p>

                            </div>
                            <div class="product-price">
                                <a href="detail.html" class="product-price-link handwriting-font">Order Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

<?php include("footer.php"); ?>