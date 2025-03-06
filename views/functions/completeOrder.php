<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $order = $data['order'];
    $orderNumber = $data['orderNumber'];
    $price = $data['price'];
    $getIdQuery = "SELECT order_id FROM orders WHERE pickup_number = ? ORDER BY order_id DESC LIMIT 1";
    $getIdStmt = $con->prepare($getIdQuery);
    $getIdStmt->bind_param('i', $orderNumber);
    $getIdStmt->execute();
    $getIdStmt->bind_result($id);
    $getIdStmt->fetch();
    $getIdStmt->close();

    $orderQuery = "UPDATE orders SET order_status_id = 2, price = ? WHERE order_id = ?";
    $orderStmt = $con->prepare($orderQuery);
    $orderStmt->bind_param('di', $price, $id);
    $orderStmt->execute();
    $orderStmt->close();

    for ($i = 0; $i < count($order); $i++) {
        $productQuery = "INSERT INTO order_products (order_id, product_id) VALUES (?, ?)";
        $productStmt = $con->prepare($productQuery);
        $productStmt->bind_param('ii', $id, $order[$i]["product_id"]);
        $productStmt->execute();
        $productStmt->close();
    }

    $response = [
        'status' => 'success',
        'data' => [
            'order' => $order
        ]
    ];
    echo json_encode($response);
}
