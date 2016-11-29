Feature: Criar uma aposta
        Para ter uma aposta que eu queira
        Como um usuário do sistema
        Eu gostaria de criar uma aposta
        
Scenario: Criar uma aposta com sucesso
    Given I'm logged as "sousa_giovani@hotmail.com" with "123" in the inicial page
    When I click on "novaAposta"
    And I fill the fields
    And I click on "criarBtn"
    Then I should see "Bem Vindo"