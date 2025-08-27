<?php
   $service = new MyService();
   $acao =  filter_input(INPUT_GET, 'acao', FILTER_SANITIZE_SPECIAL_CHARS);
   $idVeiculo =  filter_input(INPUT_GET, 'id', FILTER_SANITIZE_SPECIAL_CHARS);
   $filtro =  filter_input(INPUT_GET, 'search', FILTER_SANITIZE_SPECIAL_CHARS);

   if($acao == 'deletar' && isset($idVeiculo)){
      $service->query("DELETE FROM veiculos WHERE id_veiculo = {$idVeiculo}");
      echo 'Veículo excluido com sucesso!';
      exit;
   }

   $sql = "SELECT * FROM veiculos v ";
   $sql .= " INNER JOIN categorias c on v.id_categoria = c.id_categoria";
   $sql .= " INNER JOIN vagas vg on vg.id_vaga = v.id_vaga";

   if($filtro){
      $sql .= " and (v.placa_veiculo like '%{$filtro}%'";
      $sql .= " or v.descricao_veiculo like '%{$filtro}%')";
   }

   $veiculos = $service->query("{$sql} order by descricao_veiculo desc");
   
   $vagasDisponiveis = $service->query("SELECT * FROM vagas where id_vaga not in( SELECT id_vaga FROM veiculos)");
   