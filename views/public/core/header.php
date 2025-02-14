<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Herbivor</title>
    <link rel="stylesheet" href="<?= 'views/public/assets/css/style.css' ?>">
    <?php
    if (!empty($style)) {
        echo '<link rel="stylesheet" href="views/public/assets/css/' . $style . '">';
    }
    ?>
    <script src="<?= 'views/public/assets/js/app.js' ?>" defer></script>
    <?php
    if (!empty($js)) {
        echo '<script src="' . 'assets/js/' . $js . '" defer></script>';
    }
    ?>
</head>
<body>
    <header>
        <div class="headerContainer">
            <div>
                <img src="./cdn/img/logo_dino.png" alt="logo">
                <img src="./cdn/img/logo_text.png" alt="logo">
            </div>
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
        </div>
    </header>
</body>
</html>