<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script>
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
    // apiOne();   

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

    // apiTwo();
    </script>

    <?php

    ?>
    
</body>
</html>