Feature: US01 - Registro de usuario

  Como un nuevo usuario
  Quiero completar el proceso de registro en la aplicación
  Para poder crear mi propia cuenta

  Scenario: Acceso del usuario a la página de registro
    Given el usuario ha descargado la aplicación y la ha iniciado
    When está en la sección de "Inicio de sesión"
    And elige hacer clic en el botón de "Registrarse"
    Then la aplicación desplegará la página de registro

  Scenario: Registro exitoso del usuario
    Given el usuario está en la página de registro
    When ingresa la información requerida
    And procede a hacer clic en el botón de "Registrarse"
    Then la aplicación registrará al usuario y guardará su cuenta

  Scenario: Registro del usuario con datos inválidos
    Given el usuario está en la página de registro
    When proporciona información incompleta o inválida
    And luego hace clic en el botón de "Registrarse"
    Then la aplicación mostrará un mensaje de error
    And eliminará los datos introducidos
