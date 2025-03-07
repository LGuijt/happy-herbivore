let order = localStorage.getItem("order");
order = JSON.parse(order);
orderPrice = 0;
amounts = [];
let lang = localStorage.getItem("lang");
if (lang === null) {
    lang = "en";
}

let productContainer = document.getElementById("productContainer");

if (order !== null) {
    console.log(order);
}

async function apiFour(x, y){
    const res = await fetch("views/functions/singleProduct.php?sku=" + x + "&lang=" + lang,{
        method: "GET",
        headers: {
            "Content-Type": "application/json",
        },
    });
    const data = await res.json();
    fillList(data.data, y);
}

for (let i = 0; i < order.length; i++) {
    apiFour(order[i].product_id, i);
}

function fillList(data, i){
    console.log(data);
    let prodInfo = data.product;
    let options = data.options;
    console.log(order[i]);
    let product = document.createElement("div");
    product.classList.add("product");

    let productImage = document.createElement("div");
    productImage.classList.add("productImage");
    let img = document.createElement("img");
    img.src = "cdn/img/products/" + prodInfo.image_id + ".png";
    img.alt = prodInfo.name;
    productImage.appendChild(img);
    product.appendChild(productImage);

    let productRest = document.createElement("div");
    productRest.classList.add("productRest");
    let productTitle = document.createElement("div");
    productTitle.classList.add("productTitle");
    productTitle.classList.add("big");
    productTitle.innerHTML = prodInfo.name;
    productRest.appendChild(productTitle);

    if (order[i].options !== null){
        let extra = document.createElement("div");
        extra.classList.add("extra");
        extra.addEventListener("click", function(){
            window.location.href = "itempage?sku=" + prodInfo.product_id;
        });
        for (let j = 0; j < options.length; j++){
            if (options[j].option_id === order[i].options){
                extra.innerHTML = options[j].option_name;
            }
        }
        productRest.appendChild(extra);
    }

    let amountChanger = document.createElement("div");
    amountChanger.classList.add("amountChanger");
    let minus = document.createElement("div");
    minus.classList.add("minus");
    minus.classList.add("pick");
    minus.id = "minus" + i;
    minus.innerHTML = "-";
    minus.addEventListener("click", function(){
        if (amounts[i] > 1){
            amounts[i] -= 1;
            document.getElementById("amount" + i).innerHTML = amounts[i];
            order[i].amount -= 1;
            fullPrice = order[i].price * order[i].amount;
            formattedPrice = fullPrice.toFixed(2);
            document.getElementById("price").innerHTML = "&euro;" + formattedPrice;
            localStorage.setItem("order", JSON.stringify(order));
            orderPrice -= order[i].price;
            updatePrice();
        } else {
            productContainer.removeChild(product);
            order.splice(i, 1);
            localStorage.setItem("order", JSON.stringify(order));
            orderPrice -= fullPrice;
            updatePrice();
        }
    }
    );
    amountChanger.appendChild(minus);

    let itemAmount = document.createElement("div");
    itemAmount.classList.add("itemAmount");
    itemAmount.classList.add("big");
    itemAmount.id = "amount" + i;
    itemAmount.innerHTML = order[i].amount;
    amounts.push(order[i].amount);
    amountChanger.appendChild(itemAmount);

    let plus = document.createElement("div");
    plus.classList.add("plus");
    plus.classList.add("pick");
    plus.id = "plus" + i;
    plus.innerHTML = "+";
    plus.addEventListener("click", function(){
        amounts[i] += 1;
        document.getElementById("amount" + i).innerHTML = amounts[i];
        order[i].amount += 1;
        fullPrice = order[i].price * order[i].amount;
        formattedPrice = fullPrice.toFixed(2);
        document.getElementById("price").innerHTML = "&euro;" + formattedPrice;
        localStorage.setItem("order", JSON.stringify(order));
        orderPrice += order[i].price;
        updatePrice();
    }
    );
    amountChanger.appendChild(plus);
    productRest.appendChild(amountChanger);

    product.appendChild(productRest);

    let priceContainer = document.createElement("div");
    priceContainer.classList.add("priceContainer");

    let price = document.createElement("div");
    price.classList.add("price");
    price.classList.add("big");
    price.id = "price";
    let fullPrice = order[i].price * order[i].amount;
    let formattedPrice = fullPrice.toFixed(2);
    price.innerHTML = "&euro;" + formattedPrice;
    priceContainer.appendChild(price);
    product.appendChild(priceContainer);

    orderPrice += fullPrice;

    productContainer.appendChild(product);
    updatePrice();
}


function updatePrice(){
    let price = document.getElementById("priceContainer");
    let fullPrice = orderPrice;
    let formattedPrice = fullPrice.toFixed(2);
    price.innerHTML = "&euro;" + formattedPrice;
}

let cancelButton = document.getElementById("cancel-button");

if (cancelButton) {
  cancelButton.addEventListener("click", () => {
    window.location.href = "menu";
  });
}



