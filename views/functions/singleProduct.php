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

$productQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_en, d.description_en, p.price, p.kcal, p.options
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN images i ON p.image_id = i.image_id
JOIN product_name n ON p.name_id = n.id
JOIN product_description d ON p.description_id = d.id
WHERE p.product_id = ?";
$productStmt = $con->prepare($productQuery);
$productStmt->bind_param('i', $productId);
$productStmt->bind_result($product_id, $category_id, $category
    , $image_id, $name, $description, $price, $kcal, $option);
$productStmt->execute();
$productStmt->fetch();
$product = [
    'product_id' => $product_id,
    'category_id' => $category_id,
    'category_name' => $category,
    'image_id' => $image_id,
    'name' => $name,
    'description' => $description,
    'price' => $price,
    'kcal' => $kcal,
    'options' => $option
];

// var_dump($product);
$productStmt->close();
if ($option == 1){
    $optionsQuery = "SELECT id, option_name, option_img
    FROM options
    WHERE product_id = ?";
    $optionsStmt = $con->prepare($optionsQuery);
    $optionsStmt->bind_param('i', $productId);
    $optionsStmt->bind_result($option_id, $option_name, $option_image);
    $optionsStmt->execute();
    while ($optionsStmt->fetch()) {
        $options[] = [
            'option_id' => $option_id,
            'option_name' => $option_name,
            'option_image' => $option_image
        ];
    }
    $optionsStmt->close();


} 
// var_dump($options);


$response = [
    'status' => 'success',
    'data' => [
        'product' => $product,
        'options' => $options
    ]
];

echo json_encode($response);

?>