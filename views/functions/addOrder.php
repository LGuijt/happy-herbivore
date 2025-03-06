<?php
require_once __DIR__ . '/../../core/db_connect.php';
require_once __DIR__ . '/../../core/db_credentials.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $order = $data['order'];
    $orderQuery = "INSERT INTO orders (pickup_number) VALUES (?)";
    $orderStmt = $con->prepare($orderQuery);
    $orderStmt->bind_param('i', $order);
    $orderStmt->execute();
    $orderStmt->close();
    $response = [
        'status' => 'success',
        'data' => [
            'order' => $order
        ]
    ];
    echo json_encode($response);
}