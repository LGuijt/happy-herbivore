async function catApi() {
  const res = await fetch("views/functions/categories.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
  });

  const data = await res.json();
  neededData = data.data.categories;
  fillCat(neededData);
}

async function prodApi() {
  const res = await fetch("views/functions/allProducts.php", {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
    },
  });

  const data = await res.json();
  neededData = data.data.products;
  fillProd(neededData);
}

catApi();

prodApi();

function fillCat(data) {
  const category = document.getElementById("categories");
  category.innerHTML = "<h2>Categories</h2>";
  for (let i = 0; i < data.length; i++) {
    img = data[i].img;
    catName = data[i].name;
    id = data[i].category_id;
    description = data[i].description;

    const cat = document.createElement("article");
    cat.classList.add("category");
    cat.setAttribute("id", "cat" + id);
    cat.setAttribute("onclick", "changeCat(" + id + ")");

    cat.appendChild(addimg(img));
    cat.appendChild(setDetails("cat", catName, description));
    category.appendChild(cat);
  }
}

function fillProd(data) {
  for (c = 1; c < 7; c++) {
    const menu = document.getElementById("menu-list" + c);
    menu.innerHTML = "";
    for (let i = 0; i < data.length; i++) {
        catId = data[i].category_id;
        if (catId === c) {
      img = data[i].image_id;
      catName = data[i].name;
      id = data[i].product_id;
      price = data[i].price;

      const prod = document.createElement("div");
      prod.classList.add("menu-item");

      prod.appendChild(addimg(img));
      prod.appendChild(setDetails("product", catName, 0, price));
      const link = document.createElement("a");
        link.href = "itempage?sku=" + id;
        link.classList.add("item-link");
        link.textContent = "Add to cart";
        prod.appendChild(link);

      menu.appendChild(prod);
        }
    }
  }
}

function changeCat(id) {
  console.log(id);
}

function addimg(img) {
  const imgTag = document.createElement("img");
  imgTag.src = "cdn/img/products/" + img + ".png";
  return imgTag;
}

function setDetails(type, catName, description, price) {
  const details = document.createElement("div");
  details.classList.add("category-details");
  details.appendChild(addName(catName));
  if (type === "cat"){
  details.appendChild(addDescription(description));
}
  if (type === "product") {
    details.appendChild(addPrice(price));
  }
  return details;
}

function addName(catName) {
  const name = document.createElement("h3");
  name.textContent = catName;
  return name;
}

function addDescription(description) {
  const desc = document.createElement("p");
  desc.textContent = description;
  return desc;
}

function addPrice(price) {
  const priceTag = document.createElement("p");
  priceTag.textContent = "€" + price;
  return priceTag;
}
