console.log("itempage.js loaded");
itemamount = 1;
itemPrice = 0;
fullPrice = 0;
newProduct = true;
currentOption = null;

let currentOrder = localStorage.getItem("order");
currentOrder = JSON.parse(currentOrder);
console.log(currentOrder);
async function apiThree(x) {
  const res = await fetch("views/functions/singleProduct.php?sku=" + x, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  });

  const data = await res.json();
  console.log(data.data);
  fillPage(data.data);
}

apiThree(thisProduct);

let fullOrder = localStorage.getItem("order");
fullOrder = JSON.parse(fullOrder);

if (fullOrder !== null) {
  for (let i = 0; i < fullOrder.length; i++) {
    if (fullOrder[i].product_id === thisProduct) {
      itemamount = fullOrder[i].amount;
      document.getElementById("amount").innerHTML = itemamount;
      newProduct = false;
      currentOption = fullOrder[i].options;
    }
  }
}

function fillPage(data) {
  prod = data.product;
  console.log(prod);

  img = document.getElementById("productImg");
  img.src = "cdn/img/products/" + prod.image_id + ".png";
  img.alt = data.name;

  prodname = document.getElementById("prodName");
  prodname.innerHTML = prod.name;

  desc = document.getElementById("prodDesc");
  desc.innerHTML = prod.description;

  price = document.getElementById("price");
  itemPrice = parseFloat(prod.price);
  fullPrice = itemPrice;
  price.innerHTML = "&euro;" + prod.price;

  if (prod.options === 1) {
    fillOptions(data.options);
  }
}

function fillOptions(data) {
  console.log(data);
  const options = document.getElementById("optionsContainer");
  options.innerHTML = "";

  const select = document.createElement("select");
  select.id = "sauceOptions";
  
  const defaultOption = document.createElement("option");
  defaultOption.value = "none";
  defaultOption.textContent = "None";
  select.appendChild(defaultOption);
  
  for (let i = 0; i < data.length; i++) {
    const option = document.createElement("option");
    option.value = data[i].option_id;
    option.textContent = data[i].option_name;
    if (!newProduct && data[i].option_id === currentOption) {
      option.selected = true;
    }
    select.appendChild(option);
  }

  select.addEventListener("change", function () {
    currentOption = select.value;
  });

  options.appendChild(select);
}

document.getElementById("plus").addEventListener("click", function () {
  itemamount++;
  document.getElementById("amount").innerHTML = itemamount;
  fullPrice += itemPrice;
  formattedPrice = fullPrice.toFixed(2);
  document.getElementById("price").innerHTML = "&euro;" + formattedPrice;
});

document.getElementById("minus").addEventListener("click", function () {
  if (itemamount > 0) {
    itemamount--;
    fullPrice -= itemPrice;
    formattedPrice = fullPrice.toFixed(2);
    document.getElementById("price").innerHTML = "&euro;" + formattedPrice;
  }
  document.getElementById("amount").innerHTML = itemamount;
});

document.getElementById("addToCart").addEventListener("click", function () {
  if (itemamount > 0) {
    addToOrder();
  }
});

function addToOrder() {
  if (newProduct) {
    fullOrder.push({
      product_id: thisProduct,
      options: currentOption,
      amount: itemamount,
      price: itemPrice,
    });
  } else {
    for (let i = 0; i < fullOrder.length; i++) {
      if (fullOrder[i].product_id === thisProduct) {
        fullOrder[i].amount = itemamount;
        fullOrder[i].price = itemPrice;
        fullOrder[i].options = currentOption;
      }
    }
  }

  let myArray = JSON.stringify(fullOrder);
  localStorage.setItem("order", myArray);
  window.location.href = "menu";
}
