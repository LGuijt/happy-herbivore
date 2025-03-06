function generateQRCode() {
  const paymentLink = "https://www.example-payment-link.com/pay?amount=50&item=AmazingItem"; 

  QRCode.toCanvas(document.getElementById('qrcode'), paymentLink, function (error) {
      if (error) {
          console.error(error);
      } else {
          console.log("QR code generated successfully.");
      }
  });
}

function completeCheckout() {
  alert("Checkout Complete! Please scan the QR code to pay.");
}

window.onload = generateQRCode;
