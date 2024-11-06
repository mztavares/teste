CREATE PROCEDURE sp_professor(
    p_operacao IN VARCHAR2,  -- 'INSERT', 'UPDATE' ou 'DELETE'
    p_id IN INT,
    p_nome IN VARCHAR2,
    p_titulacao IN VARCHAR2,
    p_email IN VARCHAR2,
    p_telefone IN VARCHAR2,
   
) IS
BEGIN
    -- inserir novo professor
    IF p_operacao = 'INSERT' THEN
        INSERT INTO tb_professor (nome, titulacao, email, telefone) 
        VALUES (p_nome, p_titulacao, p_email, p_telefone);
        
        DBMS_OUTPUT.PUT_LINE('Professor inserido com sucesso.');

    --Atualizar um professor existente
    ELSIF p_operacao = 'UPDATE' THEN
        UPDATE tb_professor
        SET nome = p_nome, 
        	titulacao = p_titulacao, 
            email = p_email, 
            telefone = p_telefone
        WHERE id = p_id;
        
        DBMS_OUTPUT.PUT_LINE('Professor atualizado com sucesso.');
        
    --Excluir um professor
    
    ELSIF p_operacao = 'DELETE' THEN
        DELETE FROM tb_professor WHERE id = p_id;
        
        DBMS_OUTPUT.PUT_LINE('Aluno excluído com sucesso.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Operação inválida. Use "INSERT (Inserir)", "UPDATE (Alterar)" ou "DELETE (Excluir)".');

        
END IF;
END sp_professor;


	-- Tratamento de erros
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro: ' || SQLERRM);
END;
