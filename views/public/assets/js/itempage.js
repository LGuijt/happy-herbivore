console.log("itempage.js loaded");
itemamount = 1;
itemPrice = 0;
fullPrice = 0;

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
  const options = document.getElementById("options-container");
  for (let i = 0; i < data.length; i++) {
    const radio = document.createElement("input");
    radio.type = "radio";
    radio.name = "options";
    radio.value = data[i].option_id;
    radio.id = "option" + data[i].option_id;
    if (i === 0) {
      radio.checked = true;
    }
    options.appendChild(radio);

    const label = document.createElement("label");
    label.htmlFor = "option" + data[i].option_id;

    if (data[i].option_image !== null) {
      const img = document.createElement("img");
      img.src = "cdn/img/products/" + data[i].option_image + ".png";
      img.alt = data[i].option_name;
      label.appendChild(img);
    }

    const span = document.createElement("span");
    span.textContent = data[i].option_name;
    label.appendChild(span);

    options.appendChild(label);
  }
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

document.getElementById("button").addEventListener("click", function () {
  if (itemamount > 0) {
    console.log("add to cart");
    console.log(itemamount);
    console.log(thisProduct);
    console.log(fullPrice);
  }
});