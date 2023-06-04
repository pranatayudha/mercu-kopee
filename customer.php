<?php
    $title = "Customer Login";
    include("header.php");

    $same_phone_no = "";

    $_SESSION["show_alert_phone"] = false;

    $phone_no = $_POST["phone_no"];

    $statement = $pdo->prepare("SELECT * FROM customers WHERE phone_no=?");
    $statement->execute(array($phone_no));
    $result = $statement->fetch();
    if (isset($_POST['create_customer'])) {
        if ($result["phone_no"] == $phone_no) {
            $_SESSION["show_alert_phone"] = true;
            $same_phone_no = "This phone number is already registered, are you "
                . $result['first_name']
                . " " . $result['last_name'] 
                . "?";
    
            $customer_data = array(
                'id' => $result["id"],
                'first_name' => $result["first_name"],
                'last_name' => $result["last_name"],
                'phone_no' => $result["phone_no"],
            );
            $_SESSION["customer_data"] = $customer_data;
        } else {
            $_SESSION["show_alert_phone"] = false;
            $statement = $pdo->prepare("INSERT INTO customers (
                                        first_name,
                                        last_name,
                                        phone_no,
                                        created_at,
                                        updated_at
                                    ) VALUES (?,?,?,?,?)");
            $statement->execute(
                array(
                    $_POST['first_name'],
                    $_POST['last_name'],
                    $_POST['phone_no'],
                    date("Y-m-d H:i:s"),
                    date("Y-m-d H:i:s"),
                )
            );
        }
    }
?>
<section class="welcome-section">
    <div class="container position-relative">
        <div class="lights-container">
            <img src="img/light.png" alt="Light" class="light light-1">
            <img src="img/light.png" alt="Light" class="light light-2">
            <img src="img/light.png" alt="Light" class="light light-3">  
        </div>        
        <div class="row welcome-content">
            <h2 class="white-text handwriting-font welcome-header">
            <img src="img/header-line.png" alt="Line" class="header-line">
                &nbsp;Customer Login&nbsp;
            <img src="img/header-line.png" alt="Line" class="header-line">
            </h2>
            <h2 class="gold-text welcome-header-2">Mercu Kopee</h2>
            <div id="main">
                <form action="" method="post" class="contact-form">
                    <div class="form-group">
                        <input type="text" name="first_name" class="form-control" placeholder="FIRST NAME" height="100px"/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="last_name" class="form-control" placeholder="LAST NAME" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone_no" class="form-control" placeholder="NOMOR HP" height="100px"/>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <div class="form-group" style="right: -230px; position: relative;">
                                <a href="/tugas-dwiky" class="more-button">KEMBALI</a>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="form-group" style="right: -230px; position: relative;">
                                <button class="more-button" type="submit" name="create_customer">LOGIN</button> 
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>      
</section>
<?php
    include("footer2.php");
?>