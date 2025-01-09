<?php
$con = mysqli_connect('localhost', 'root', '', 'jcotech'); 
if (!$con) {
    die('Connection failed: ' . mysqli_connect_error());
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['create'])) {
        $title = $_POST['title'];
        $price = $_POST['price'];
        $img1 = $_POST['img1'];

        $sql = "INSERT INTO products (title, price, img1) VALUES ('$title', '$price', '$img1')";
        if (mysqli_query($con, $sql)) {
            echo "New product created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($con);
        }
    } elseif (isset($_POST['update'])) {
        $id = $_POST['id'];
        $title = $_POST['title'];
        $price = $_POST['price'];

        $sql = "UPDATE products SET title='$title', price='$price' WHERE id=$id";
        if (mysqli_query($con, $sql)) {
            echo "Product updated successfully";
        } else {
            echo "Error updating product: " . mysqli_error($con);
        }
    } elseif (isset($_POST['delete'])) {
        $id = $_POST['id'];

        $sql = "DELETE FROM products WHERE id=$id";
        if (mysqli_query($con, $sql)) {
            echo "Product deleted successfully";
        } else {
            echo "Error deleting product: " . mysqli_error($con);
        }
    }
}

$sql = "SELECT * FROM products";
$result = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - J.Co Technologies</title>
    <link rel="stylesheet" href="admin_styles.css">
</head>
<body>
<div class="admin-container">
    <h1 class="admin-header">Admin Panel</h1>

    <section class="admin-section">
        <h2>Create New Product</h2>
        <form action="admin.php" method="post" class="admin-form">
            <div class="form-group">
                <label>Title:</label>
                <input type="text" name="title" class="input-field">
            </div>
            <div class="form-group">
                <label>Price:</label>
                <input type="text" name="price" class="input-field">
            </div>
            <div class="form-group">
                <label>Image Path:</label>
                <input type="text" name="img1" class="input-field">
            </div>
            <button type="submit" name="create" class="btn">Create Product</button>
        </form>
    </section>

    <section class="admin-section">
        <h2>Manage Products</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($result as $row): ?>
                    <tr>
                        <form action="admin.php" method="post">
                            <td>
                                <?= $row['id'] ?>
                                <input type="hidden" name="id" value="<?= $row['id'] ?>">
                            </td>
                            <td>
                                <input type="text" name="title" value="<?= $row['title'] ?>" class="input-field">
                            </td>
                            <td>
                                <input type="text" name="price" value="<?= $row['price'] ?>" class="input-field">
                            </td>
                            <td>
                                <button type="submit" name="update" class="btn">Update</button>
                                <button type="submit" name="delete" class="btn" onclick="return confirm('Are you sure?');">Delete</button>
                            </td>
                        </form>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </section>
</div>

<script src="scripts.js"></script>
</body>
</html>
