<main class="container layout-dubro">
  <section class="container-box filtros">
      <div class="titulo">
        <h1>Filtros</h1>
      </div>
      <form class="container-formulario">
        <div class="container-input">
          <input
            placeholder="Buscar veiculo por Descrição/Placa"
            type="search"
            name="search"
            id="search"
          />
        </div>
        <input type="submit" value="Buscar" />
      </form>
      <table class="listagem-vagas">
        <tr>
          <th>Vagas disponiveis na garagem</th>
        </tr>
        <?php foreach ($vagasDisponiveis as $vaga): ?>
        <tr id="vaga-<?=$vaga['id_vaga'] ?>">
          <td>
            (<?=$vaga['numero_vaga'] ?>) -
            <?=$vaga['descricao_vaga'] ?>
          </td>
        </tr>
        <?php endforeach; ?>
      </table>
    </div>
  </section>
  <section class="container-box listagem-veiculos">
    <div class="titulo">
      <div>
        <h1>Minha Garagem</h1>
      </div>
      <div class="container-button">
        <a href="/cadastro-veiculo">Novo cadastro</a>
      </div>
    </div>
    <?php if(empty($veiculos)): ?>
    <div class="alert alert-danger">
      Nenhum veiculo foi encontrado na sua garagem!
    </div>
    <?php else: ?>
    <table>
      <tr>
        <th>Veículo</th>
        <th>Descrição</th>
        <th>Veiculo na vaga</th>
        <th>Status atual</th>
        <th>Categoria</th>
        <th>Tipo</th>
      </tr>
      <?php foreach ($veiculos as $veiculo): ?>
      <tr id="veiculo-<?=$veiculo['id_veiculo'] ?>">
        <td><?=$veiculo['placa_veiculo'] ?></td>
        <td>
          (<?=$veiculo['numero_vaga'] ?>) -
          <?=$veiculo['descricao_vaga'] ?>
        </td>
        <td><?=$veiculo['descricao_veiculo']?></td>
        <td><?=$veiculo['status'] ?></td>
        <td><?=$veiculo['nome_categoria']?></td>
        <td><?=$veiculo['status_categoria']?></td>
        <td>
          <a href="/cadastro-veiculo/<?=$veiculo['id_veiculo']?>/alterar"
            ><i class="material-icons icon">edit</i></a
          >
        </td>
        <td>
          <a onClick="excluir(<?=$veiculo['id_veiculo'] ?>)"
            ><i class="material-icons error">delete</i></a
          >
        </td>
        <?php endforeach; ?>
      </tr>
    </table>
    <?php endif;?>
  </section>
</main>

<script>
  const excluir = (id) => {
    Swal.fire({
      title: `Excluir veiculo!`,
      text: `Deseja excluir o cadastro do veiculo?`,
      icon: "error",
      showCancelButton: true,
      confirmButtonColor: "#D48C05",
      cancelButtonColor: "#d33",
      cancelButtonText: "Cancelar",
      confirmButtonText: `Sim, pode excluir`,
      reverseButtons: true,
    }).then(async (result) => {
      if (result.isConfirmed) {
        $.ajax({
          url: `?acao=deletar&id=${id}`,
          type: "GET",
          success: function (response) {
            $(`#veiculo-${id}`).remove();

            Swal.fire({
              title: "Excluido!",
              text: response,
              icon: "success",
              confirmButtonColor: "#D48C05",
            });
          },
          error: function (xhr, status, error) {
            Swal.fire({
              icon: "error",
              title: "Erro!",
              text: "Erro ao deletar:" + error,
            });
          },
        });
      }
    });
  };
</script>
