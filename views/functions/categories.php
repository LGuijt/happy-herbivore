<?php
$categoriesQuery = "SELECT category_id, name FROM categories";
$categoriesStmt = $con->prepare($categoriesQuery);
$categoriesStmt->bind_result($category_id, $name);
$categoriesStmt->execute();
while ($categoriesStmt->fetch()) {
    echo "<div class='category'>";
    echo "<h3>" . $name . "</h3>";
    echo "<p>" . $category_id . "</p>";
    echo "</div>";
}

?>