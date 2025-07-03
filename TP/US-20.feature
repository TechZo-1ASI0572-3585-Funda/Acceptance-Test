Feature: US20 - Adquirir la suscripción premium

  Como usuario
  Quiero poder adquirir una suscripción premium
  Para poder obtener beneficios adicionales que mejoren mi experiencia

  Scenario: Localizar la sección para adquirir una suscripción
    Given el usuario desea adquirir una suscripción para CambiaZo
    When pulsa a la sección de configuración
    Then le aparecerán varias opciones, entre las que figura "Ser premium"
    When el usuario pulsa al botón "Ser premium"
    Then será redirigido a una nueva ventana que le mostrará las suscripciones disponibles

  Scenario: Visualizar los beneficios de la suscripción
    Given el usuario se encuentra en la ventana correspondiente sobre las suscripciones
    When pulsa a una suscripción en específico
    Then podrá ver el precio por mes de esa suscripción
    And los beneficios que incluyen cada una de estas

  Scenario: Compra de la suscripción
    Given el usuario ha decidido una suscripción de su interés
    When pulsa a "Suscribirse"
    Then se le redireccionará a una pasarela de pago para que pueda introducir su método de pago
    And procesar el pago respectivo y adquirir los nuevos beneficios
