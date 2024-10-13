<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Abel OSH">
    <meta name="theme-color" content="#009688">
    <link rel="shortcut icon" href="<?= media();?>/images/favicon.ico">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/main.css">
    <link rel="stylesheet" type="text/css" href="<?= media();?>/css/style.css">
    
    <title><?= $data['page_tag']; ?></title>

    <style>
      /* Logo style for Material Design */
      .logo h1 {
        font-family: 'Roboto', sans-serif;
        font-size: 2.5rem;
        color: #FFFFFF;
        text-transform: uppercase;
        margin: 0;
      }

      /* Background cover for Material Design */
      .material-half-bg .cover {
        background-color: #009688; /* Teal color */
      }

      /* Login Box styling */
      .login-content {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: #f5f5f5;
      }

      .login-box {
        width: 360px;
        padding: 40px;
        background-color: #ffffff;
        box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
      }

      /* Form Heading */
      .login-head {
        font-family: 'Roboto', sans-serif;
        font-weight: 500;
        color: #333;
        margin-bottom: 20px;
      }

      /* Form inputs styling */
      .form-control {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        transition: border-color 0.3s;
      }
      
      .form-control:focus {
        border-color: #009688;
        outline: none;
      }

      /* Buttons */
      .btn-primary {
        background-color: #009688;
        border: none;
        padding: 10px;
        font-size: 1rem;
        font-weight: bold;
        color: #ffffff;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
      }

      .btn-primary:hover {
        background-color: #00796b;
      }

      .utility a {
        color: #009688;
        text-decoration: none;
      }

      .utility a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h1>SISPACO</h1>
      </div>
      <div class="login-box">
        <div id="divLoading">
          <div>
            <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
          </div>
        </div>
        <form class="login-form" name="formLogin" id="formLogin" action="">
          <h3 class="login-head"><i class="fa fa-user"></i> INICIAR SESIÓN</h3>
          <div class="form-group">
            <label class="control-label">USUARIO</label>
            <input id="txtEmail" name="txtEmail" class="form-control" type="email" placeholder="Email" autofocus>
          </div>
          <div class="form-group">
            <label class="control-label">CONTRASEÑA</label>
            <input id="txtPassword" name="txtPassword" class="form-control" type="password" placeholder="Contraseña">
          </div>
          <div class="form-group">
            <div class="utility">
              <p class="semibold-text mb-2"><a href="#" data-toggle="flip">¿Olvidaste tu contraseña?</a></p>
            </div>
          </div>
          <div id="alertLogin" class="text-center"></div>
          <div class="form-group btn-container">
            <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i> INICIAR SESIÓN</button>
          </div>
        </form>
        <form id="formRecetPass" name="formRecetPass" class="forget-form" action="">
          <h3 class="login-head"><i class="fa fa-lock"></i> ¿Olvidaste contraseña?</h3>
          <div class="form-group">
            <label class="control-label">EMAIL</label>
            <input id="txtEmailReset" name="txtEmailReset" class="form-control" type="email" placeholder="Email">
          </div>
          <div class="form-group btn-container">
            <button type="submit" class="btn btn-primary"><i class="fa fa-unlock"></i> REINICIAR</button>
          </div>
          <div class="form-group mt-3">
            <p class="semibold-text mb-0"><a href="#" data-toggle="flip"><i class="fa fa-angle-left"></i> Iniciar sesión</a></p>
          </div>
        </form>
      </div>
    </section>
    <script>
      const base_url = "<?= base_url(); ?>";
    </script>
    <script src="<?= media(); ?>/js/jquery-3.3.1.min.js"></script>
    <script src="<?= media(); ?>/js/popper.min.js"></script>
    <script src="<?= media(); ?>/js/bootstrap.min.js"></script>
    <script src="<?= media(); ?>/js/fontawesome.js"></script>
    <script src="<?= media(); ?>/js/main.js"></script>
    <script src="<?= media(); ?>/js/plugins/pace.min.js"></script>
    <script src="<?= media(); ?>/js/plugins/sweetalert.min.js"></script>
    <script src="<?= media(); ?>/js/<?= $data['page_functions_js']; ?>"></script>
  </body>
</html>
