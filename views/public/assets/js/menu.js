async function catApi(){
    const res = await fetch('views/functions/categories.php', {
    method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        }
    });

    const data = await res.json();
    console.log(data);
};

catApi();

console.log('Hello World!');