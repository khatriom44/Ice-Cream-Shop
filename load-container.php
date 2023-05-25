<?php
    include("database.php");
    $countinfo = $_POST['countinfo'];
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