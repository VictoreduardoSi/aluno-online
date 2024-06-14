-- Primeiro, criamos a coluna tipo na tabela funcionarios, se não existir
ALTER TABLE funcionarios ADD COLUMN tipo VARCHAR(20);

-- Em seguida, criamos a trigger function para verificar a idade
CREATE OR REPLACE FUNCTION verificar_idade_funcionario()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.idade < 18 THEN
        NEW.tipo = 'Menor Aprendiz';
    ELSE
        NEW.tipo = 'Funcionário';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Finalmente, criamos a trigger que chama a função antes de qualquer inserção na tabela funcionarios
CREATE TRIGGER trigger_verificar_idade_funcionario
BEFORE INSERT ON funcionarios
FOR EACH ROW
EXECUTE FUNCTION verificar_idade_funcionario();
