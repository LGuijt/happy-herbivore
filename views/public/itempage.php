<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];

?>
<div class="main-container">

</div>
<?php include __DIR__ . '/core/footer.php'; ?>