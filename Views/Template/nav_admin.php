<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
  <div class="app-sidebar__user">
    <img class="app-sidebar__user-avatar" src="<?= media();?>/images/imagen.webp" alt="User Image">
    <div>
      <p class="app-sidebar__user-name"><?= $_SESSION['userData']['nombres']; ?></p>
      <p class="app-sidebar__user-designation"><?= $_SESSION['userData']['nombrerol']; ?></p>
    </div>
  </div>
  <ul class="app-menu">
    <?php if(!empty($_SESSION['permisos'][1]['r'])){ ?>
    <li>
        <a class="app-menu__item" href="<?= base_url(); ?>/dashboard">
            <i class="material-icons">dashboard</i>
            <span class="app-menu__label">Dashboard</span>
        </a>
    </li>
    <?php } ?>
    
    <?php if(!empty($_SESSION['permisos'][2]['r'])){ ?>
    <li class="treeview">
        <a class="app-menu__item" href="#" data-toggle="treeview">
            <i class="material-icons">groups</i>
            <span class="app-menu__label">Usuarios</span>
            <i class="material-icons float-right">chevron_right</i>
        </a>
        <ul class="treeview-menu">
            <li><a class="treeview-item" href="<?= base_url(); ?>/usuarios"><i class="material-icons">circle</i> Usuarios</a></li>
            <li><a class="treeview-item" href="<?= base_url(); ?>/roles"><i class="material-icons">circle</i> Roles</a></li>
        </ul>
    </li>
    <?php } ?>

    <?php if(!empty($_SESSION['permisos'][3]['r'])){ ?>
    <li>
        <a class="app-menu__item" href="<?= base_url(); ?>/clientes">
            <i class="material-icons">person</i>
            <span class="app-menu__label">Clientes</span>
        </a>
    </li>
    <?php } ?>

    <?php if(!empty($_SESSION['permisos'][4]['r']) || !empty($_SESSION['permisos'][6]['r'])){ ?>
    <li class="treeview">
        <a class="app-menu__item" href="#" data-toggle="treeview">
            <i class="material-icons">shopping_cart</i>
            <span class="app-menu__label">Ficha PACO</span>
            <i class="material-icons float-right">chevron_right</i>
        </a>
        <ul class="treeview-menu">
            <?php if(!empty($_SESSION['permisos'][4]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/registropoi"><i class="material-icons">circle</i> Registro PACO</a></li>
            <?php } ?>

            <?php if(!empty($_SESSION['permisos'][6]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/actividadestrategica"><i class="material-icons">circle</i> Actividad Estrategica</a></li>
            <?php } ?>

            <?php if(!empty($_SESSION['permisos'][4]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/cuadronecesidad"><i class="material-icons">circle</i> Cuadro de Necesidad</a></li>
            <?php } ?>
        </ul>
    </li>
    <?php } ?>

    <?php if(!empty($_SESSION['permisos'][5]['r'])){ ?>
    <li>
        <a class="app-menu__item" href="<?= base_url(); ?>/pedidospoi">
            <i class="material-icons">inventory_2</i>
            <span class="app-menu__label">Pedidos PACO</span>
        </a>
    </li>
    <?php } ?>
    
    <li>
        <a class="app-menu__item" href="<?= base_url(); ?>/logout">
            <i class="material-icons">logout</i>
            <span class="app-menu__label">Logout</span>
        </a>
    </li>
  </ul>
</aside>

<!-- CSS Styles -->
<style>
  .app-sidebar {
    background-color: #3f51b5; /* Color de fondo del sidebar */
    color: white; /* Color del texto */
    width: 250px; /* Ancho del sidebar */
  }
  .app-sidebar__user {
    display: flex;
    align-items: center;
    padding: 15px;
  }
  .app-sidebar__user-avatar {
    border-radius: 50%;
    width: 50px; /* Ajusta el tamaño del avatar */
    height: 50px;
    margin-right: 10px;
  }
  .app-menu {
    list-style: none;
    padding: 0;
  }
  .app-menu__item {
    color: white;
    text-decoration: none;
    display: flex;
    align-items: center;
    padding: 10px 15px;
    transition: background 0.3s;
  }
  .app-menu__item:hover {
    background-color: rgba(255, 255, 255, 0.1); /* Efecto hover */
  }
  .treeview-menu {
    list-style: none;
    padding-left: 15px;
    display: none; /* Ocultar submenú por defecto */
  }
  .treeview.active .treeview-menu {
    display: block; /* Mostrar submenú si está activo */
  }
  .treeview.active > .app-menu__item {
    background-color: rgba(255, 255, 255, 0.2); /* Color de fondo para submenú activo */
  }
</style>

<!-- JavaScript -->
<script>
  document.addEventListener('DOMContentLoaded', function() {
    const treeviewItems = document.querySelectorAll('.treeview > .app-menu__item');
    
    treeviewItems.forEach(item => {
      item.addEventListener('click', function(e) {
        e.preventDefault();

        // Cerrar otros submenús
        treeviewItems.forEach(i => {
          const parent = i.parentElement;
          if (parent !== item.parentElement) {
            parent.classList.remove('active'); // Desactivar otros submenús
          }
        });

        // Alternar la clase activa del submenú
        const parent = item.parentElement;
        parent.classList.toggle('active'); 
      });
    });
  });
</script>
