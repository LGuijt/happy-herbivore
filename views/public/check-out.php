<?php include __DIR__ . '/core/header.php'; ?>

<div class="checkout-container">
    <div class="total-amount">Total: $19.99</div>

    <div class="items-box" id="itemsBox">
        <!-- Items gaan hier <Kijk bij Javascript for meer details> -->
    </div>

    <div class="payment-options">
        <button class="payment-btn" onclick="showQR()">
            Scan QR Code
        </button>
        <button class="payment-btn">
            Pay with pin
        </button>
    </div>

    <div class="qr-section" id="qrSection">
        <div class="qr-instructions">Scan this code with your phone camera</div>
        <div id="qr-code"></div>
        <div class="qr-instructions">Scan the QR code for direct payment or pay with pin</div>
    </div>

    <div class="footer">
        <p>Need help? Contact support</p>
    </div>
</div>
