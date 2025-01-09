<?php

    $con = mysqli_connect('localhost','root');
    mysqli_select_db($con, 'jcotech');
    $sql = "SELECT * FROM products WHERE featured = 1";
    $featured = $con->query($sql);

?>

<?php
// Get product ID from URL
$product_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Fetch product details
$sql = "SELECT * FROM products WHERE id = $product_id";
$result = $con->query($sql);
$product = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta  name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $product['title']; ?></title>
    <link rel="icon" href="imgs/logo.webp" type="image/icon type">
    <link rel="stylesheet" href="deet.css">

</head>
<body>

<header>
    <div class="navbar">
    <div class="logo">
            <a href="admin.php">
                <img src="imgs/logo.webp" alt="Your Logo">
            </a>
        </div>
        <nav>
            <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="smartphones.php">Smartphones</a></li>
                    <li><a href="tablets.php">Tablets</a></li>
                    <li><a href="laptops.php">Laptops</a></li>
                    <li><a href="consoles.php">Consoles</a></li>
                    <li><a href="peri.php">Peripherals</a></li>
            </ul>
        </nav>
        
        <div class="search-container">
    <span class="search-icon" onclick="toggleSearch()">🔍</span>
    <input type="text" id="search-box" placeholder="Search J.Co Tech...." style="display: none;">
</div>


</header>
    
    <?php if($product): ?>

       <div class="product-container">
            
            <div class="image-section">
                <div class="thumbnails">
                    <img src="<?= $product['img1']; ?>" alt="Thumbnail 1" class="thumbnail-image" onclick="changeImage('<?= $product['img1']; ?>')">
                    <img src="<?= $product['img2']; ?>" alt="Thumbnail 2" class="thumbnail-image" onclick="changeImage('<?= $product['img2']; ?>')">
                    <img src="<?= $product['img3']; ?>" alt="Thumbnail 3" class="thumbnail-image" onclick="changeImage('<?= $product['img3']; ?>')">
                </div>
                    <div class="main-image">
                        <img src="<?= $product['img1']; ?>" alt="Main Product Image" id="main-product-image">
                    </div>
                
            </div>

            <div class="product-details">
                <h1 class="title"><?= $product['title']; ?></h1>
                <h3 class="sub-title">Brand: <?= $product['brandname']; ?></h3>
                <p class="price">Price: ₱<?= $product['price']; ?></p>
                <p><?= $product['description']; ?></p>
                
                <button class="add-to-cart">Add to Cart</button>
            </div>

        </div>

        
        
    <?php else: ?>
        <p>Product not found.</p>
    <?php endif; ?>
    <script src="deets.js"></script>
</body>
</html>
