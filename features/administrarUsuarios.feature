Feature: Administrar usuários
        Para monitorar os usuários
        Como um administrador
        Eu quero visualizar seus perfis.
        
Scenario: Visualizar perfil do usuários
        Given I on the usuarios page
        When I click on "visu3"
        Then I should see "Dados do Usuário"
        
        
Scenario: Banir usuário
        Given I on the usuarios page
        When I click on "edit20"
        And I click on "usuario_status"
        And I click on "atualiza_btn"
        Then I should see "Usuario was successfully updated"