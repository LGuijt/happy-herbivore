
<?php
$allProductsQuery = "SELECT p.product_id, p.category_id, c.name, i.file_name, n.name_en, d.description_en, p.price, p.kcal, p.options 
FROM products p 
JOIN categories c ON p.category_id = c.category_id
JOIN images i ON p.image_id = i.image_id
JOIN product_name n ON p.name_id = n.id
JOIN product_description d ON p.description_id = d.id
WHERE p.availabe = 0
ORDER BY c.category_id ASC";
$allProductsStmt = $con->prepare($allProductsQuery);
$allProductsStmt->bind_result($product_id, $category_id,$category_name, $image_id, $name, $description, $price, $kcal, $options);
$allProductsStmt->execute();
while ($allProductsStmt->fetch()) {
    echo "<div class='product'>";
    echo "<img src='cdn/img/products/" . $image_id . ".png' alt='product' style='width:20vh; height:20vh;'>";
    echo "<h3>" . $name . " " .$product_id . "</h3>";
    echo "<p>" . $category_id . " " . $category_name ."</p>";
    echo "<p>" . $description . "</p>";
    echo "<p>€" . $price . "</p>";
    echo "<p>" . $kcal . " kcal</p>";
    echo "<p>" . $options . "</p>";
    echo "</div>";
}

$allProductsStmt->close();
// ?>


