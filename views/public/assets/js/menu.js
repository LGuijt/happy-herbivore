async function apiOne(){
    const res = await fetch('views/functions/allProducts.php', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json'
        }
    });

    const data = await res.json();
    console.log(data);
};
apiOne();   

async function apiTwo(){
    const res = await fetch('views/functions/categories.php', {
    method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        }
    });

    const data = await res.json();
    console.log(data);
};