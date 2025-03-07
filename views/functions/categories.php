<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';
$categories = [];
$lang = $_GET['lang'];
if ($lang == "en"){
    $categoriesQuery = "SELECT category_id, n.name_en, d.description_en, img FROM categories
    JOIN categorie_name n ON categories.name = n.id
    JOIN categorie_descriptions d ON categories.description = d.id";
} else if ($lang == "nl"){
    $categoriesQuery = "SELECT category_id, n.name_nl, d.description_nl, img FROM categories
    JOIN categorie_name n ON categories.name = n.id
    JOIN categorie_descriptions d ON categories.description = d.id";
} else if ($lang == "de"){
    $categoriesQuery = "SELECT category_id, n.name_de, d.description_de, img FROM categories
    JOIN categorie_name n ON categories.name = n.id
    JOIN categorie_descriptions d ON categories.description = d.id";
} else if ($lang == "fr"){
    $categoriesQuery = "SELECT category_id, n.name_fr, d.description_fr, img FROM categories
    JOIN categorie_name n ON categories.name = n.id
    JOIN categorie_descriptions d ON categories.description = d.id";
} else if ($lang == "jp"){
    $categoriesQuery = "SELECT category_id, n.name_jp, d.description_jp, img FROM categories
    JOIN categorie_name n ON categories.name = n.id
    JOIN categorie_descriptions d ON categories.description = d.id";
}
// $categoriesQuery = "SELECT category_id, name, description, img FROM categories";
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