<!doctype html>
<html lang="en" data-bs-theme="dark">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/assets/favicon.png" />

    <title><?= @$_APP['NAME'] ?> • Xplend <?= $_MAN['version'] ?></title>

    <!-- Css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="/_xplend/css/style.css" rel="stylesheet" />
</head>

<body>

    <?php if (PAGE !== 'hello' and PAGE !== 'auth') { ?>

        <div id="dash-menu" class="mb-4">
            <a href="/_sys/dashboard" class="btn btn-<?= (PAGE == 'dashboard') ? 'black active' : 'dark' ?>">
                <i class="fa-solid fa-chart-line"></i>
                Dashboard
            </a>
            <a href="/_sys/dep" class="btn btn-<?= (PAGE == 'dep') ? 'black active' : 'dark' ?>">
                <i class="fa-solid fa-layer-group"></i>
                Dependencies
            </a>
            <a href="/_sys/cache" class="btn btn-<?= (PAGE == 'cache') ? 'black active' : 'dark' ?>">
                <i class="fa-solid fa-database"></i>
                Cache
            </a>
            <a href="/_sys/session" class="btn btn-<?= (PAGE == 'session') ? 'black active' : 'dark' ?>">
                <i class="fa-solid fa-file-lines"></i>
                Session
            </a>
            <a href="/_sys/auth/logout" class="btn btn-secondary" style="float:right">
                <i class="fa-solid fa-right-from-bracket"></i>
                Logout
            </a>
            <hr>
        </div>

    <?php } ?>