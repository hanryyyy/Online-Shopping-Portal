<?php
session_start();
include('include/config.php');

if(strlen($_SESSION['login'])==0)
{   
    header('location:login.php');
}
else
{
    if(isset($_POST['submit']))
    {
        $userId = $_SESSION['id'];
        $productId = $_POST['productId'];
        $quantityOrdered = $_POST['quantity'];
        $orderDate = date('Y-m-d H:i:s');

        // Lấy số lượng hiện tại của sản phẩm
        $query = mysqli_query($con, "SELECT quantity FROM products WHERE id='$productId'");
        $row = mysqli_fetch_array($query);
        $currentQuantity = $row['quantity'];

        // Kiểm tra số lượng sản phẩm có đủ để đặt hàng không
        if ($currentQuantity >= $quantityOrdered) {
            // Trừ số lượng sản phẩm
            $newQuantity = $currentQuantity - $quantityOrdered;
            mysqli_query($con, "UPDATE products SET quantity='$newQuantity' WHERE id='$productId'");

            // Thêm đơn hàng vào bảng orders
            mysqli_query($con, "INSERT INTO orders(userId, productId, quantity, orderDate) VALUES('$userId', '$productId', '$quantityOrdered', '$orderDate')");

            $_SESSION['msg'] = "Order placed successfully!";
        } else {
            $_SESSION['msg'] = "Not enough stock available!";
        }

        header('location:order-confirmation.php');
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Place Order</title>
</head>
<body>
    <?php if(isset($_SESSION['msg'])) { ?>
        <div class="alert alert-info">
            <?php echo htmlentities($_SESSION['msg']); ?>
            <?php echo htmlentities($_SESSION['msg'] = ""); ?>
        </div>
    <?php } ?>

    <form method="post" action="place-order.php">
        <input type="hidden" name="productId" value="<?php echo $_GET['productId']; ?>">
        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" required>
        <button type="submit" name="submit">Place Order</button>
    </form>
</body>
</html>