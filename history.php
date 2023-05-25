<?php
include "database.php"
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History</title>
    <link rel="stylesheet" type="text/css" href="/css/history.css">
    <link rel="stylesheet"  href="//cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#myTable').DataTable();
        });
    </script>
</head>

<body>
    <div id="table">
        <h1>History</h1>
        <div class="container my-4">
            <table class="table" id="myTable">
                <thead>
                    <tr>
                        <th scope="col">S.No</th>
                        <th scope="col">Original Name</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Price</th>
                        <th scope="col">Date & Time</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                        $sql = "SELECT * FROM `history`";
                        $result = mysqli_query($conn, $sql);
                        $sno = 0;
                        while ($row = mysqli_fetch_array($result)) {
                            $sno = $sno + 1;
                            echo "<tr>
                            <th scope='row'>" . $sno . "</th>
                            <td>" . $row['original_name'] . "</td>
                            <td>" . $row['product_name'] . "</td>
                            <td>" . $row['quantity'] . "</td>
                            <td>" . $row['price'] . "</td>
                            <td>" . $row['date & time'] . "</td>
                        </tr>";
                        }

                        ?>
                </tbody>
            </table>
        </div>
    </div>

</body>

</html>