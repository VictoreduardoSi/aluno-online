-- Primeiro, criamos a tabela historico_produtos, se não existir
CREATE TABLE IF NOT EXISTS historico_produtos (
    id SERIAL PRIMARY KEY,
    id_produto INT,
    nome_produto VARCHAR(255),
    preco DECIMAL,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Em seguida, criamos a trigger function para gerar uma nova entrada no historico_produtos
CREATE OR REPLACE FUNCTION gerar_historico_produtos()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO historico_produtos (id_produto, nome_produto, preco, data_atualizacao)
    VALUES (NEW.id, NEW.nome, NEW.preco, CURRENT_TIMESTAMP);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Finalmente, criamos a trigger que chama a função depois de qualquer atualização na tabela produtos
CREATE TRIGGER trigger_gerar_historico_produtos
AFTER UPDATE ON produtos
FOR EACH ROW
EXECUTE FUNCTION gerar_historico_produtos();
