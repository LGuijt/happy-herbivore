<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];
$current_product = 1;
$product = $products[$current_product];

?>
<div class="main">
    <div class="container first">
        <a href="menu">Back to menu</a>
        <img src="cdn/img/products/<?= $product['product_image'] ?>.png" alt="<?= $product['product_name'] ?>">
        <h1><?= $product['product_name'] ?></h1>
    </div>
</div>
<?php include __DIR__ . '/core/footer.php'; ?>