<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';

$product = [];
$options = [];
if (isset($_GET['sku'])){
    $productId = $_GET['sku'];
} else {
    $productId = 1;
}

$productQuery = "SELECT p.product_id, n.name_en, p.price, p.options
FROM products p
JOIN product_name n ON p.name_id = n.id
WHERE p.product_id = ?";
$productStmt = $con->prepare($productQuery);
$productStmt->bind_param('i', $productId);
$productStmt->bind_result($product_id, $name, $price, $option);
$productStmt->execute();
$productStmt->fetch();
$product = [
    'product_id' => $product_id,
    'name' => $name,
    'price' => $price,
    'options' => $option
];

$productStmt->close();

if ($option == 1){
    $optionsQuery = "SELECT id, option_name
    FROM options
    WHERE product_id = ?";
    $optionsStmt = $con->prepare($optionsQuery);
    $optionsStmt->bind_param('i', $productId);
    $optionsStmt->bind_result($option_id, $option_name);
    $optionsStmt->execute();
    while ($optionsStmt->fetch()) {
        $options[] = [
            'option_id' => $option_id,
            'option_name' => $option_name
        ];
    }
    $optionsStmt->close(); 
}

$response = [
    'status' => 'success',
    'data' => [
        'product' => $product,
        'options' => $options
    ]
];

echo json_encode($response);
?>