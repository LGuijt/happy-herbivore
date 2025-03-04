<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];
$total = 0;
?>

<div class="parentContainer">
    <div class="orderContainer">
        <div class="productContainer">
            <?php foreach ($products as $product) {
                $total += $product['product_price'];
                ?>
                <div class="product">
                    <div class="productImage">
                        <img src="./cdn/img/products/<?= $product['product_image']; ?>.png">
                    </div>
                    <div class="productRest">
                        <div class="productTitle big">
                            <?= $product['product_name']; ?>
                        </div>
                        <?php 
                        if(isset($product['product_extra'])){
                        ?> <div class="extra">(<?=$product['product_extra'];?>)</div>
                        <?php
                        }
                        ?>
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
                    </div>
                    <div class="priceContainer">
                        <div class="price big">€<?=$product['product_price'];?></div>
                    </div>
                </div>
                <?php
            } ?>
        </div>
        <hr>
        <div class="totalContainer">
            <p class="big">Total</p>
            <p class="big">€<?=$total;?></p>
        </div>
        <div class="checkoutContainer">
            <div class="cancelOrderButton">
                Cancel Order
            </div>
            <div class="checkoutButton">
                CHECK OUT
            </div>
        </div>
    </div>
</div>