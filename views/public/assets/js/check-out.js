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
});

let order = JSON.parse(localStorage.getItem("order"));
orderPrice = 0;
let amounts = 0;
let lang = localStorage.getItem("lang");
if (lang === null){
    lang = "en";
}

let itemsBox = document.getElementById("items-box");

if (order !== null){
    console.log(order);
}

async function apiFour(id, i){
    const res = await fetch("views/functions/singleProduct.php?sku=" + id + "&lang=" + lang,{
        method: "GET",
        headers: {
            "Content-Type": "application/json",
        },
    });
    const data = await res.json();
    fillList(data.data, i);
}

for (let i = 0; i < order.length; i++){
    apiFour(order[i].product_id, i);
}

function fillList(data, i){
    console.log(data);
    let itemInfo = data.product;
    let options = data.options;
    console.log(order[i]);
    let item = document.createElement("div");
    item.classList.add("item");

    let itemAmount = document.createElement("div");
    itemAmount.classList.add("itemAmount");
    itemAmount.classList.add("big");
    itemAmount.innerHTML = order[i].amount;
    item.appendChild(itemAmount);
    amounts += order[i].amount;

    let itemRest = document.createElement("div");
    itemRest.classList.add("itemRest");
    let itemTitle = document.createElement("div");
    itemTitle.classList.add("itemTitle");
    itemTitle.classList.add("big");
    itemTitle.innerHTML = itemInfo.name;
    itemRest.appendChild(itemTitle);

    if (order[i].options !== null){
        let extra = document.createElement("div");
        extra.classList.add("extra");
        for (let j = 0; j < options.length; j++){
            if (options[j].option_id === order[i].options){
                extra.innerHTML = options[j].option_name;
            }
        }
        itemRest.appendChild(extra);
    }

    item.appendChild(itemRest);

    let itemPrice = document.createElement("div");
    itemPrice.classList.add("price");
    itemPrice.classList.add("big");
    itemPrice.id = "price";
    let fullPrice = order[i].price * order[i].amount;
    let formattedPrice = fullPrice.toFixed(2);
    itemPrice.innerHTML = "&euro;" + formattedPrice;
    item.appendChild(itemPrice);

    itemsBox.appendChild(item);
    orderPrice += fullPrice;
    updatePrice();
}

function updatePrice(){
    let price = document.getElementById("priceContainer");
    let formattedPrice = orderPrice.toFixed(2);
    price.innerHTML = "&euro;" + formattedPrice;
}

document.getElementById("card-button").addEventListener("click", function(){
    completeOrder();

    setTimeout(function(){
        window.location.href = "start";
    }, 3000);
}
);

async function completeOrder(){
    let order = JSON.parse(localStorage.getItem("order"));
    let currentOrder = localStorage.getItem("currentOrder");
    let thisDay = localStorage.getItem("currentDay");
    let orderInfo = {
        order: order,
        price: orderPrice,
        amount: amounts,
        orderNumber: currentOrder,
        day: thisDay,
    };

    const res = await fetch("views/functions/completeOrder.php", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(orderInfo),
    });
    const data = await res.json();
    console.log(data);
}