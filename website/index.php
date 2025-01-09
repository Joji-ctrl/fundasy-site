<?php

    $con = mysqli_connect('localhost','root');
    mysqli_select_db($con, 'jcotech');
    $sql = "SELECT * FROM products";
    $featured = $con->query($sql);
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J.Co Technologies</title>
    <link rel="icon" href="imgs/logo.webp" type="image/icon type">
    <link rel="stylesheet" href="styles.css">
    
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

    <div id="search-results"></div>
</div>


</header>


    <section class="hero-banner">
        <div class="banner-content">
            <h1>WELCOME TO J.CO TECHNOLOGIES</h1>
            <p>DISCOVER OUR PRODUCTS</p>
        </div>
    </section>

   
                    
    <main>
    
    <section class="product-s">
        <section class="product-grid">
            
    
            <?php
                while($product = mysqli_fetch_assoc($featured)):
            ?>
    
            <div class="product">
    
                <img src="<?= $product['img1']; ?>" alt="<?= $product['title'];?>">
                
                <h2><?= $product['title'];?></h2>
                <p class="price">₱ <?= $product['price'];?></p>
                
    
                    
                <a href="details.php?id=<?= $product['id']; ?>" class="btn-product">
                    <button type="button" class="btn btn-success">More</button>
                </a>
    
                
            </div>
    
            <?php endwhile; ?>
            
        </section>
    </section>

    </main>

    

    <script src="scripts.js"></script>
</body>
</html>