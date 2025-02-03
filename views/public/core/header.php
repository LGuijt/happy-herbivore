<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- <link rel="icon" type="image/x-icon" href=""> -->
    <link rel="stylesheet" href="<?= 'assets/css/style.css' ?>">
    <link rel="stylesheet" href="<?= 'assets/css/header.css' ?>">
    <link rel="stylesheet" href="<?= 'assets/css/footer.css' ?>">
    <?php
    //checkt of er een style of js bestand is meegegeven en laad deze in
    if ($style != '') {
    ?>
        <link rel="stylesheet" href="<?= 'assets/css/' . $style ?>">
    <?php
    }
    ?>
    <script src="<?= 'assets/js/app.js' ?>" defer></script>
    <?php
    if ($js != '') {
    ?>
        <script src="<?= 'assets/js/' . $js ?>" defer></script>
    <?php
    }
    ?>
    </head>

<body>
    <header>
        <p>header works as intended</p>
    </header>