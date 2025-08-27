<main class="container ">
    <section class="container-box">
        <div class="titulo">
            <h1>Novo veiculo</h1>
        </div>
        <form action="<?= PAGE_POST ?>" method="POST">
            <div class="container-input">
                <label for="placa_veiculo">Placa:</label>
                <input type="text" minlength="8"  maxlength="8"  placeholder="Digite a placa do veiculo EX: AAA-0000" required name="placa_veiculo" id="placa_veiculo">
            </div>
            <div class="container-input">
                <label for="descricao_veiculo">Descrição:</label>
                <textarea name="descricao_veiculo" placeholder="Digite uma descrição EX:VEICULO DE AUXILIO - GOL CINZA" required id="descricao_veiculo"></textarea>
            </div>
            </div>
                <div class="container-input">
                <label for="lugares">Capacidades(Lugares):</label>
                <input type="number"   minlength="1" maxlength="100" required name="lugares" id="lugares">
            </div>
            <div class="container-input">
                <label for="id_categoria">Categoria:</label>
                <select  name="id_categoria" id="id_categoria" required>
                    <option value="" >Selecionar categoria</option>
                    <?php foreach ($categorias as $categoria):?>
                        <option value="<?=$categoria['id_categoria']?>">(<?=$categoria['status_categoria']?>) - <?=$categoria['nome_categoria']?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="container-input">
                <label for="id_vaga">Vaga na garagem:</label>
                <select  name="id_vaga" id="id_vaga" required>
                    <option value="" >Selecione uma vaga</option>
                    <?php foreach ($vagasDisponiveis as $vaga):?>
                        <option value="<?=$vaga['id_vaga']?>">Vaga:(<?=$vaga['numero_vaga']?>) - <?=$vaga['descricao_vaga']?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <input type="Submit" value="Salvar & Cadastrar">
        </form>
    </section>
</main>