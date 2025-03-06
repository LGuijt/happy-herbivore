document.addEventListener('DOMContentLoaded', function() {
  const qrCodeScript = document.createElement('script');
  qrCodeScript.src = 'https://cdn.jsdelivr.net/npm/qrcode@1.4.4/build/qrcode.min.js';
  document.head.appendChild(qrCodeScript);

  qrCodeScript.onload = function() {
      window.showQR = function() {
          const qrSection = document.getElementById('qrSection');
          qrSection.style.display = 'block';

          const qrContainer = document.getElementById('qr-code');
          qrContainer.innerHTML = ''; 

          QRCode.toDataURL(
              "https://tikkie.me/payment?amount=19.99&description=Kiosk+Purchase",
              {
                  width: 300,
                  height: 300,
                  color: {
                      dark: '#000000',
                      light: '#ffffff'
                  }
              },
              function (error, url) {
                  if (error) {
                      console.error(error);
                      qrContainer.innerHTML = 'Error generating QR code';
                      return;
                  }

                  const img = document.createElement('img');
                  img.src = url;
                  img.style.width = '100%';
                  img.style.height = '100%';
                  img.style.border = 'none';
                  qrContainer.appendChild(img);
              }
          );
      }
  };

  // Function to add items to the items box
  window.addItem = function(itemName, itemPrice) {
      const itemsBox = document.getElementById('itemsBox');
      const itemDiv = document.createElement('div');
      itemDiv.classList.add('item');

      itemDiv.innerHTML = `
          <div class="item-name">${itemName}</div>
          <div class="item-price">$${itemPrice}</div>
          <button class="remove-item" onclick="removeItem(this)">Remove</button>
      `;

      itemsBox.appendChild(itemDiv);
  };

  // Function to remove an item from the box
  window.removeItem = function(button) {
      const itemDiv = button.parentElement;
      itemDiv.remove();
  };

  // Add two items as a demonstration
  addItem('Bottle of Water', 2.99);
  addItem('Shampoo', 5.49);
});
