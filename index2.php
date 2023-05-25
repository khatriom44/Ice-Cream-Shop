<?php
include 'database.php';
if (isset($_GET['btn-close'])) {
    $sno = $_GET['btn-close'];
    $sql = "DELETE FROM `history_temp` WHERE `sno` = '$sno'";
    $result = mysqli_query($conn, $sql);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">

</head>

<body>
    <div class="navigation">
        <nav>
            <div class="logo">
                <p>Ice Cream Shop</p>
            </div>
            <ul>
                <li id="nav_list"><a href="history.php">History</a></li>
            </ul>
        </nav>
    </div>
    <div class="container">
        <ul>

            <?php

            $sql = "SELECT * FROM `history_temp` LIMIt 6";
            $result  = mysqli_query($conn, $sql);
            $check_order = mysqli_num_rows($result) > 0;
            if ($check_order) {
                while ($row = mysqli_fetch_array($result)) {

                    echo  "<li id='list'>
                        <P id='text_head' class='text'>" . $row['original name'] . "</P><br>
                        <P class='text_body'> Product = " . $row['product name'] . "</P><br>
                        <P class='text_body'> Quantity = " . $row['quantity'] . "</P>
                        <button class='btn-close' id=" . $row['sno'] . ">finish</button> 
                    </li>";
                }
            } else {
                echo "No Order";
            }
            ?>
        </ul>
    </div>
    <script>
         
        const myButton = document.querySelector('.btn-close');
        const list = document.querySelector('.container ul');

        const close = document.querySelectorAll('.btn-close');
        for (let i = 0; i < close.length; i++) {

            close[i].addEventListener('click', (e) => {
                console.log("edit ", );
                sno = e.target.id;
                window.location = `/index/index.php?btn-close=${sno}`;
                close[i].parentElement.style.opacity = 0;
                setTimeout(() => {
                    close[i].parentElement.style.display = "none";
                    close[i].parentElement.remove();
                }, 200);
            })
        }
       
    </script>
    
</body>

</html>