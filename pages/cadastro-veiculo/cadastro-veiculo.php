<?php
    $service =  new MyService();

    $categorias = $service->query("SELECT * FROM categorias order by nome_categoria desc");
    
    $vagasDisponiveis = $service->query("SELECT * FROM vagas where id_vaga not in( SELECT id_vaga FROM veiculos)");