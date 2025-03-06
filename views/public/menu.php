<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];

?>

<div class="menu-container">
    <aside class="categories" id="categories">
    </aside>
    <div class="menu">
        <h2>Breakfast</h2>
        <div class="menu-list" id="menu-list1">
        </div>
        <h2>Lunch&Dinner</h2>
        <div class="menu-list" id="menu-list2">
        </div>
        <h2>Sides</h2>
        <div class="menu-list" id="menu-list3">
        </div>
        <h2>Snacks</h2>
        <div class="menu-list" id="menu-list4">
        </div>
        <h2>Dips</h2>
        <div class="menu-list" id="menu-list5">
        </div>
        <h2>Drinks</h2>
        <div class="menu-list" id="menu-list6">
        </div>
        <div class="button-container">
            <a class="to-order" href="payment">CART</a>
            <a class="to-payment" href="check-out">PAY</a>
        </div>
    </div>
</div>
<?php include __DIR__ . '/core/footer.php'; ?>