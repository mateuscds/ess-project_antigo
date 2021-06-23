Feature: Buscar uma dúvida
        
    As a : Aluno
    I want to: Buscar uma duvida existente
    So that: Eu possa verificar a resposta.

Scenario: Busca de uma dúvida existente.
			Given Eu estou na página “Sistema de Dúvidas”
			And Tenho uma dúvida com título “O que são stakeholders?” 
	        And Tenho uma dúvida com título “Qual diferença entre requisitos funcionais e não funcionais?” 
			When Eu insiro a busca por “O que são stakeholders?”
			And Confirmo a busca
            Then Eu continuo na página “Sistema de Dúvidas”
            And Eu consigo ver a dúvida com título “O que são stakeholders?” .

Scenario: Busca de uma dúvida inexistente.
			Given Eu estou na página “Sistema de Dúvidas”
			And Tenho uma dúvida com título “O que são stakeholders?” 
	        And Tenho uma dúvida com título “Qual diferença entre requisitos funcionais e não funcionais?” 
			When Eu insiro a busca por “O que são requisitos?”
			And Confirmo a busca
            Then Eu continuo na página “Sistema de Dúvidas”
            And Eu tenho “0” dúvidas encontradas.

Scenario: Busca de uma dúvida a partir de uma string vazia.
			Given Eu estou na página “Sistema de Dúvidas”
			And Tenho uma dúvida com título “O que são stakeholders?” 
        	And Tenho uma dúvida com título “Qual diferença entre requisitos funcionais e não funcionais?” 
			When Eu insiro a busca por “”
			And Confirmo a busca
            Then Eu continuo na página “Sistema de Dúvidas”
            And Eu tenho “0” dúvidas encontradas.
		
Scenario: Busca com erro de digitação de uma dúvida existente.
            Given Eu estou na página “Sistema de Dúvidas”
            And Tenho uma dúvida com título “O que são stakeholders?” 
            And Tenho uma dúvida com título “Qual diferença entre requisitos funcionais e não funcionais?” 
            When Eu insiro a busca por “O que são stakeholdrs”
            And Confirmo a busca
            Then Eu continuo na página “Sistema de Dúvidas”
            And Eu tenho “0” dúvidas encontradas.

Scenario.
            Given Eu estou na página “Sistema de Dúvidas”
            And Tenho uma dúvida com título “O que são stakeholders?” 
            And Tenho uma dúvida com título “Qual diferença entre requisitos funcionais e não funcionais?” 
            When Eu insiro a busca por “O que são stakeholdrs”
            And Confirmo a busca
            Then Eu continuo na página “Sistema de Dúvidas”
            And Eu tenho “0” dúvidas encontradas.