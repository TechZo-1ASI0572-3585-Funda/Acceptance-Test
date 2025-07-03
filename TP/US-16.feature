Feature: US16 - Visualización de objetos disponibles para intercambio

  Como usuario
  Necesito poder ver objetos disponibles para intercambio
  De manera que pueda navegar y seleccionar aquellos que me interesen

  Scenario: Visualización de objetos
    Given el usuario ha iniciado sesión en la aplicación
    And está en la sección de Explorar en la barra de navegación del aplicativo web
    When accede a dicha sección
    Then el sistema le mostrará una barra de búsqueda, un botón para filtros, un slide con las categorías disponibles y una lista de las publicaciones de los objetos, incluyendo una foto del objeto, su valor aproximado, nombre, ubicación y una breve descripción

  Scenario: Búsqueda de objetos
    Given el usuario está en la sección de Explorar
    When utiliza la barra de búsqueda para ingresar un término
    Then el sistema le mostrará los objetos que coinciden con el término buscado, mostrando los resultados con la misma información: foto, valor aproximado, nombre, ubicación y descripción
