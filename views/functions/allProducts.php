<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';

$products = [];

$lang = $_GET['lang'];

if ($lang == 'en'){
$allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_en, d.description_en, p.price, p.kcal, p.options 
FROM products p 
JOIN categories c ON p.category_id = c.category_id
JOIN images i ON p.image_id = i.image_id
JOIN product_name n ON p.name_id = n.id
JOIN product_description d ON p.description_id = d.id
WHERE p.availabe = 0
ORDER BY c.category_id ASC";
} else if ($lang == 'nl'){
$allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_nl, d.description_nl, p.price, p.kcal, p.options
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN images i ON p.image_id = i.image_id
JOIN product_name n ON p.name_id = n.id
JOIN product_description d ON p.description_id = d.id
WHERE p.availabe = 0
ORDER BY c.category_id ASC";
} else if ($lang == 'de'){
    $allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_de, d.description_de, p.price, p.kcal, p.options
    FROM products p
    JOIN categories c ON p.category_id = c.category_id
    JOIN images i ON p.image_id = i.image_id
    JOIN product_name n ON p.name_id = n.id
    JOIN product_description d ON p.description_id = d.id
    WHERE p.availabe = 0
    ORDER BY c.category_id ASC";
} else if ($lang == 'fr'){
    $allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_fr, d.description_fr, p.price, p.kcal, p.options
    FROM products p
    JOIN categories c ON p.category_id = c.category_id
    JOIN images i ON p.image_id = i.image_id
    JOIN product_name n ON p.name_id = n.id
    JOIN product_description d ON p.description_id = d.id
    WHERE p.availabe = 0
    ORDER BY c.category_id ASC";
} else if ($lang == 'jp'){
    $allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_jp, d.description_jp, p.price, p.kcal, p.options
    FROM products p
    JOIN categories c ON p.category_id = c.category_id
    JOIN images i ON p.image_id = i.image_id
    JOIN product_name n ON p.name_id = n.id
    JOIN product_description d ON p.description_id = d.id
    WHERE p.availabe = 0
    ORDER BY c.category_id ASC";
}

$allProductsStmt = $con->prepare($allProductsQuery);
$allProductsStmt->bind_result($product_id, $category_id, $category_name, $image_id, $name, $description, $price, $kcal, $options);
$allProductsStmt->execute();
while ($allProductsStmt->fetch()) {
    $products[] = [
        'product_id' => $product_id,
        'category_id' => $category_id,
        'category_name' => $category_name,
        'image_id' => $image_id,
        'name' => $name,
        'description' => $description,
        'price' => $price,
        'kcal' => $kcal,
        'options' => $options
    ];
}


$response = [
    'status' => 'success',
    'data' => [
        'products' => $products
    ]
];

echo json_encode($response);
// ?>