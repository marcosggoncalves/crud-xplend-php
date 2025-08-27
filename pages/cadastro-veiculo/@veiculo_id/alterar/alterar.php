<?php
    $service =  new MyService();

    $idVeiculo = $_PAR['veiculo_id'];
    
    $veiculo = $service->query("SELECT * FROM veiculos v INNER JOIN vagas vg on vg.id_vaga = v.id_vaga  where v.id_veiculo = {$idVeiculo}");

    $categorias = $service->query("SELECT * FROM categorias order by nome_categoria desc");

    $vagasDisponiveis = $service->query("SELECT * FROM vagas where id_vaga not in( SELECT id_vaga FROM veiculos)");