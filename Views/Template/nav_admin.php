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
            <i class="material-icons">chevron_right</i>
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
            <i class="material-icons">chevron_right</i>
        </a>
        <ul class="treeview-menu">
            <?php if(!empty($_SESSION['permisos'][4]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/registropoi"><i class="material-icons">circle</i> Registro PACO</a></li>
            <?php } ?>

            <?php if(!empty($_SESSION['permisos'][6]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/actividadestrategica"><i class="material-icons">circle</i> Actividad Estrategica</a></li>
            <?php } ?>

            <?php if(!empty($_SESSION['permisos'][4]['r'])){ ?>
            <li><a class="treeview-item" href="<?= base_url(); ?>/cuadronecesidad"><i class="material-icons">circle</i> Cuadro de Nesesidad</a></li>
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
