<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];

?>

<div class="menu-container">
    <aside class="categories">
        <h2>Categories</h2>
        <article class="category">
            <img src="cdn/img/products/morning_boost.png" alt="Burger">
            <div class="category-details">
                <h3>Breakfast</h3>
                <p>Start your day with our delicious breakfast options.</p>
            </div>
        </article>
        <article class="category">
            <img src="img/lunch.jpg" alt="dinner">
            <div class="category-details">
                <h3>Lunch&Dinner</h3>
                <p>Enjoy a hearty lunch or dinner with our tasty dishes.</p>
            </div>
        </article>
        <article class="category">
            <img src="img/sides.jpg" alt="sides">
            <div class="category-details">
                <h3>Sides</h3>
                <p>Complete your meal with our delicious side dishes.</p>
            </div>
        </article>
        <article class="category">
            <img src="img/snacks.jpg" alt="snacks">
            <div class="category-details">
                <h3>Snacks</h3>
                <p>Enjoy a quick snack with our tasty options.</p>
            </div>
        </article>
        <article class="category">
            <img src="img/dips.jpg" alt="dips">
            <div class="category-details">
                <h3>Dips</h3>
                <p>Enhance your meal with our delicious dips.</p>
            </div>
        </article>
        <article class="category">
            <img src="img/drinks.jpg" alt="drinks">
            <div class="category-details">
                <h3>Drinks</h3>
                <p>Quench your thirst with our refreshing drinks.</p>
            </div>
        </article>
    </aside>
    <div class="menu">
        <h2>Menu</h2>
        <div class="menu-list">
            <?php foreach ($products as $product): ?>
                <div class="menu-item">
                    <img src="cdn/img/products/<?= $product['product_image'] ?>.png" alt="<?= $product['product_name'] ?>">
                    <div class="item-details">
                        <h3><?= $product['product_name'] ?></h3>
                        <p>$<?= $product['product_price'] ?></p>
                        <p><?= $product['description'] ?></p>
                        <?php
                        if($product['options']) {
                            ?>
                        
                        <a class="item-link" href="itemPage">Add to cart</a>
                        <?php
                        } else {
                            ?>
                        <a class="item-link" href="toCart">Add to cart</a>
                        <?php
                        }
                        ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="button-container">
            <a class="to-order" href="order">CART</a>
            <a class="to-payment" href="payment">PAY</a>
            </div>
    </div>
</div>
<?php include __DIR__ . '/core/footer.php'; ?>