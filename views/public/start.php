<?php include __DIR__ . '/core/header.php'; ?>

<?php
$file_json = file_get_contents('assets/JSON/dummydata.json');
$file = json_decode($file_json, true);
$products = $file['products'];

?>
<body>
    <div id="opacity">
    <div id="button">ORDER</div>
    </div>
<video id="startVideo" loop="true" autoplay="autoplay" controls muted>
  <source src="./cdn/vid/kioskvideo.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>
</body>