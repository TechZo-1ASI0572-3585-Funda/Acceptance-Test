Feature: US03 - Iniciar sesión en la aplicación

  Como usuario registrado
  Quiero iniciar sesión en la aplicación
  Para poder acceder a todas sus funcionalidades

  Scenario: Acceso del usuario a la página de inicio de sesión
    Given el usuario abre la aplicación
    And no ha iniciado sesión previamente o se ha desconectado
    When el usuario seleccione el botón "Iniciar Sesión"
    Then la aplicación mostrará la página de inicio de sesión

  Scenario: Inicio de sesión exitoso del usuario
    Given el usuario se encuentra en la página de inicio de sesión
    When ingresa sus credenciales válidas
    And pulse el botón "Iniciar Sesión"
    Then el usuario será autenticado
    And dirigido a la página principal de la aplicación

  Scenario: Intento de inicio de sesión fallido
    Given el usuario está en la página de inicio de sesión
    When ingresa credenciales inválidas
    And pulse el botón "Iniciar Sesión"
    Then la aplicación mostrará un mensaje de error indicando que las credenciales son incorrectas
