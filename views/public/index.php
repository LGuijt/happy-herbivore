<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];

?>

<body>
   
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