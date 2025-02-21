<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';
$categories = [];
$categoriesQuery = "SELECT category_id, name, description, img FROM categories";
$categoriesStmt = $con->prepare($categoriesQuery);
$categoriesStmt->bind_result($category_id, $name, $description, $img);
$categoriesStmt->execute();
while ($categoriesStmt->fetch()) {
    $categories[] = [
        'category_id' => $category_id,
        'name' => $name,
        'description' => $description,
        'img' => $img
    ];
}

$response = [
    'status' => 'success',
    'data' => [
        'categories' => $categories
    ]
];

echo json_encode($response);

$categoriesStmt->close();

?>