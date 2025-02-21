<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];
$current_product = 1;
$product = $products[$current_product];

?>
<div class="parentContainer">
    <div class="itemContainer">
        <div class="imgBox">
            <img src="cdn/img/products/<?= $product['product_image'] ?>.png" alt="<?= $product['product_name'] ?>">
        </div>
        <div class="itemName title"><?= $product['product_name'] ?>
        </div>
        <div class="itemDescription text"><?= $product['description'] ?>
        </div>
        <div class="amountChanger">
            <div class="minus pick">
                -
            </div>
            <div class="itemAmount big">
                0
            </div>
            <div class="plus pick">
                +
            </div>
        </div>
        <div class="finalDecision">
            <div class="price big">€<?= $product['product_price']; ?>
            </div>
            <div class="addToCartButton">
                ADD TO CART
            </div>
        </div>
    </div>
</div>
<?php include __DIR__ . '/core/footer.php'; ?>