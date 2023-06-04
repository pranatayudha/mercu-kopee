        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="js/templatemo-script.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            <?php if ($_SESSION['show_alert_phone']) : ?>
                Swal.fire({
                    title: '<?php echo $same_phone_no; ?>',
                    icon: 'question',
                    showDenyButton: true,
                    showCancelButton: false,
                    confirmButtonText: `Yes`,
                    denyButtonText: `No`,
                    confirmButtonColor: '#a5dc86',
                    denyButtonColor: '#f27474',
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "coffee_menu.php";
                    } else if (result.isDenied) {
                        <?php
                            session_start();
                            session_unset();
                            session_destroy();    
                        ?>
                    }
                });
            <?php endif; ?>
        </script>
    </body>
 </html>