<div class="modal fade modalPermisos" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title h4">Permisos Roles de Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="col-md-12">
          <div class="tile">
            <form action="" id="formPermisos" name="formPermisos">
              <input type="hidden" id="idrol" name="idrol" value="<?= $data['idrol']; ?>" required="">
              <div class="table-responsive">
                <table class="table table-striped">
                  <thead class="thead-light">
                    <tr>
                      <th>#</th>
                      <th>Módulo</th>
                      <th>Ver</th>
                      <th>Crear</th>
                      <th>Actualizar</th>
                      <th>Eliminar</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php 
                      $no=1;
                      $modulos = $data['modulos'];
                      for ($i=0; $i < count($modulos); $i++) {
                        $permisos = $modulos[$i]['permisos'];
                        $rCheck = $permisos['r'] == 1 ? " checked " : "";
                        $wCheck = $permisos['w'] == 1 ? " checked " : "";
                        $uCheck = $permisos['u'] == 1 ? " checked " : "";
                        $dCheck = $permisos['d'] == 1 ? " checked " : "";

                        $idmod = $modulos[$i]['idmodulo'];
                    ?>
                    <tr>
                      <td><?= $no; ?>
                        <input type="hidden" name="modulos[<?= $i; ?>][idmodulo]" value="<?= $idmod ?>" required>
                      </td>
                      <td><?= $modulos[$i]['titulo']; ?></td>
                      <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" id="rCheck<?= $i ?>" name="modulos[<?= $i; ?>][r]" <?= $rCheck ?>>
                          <label class="custom-control-label" for="rCheck<?= $i ?>"></label>
                        </div>
                      </td>
                      <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" id="wCheck<?= $i ?>" name="modulos[<?= $i; ?>][w]" <?= $wCheck ?>>
                          <label class="custom-control-label" for="wCheck<?= $i ?>"></label>
                        </div>
                      </td>
                      <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" id="uCheck<?= $i ?>" name="modulos[<?= $i; ?>][u]" <?= $uCheck ?>>
                          <label class="custom-control-label" for="uCheck<?= $i ?>"></label>
                        </div>
                      </td>
                      <td>
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" id="dCheck<?= $i ?>" name="modulos[<?= $i; ?>][d]" <?= $dCheck ?>>
                          <label class="custom-control-label" for="dCheck<?= $i ?>"></label>
                        </div>
                      </td>
                    </tr>
                    <?php 
                      $no++;
                    }
                    ?>
                  </tbody>
                </table>
              </div>
              <div class="text-center">
                <button class="btn btn-success" type="submit">
                  <i class="material-icons">check_circle</i> Guardar
                </button>
                <button class="btn btn-danger" type="button" data-dismiss="modal">
                  <i class="material-icons">exit_to_app</i> Salir
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
