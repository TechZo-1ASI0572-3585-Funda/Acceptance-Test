Feature: US12 - Crear publicación de intercambio

  Como usuario de la aplicación
  Quiero poder crear una nueva publicación de intercambio
  Para ofrecer un artículo que deseo intercambiar

  Scenario: Creación de una nueva publicación de intercambio
    Given el usuario accede a la opción de crear una nueva publicación de intercambio desde la interfaz de la aplicación
    When completa el formulario con los detalles del artículo que desea intercambiar, incluyendo título, descripción, categoría, condición del artículo e información relevante
    Then se le permite adjuntar imágenes del artículo

  Scenario: Publicación de intercambio creada
    Given el usuario está completando el formulario de creación de la publicación de intercambio
    When intenta enviar la publicación
    Then el sistema valida los campos del formulario
    And crea la publicación de intercambio

  Scenario: Visualización de publicación de intercambio
    Given la publicación de intercambio ha sido creada
    When el usuario accede a su perfil
    And va a la sección de mis artículos
    Then el sistema le mostrará la publicación del artículo que desea intercambiar



