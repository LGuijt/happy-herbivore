<?php include __DIR__ . '/core/header.php'; ?>

<?php
if (isset($_GET['sku'])) {
    $current_product = $_GET['sku'];
} else {
    $current_product = 1;
}
?>
<script>
    let thisProduct = <?= $current_product ?>;
</script>
<div class="parentContainer">
    <div class="itemContainer">
        <div class="imgBox">
            <img id="productImg" src="cdn/img/products/.png" alt="">
        </div>
        <div class="itemName title" id="prodName">
        </div>
        <div class="itemDescription text" id="prodDesc">
        </div>
        <div id="options-container">

        </div>
        <div class="amountChanger">
            <div class="minus pick" id="minus">
                -
            </div>
            <div class="itemAmount big" id="amount">
                1
            </div>
            <div class="plus pick" id="plus">
                +
            </div>
        </div>
        <div class="finalDecision">
            <div class="price big" id="price">
            </div>
            <div class="addToCartButton" id="addToCart">
                ADD TO CART
            </div>
        </div>
    </div>
</div>
<?php include __DIR__ . '/core/footer.php'; ?>