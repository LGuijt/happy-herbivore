<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- <link rel="icon" type="image/x-icon" href=""> -->
    <link rel="stylesheet" href="<?= 'views/public/assets/css/style.css' ?>">
    <?php
    //checkt of er een style of js bestand is meegegeven en laad deze in
    if ($style != '') {
        ?>
        <link rel="stylesheet" href="<?= 'assets/css/' . $style ?>">
        <?php
    }
    ?>
    <script src="<?= 'views/public/assets/js/app.js' ?>" defer></script>
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
        <img src="assets/img/logo.png" alt="logo">
        <div class="dropdown">
            <div onclick="changeLanguageDrop()" class="dropbtn">EN</div>
            <div id="myDropdown" class="dropdown-content">
                <div onclick="changeLanguage('nl')">Nederlands</div>
                <div onclick="changeLanguage('en')">English</div>
                <div onclick="changeLanguage('de')">Deutsch</div>
                <div onclick="changeLanguage('fr')">Français</div>
                <div onclick="changeLanguage('jp')">日本語</div>
            </div>
        </div>
    </header>