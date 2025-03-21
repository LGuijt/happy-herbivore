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
                <?php foreach ($products as $product) : ?>
                    <div class="menu-item">
                        <img src="cdn/img/products/<?= $product['product_image'] ?>.png" alt="<?= $product['product_name'] ?>">
                        <div class="item-details">
                            <h3><?= $product['product_name'] ?></h3>
                            <p>$<?= $product['product_price'] ?></p>
                            <p><?= $product['description'] ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
                </div>
        </div>

        <!-- <ul class="menu-list">
                <li class="menu-item">
                    <img src="img/burger.jpg" alt="Burger">
                    <div class="item-details">
                        <h3>Burger(Voorbeeld)</h3>
                        <p>$5.99(Voorbeeld)</p>
                        <p>A delicious burger with fresh ingredients.(Voorbeeld)</p>
                    </div>
                </li>
                <li class="menu-item">
                    <img src="img/pizza.jpg" alt="Pizza">
                    <div class="item-details">
                        <h3>Pizza(Voorbeeld)</h3>
                        <p>$8.99(Voorbeeld)</p>
                        <p>Cheesy pizza with your favorite toppings.(Voorbeeld)</p>
                    </div>
                </li>
                <li class="menu-item">
                    <img src="img/salad.jpg" alt="Salad">
                    <div class="item-details">
                        <h3>Salad(Voorbeeld)</h3>
                        <p>$4.99(Voorbeeld)</p>
                        <p>Fresh and healthy salad bowl.(Voorbeeld)</p>
                    </div>
                </li>
                <li class="menu-item">
                    <img src="img/pasta.jpg" alt="Pasta">
                    <div class="item-details">
                        <h3>Pasta(Voorbeeld)</h3>
                        <p>$7.99(Voorbeeld)</p>
                        <p>Classic pasta dish with creamy sauce.(Voorbeeld)</p>
                    </div>
                </li>
            </ul> -->
       

    <?php include __DIR__ . '/core/footer.php'; ?>