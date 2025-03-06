<?php include __DIR__ . '/core/header.php'; ?>

<div class="parent-container">
    <div class="checkout-container">
        <div class="items-box" id="items-box">
            <!-- Items gaan hier <Kijk bij Javascript for meer details> -->
        </div>
        <hr>
        <div class="totalContainer">
            <p class="big">Total</p>
            <p class="big" id="priceContainer"></p>
        </div>
        <div class="payment-options">
            <button class="payment-btn" onclick="showQR()">
                QR Code
            </button>
            <button class="payment-btn" id="card-button">
                Card
            </button>
        </div>

        <div class="qr-section" id="qrSection">
            <div class="qr-instructions">Scan this code with your phone camera</div>
            <div id="qr-code"></div>
        </div>

    </div>
</div>