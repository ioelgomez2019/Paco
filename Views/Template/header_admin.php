<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="description" content="SISPACO">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Joel Santos">
    <meta name="theme-color" content="#020659">
    
    <title><?= $data['page_tag'] ?></title>
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="<?= media(); ?>/css/main.css">
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/bootstrap-select.min.css"> 
    <link rel="stylesheet" type="text/css" href="<?= media(); ?>/css/style.css">
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  </head>
  <body class="app sidebar-mini">
    <div id="divLoading">
      <div>
        <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
      </div>
    </div>
    <!-- Navbar-->
    <header class="app-header">
      <a class="app-header__logo" href="<?= base_url(); ?>/dashboard">UNAJ</a>
      <!-- Sidebar toggle button-->
      <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar">
        <i class="material-icons">menu</i>
      </a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown">
          <a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu">
            <i class="material-icons">account_circle</i>
          </a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li>
              <a class="dropdown-item" href="<?= base_url(); ?>/opciones">
                <i class="material-icons">settings</i> Settings
              </a>
            </li>
            <li>
              <a class="dropdown-item" href="<?= base_url(); ?>/usuarios/perfil">
                <i class="material-icons">person</i> Profile
              </a>
            </li>
            <li>
              <a class="dropdown-item" href="<?= base_url(); ?>/logout">
                <i class="material-icons">logout</i> Logout
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </header>
    <?php require_once("nav_admin.php"); ?>
  </body>
</html>
