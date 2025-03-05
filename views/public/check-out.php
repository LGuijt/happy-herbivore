<?php include __DIR__ . '/core/header.php'; ?>

<body>
    <div class="checkout-container">
        <h1>Kiosk Checkout</h1>
        <div class="product-details">
            <p><strong>Product:</strong> Amazing Item</p>
            <p><strong>Price:</strong> $50.00</p>
        </div>

        <h2>Pay via QR Code</h2>

        <div id="qrcode"></div>

        <div class="payment-message">
            <p>Scan the QR code with your mobile device to complete the payment.</p>
        </div>

        <div class="button-container">
            <button onclick="completeCheckout()">Complete Checkout</button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/qrcode@1.4.4/build/qrcode.min.js"></script>
</body>


