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

    $url = 'views/functions/allProducts.php';
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "GET");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    if($response === false){
        echo 'Curl error: ' . curl_error($ch);
    }
    curl_close($ch);

    $data = json_decode($response, true);
    var_dump($data);

    ?>
    
</body>
</html>