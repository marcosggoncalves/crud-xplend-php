<?php
    $service = new MyService();
    
    try {
        $placa     = filter_input(INPUT_POST, 'placa_veiculo', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
        $descricao = filter_input(INPUT_POST, 'descricao_veiculo', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
        $lugares   = filter_input(INPUT_POST, 'lugares', FILTER_VALIDATE_INT);
        $categoria = filter_input(INPUT_POST, 'id_categoria', FILTER_VALIDATE_INT);
        $vaga = filter_input(INPUT_POST, 'id_vaga', FILTER_VALIDATE_INT);

        $body = [
            'placa_veiculo'     =>  $placa,  
            'descricao_veiculo' => $descricao,
            'lugares'           => $lugares,
            'id_categoria'      => $categoria,
            'id_vaga' => $vaga
        ];

        $service->insert('veiculos', $body);

        makeCb(1, 'Veículo cadastrado com sucesso!');
        
        header("Location: /");
    } catch (Exception  $th) {
        makeCb(0, "Ocorreu um erro inesperado. Tente novamente mais tarde: {$th->getMessage()}");

        header("Location: /");
    }
