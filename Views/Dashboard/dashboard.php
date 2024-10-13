<?php headerAdmin($data); ?>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="material-icons">dashboard</i> <?= $data['page_title'] ?></h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="material-icons">home</i></li>
          <li class="breadcrumb-item"><a href="<?= base_url(); ?>/dashboard">Inicio</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card mb-4">
            <div class="card-header card-header-primary">
              <div class="card-icon">
                <i class="material-icons">leaderboard</i>
              </div>
              <div class="text-end">
                <p class="card-category">Sistema de Planificación de Actividades Operativas</p>
                <h4 class="card-title">Versión BETA 1.3</h4>
              </div>
            </div>
            <div class="card-body">
              <p class="card-text">
                El Sistema de Planificación de Actividades Operativas es una herramienta diseñada para cualquier institución que necesite gestionar sus actividades de manera más organizada. Su versatilidad permite su uso tanto en organizaciones públicas como privadas. Este sistema ha sido desarrollado en colaboración, optimizando la planificación y el seguimiento de actividades operativas para mejorar la eficiencia institucional.
              </p>
            </div>
            <div class="card-footer">
              <div class="stats">
                <i class="material-icons text-success">check_circle</i>
                Versión estable y en mejora continua.
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
<?php footerAdmin($data); ?>
