-- Primeiro, criamos a coluna ultima_atualizacao na tabela clientes, se não existir
ALTER TABLE clientes ADD COLUMN ultima_atualizacao TIMESTAMP;

-- Em seguida, criamos a trigger function para atualizar a coluna ultima_atualizacao
CREATE OR REPLACE FUNCTION atualizar_data_ultima_atualizacao()
RETURNS TRIGGER AS $$
BEGIN
    NEW.ultima_atualizacao = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Finalmente, criamos a trigger que chama a função antes de qualquer atualização na tabela clientes
CREATE TRIGGER trigger_atualizar_data_ultima_atualizacao
BEFORE UPDATE ON clientes
FOR EACH ROW
EXECUTE FUNCTION atualizar_data_ultima_atualizacao();
