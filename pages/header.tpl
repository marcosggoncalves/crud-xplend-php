<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= @$_APP['NAME'] ?></title>
    <link href="/_xplend/css/alert.css" rel="stylesheet" />
    <link href="/_xplend/css/index.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> 
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.22.5/dist/sweetalert2.all.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.22.5/dist/sweetalert2.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <div class="container container-header">
            <div class="logo">
                <img src="/_xplend/img/logo.png">
            </div>
            <div class="logo-titulos">
                <h1><?= @$_APP['NAME'] ?></h1>
                <h2>Gerencimento veicular</h2>
            </div>
        </div>
    </header>
</body>
<div class="container">
    <?= cb() ?>
</div>
</html>