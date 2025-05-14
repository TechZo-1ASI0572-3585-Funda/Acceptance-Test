Feature: US19 - Ver la información detallada de un producto publicado

  Como usuario de la aplicación
  Quiero poder ver la información completa de un producto en el que estoy interesado
  Para poder decidir si quiero guardarlo en mis favoritos o proponer un intercambio

  Scenario: Ver la información detallada del producto
    Given he seleccionado una publicación de un objeto
    When se me abre la pantalla de información del artículo
    Then debo poder ver los siguientes detalles del producto:
      | Imagen del objeto          | (e.g., Chocolate MrBeast Bar) |
      | Valor aproximado del objeto | (e.g., 10 USD)               |
      | Nombre del usuario         | (e.g., Usuario123)           |
      | Calificación del usuario   | (e.g., 4.5 estrellas)        |
      | Título del producto        | (e.g., Chocolate MrBeast Bar)|
      | Descripción del producto   | (e.g., Delicioso chocolate de cacahuate) |
      | Ubicación aproximada       | (e.g., Lima, Perú)           |
      | Artículos que le interesa recibir a cambio | (e.g., Reloj Inteligente) |

  Scenario: Ver más información del usuario que publicó el producto
    Given estoy visualizando la información del producto
    When selecciono el nombre o la imagen del usuario que lo publicó
    Then se me redirigirá a una pantalla con más información sobre ese usuario
    And debo poder ver su perfil, su calificación general y sus reseñas recibidas

  Scenario: Guardar el producto en mis favoritos
    Given estoy visualizando la información del producto
    When selecciono el ícono de favoritos (corazón)
    Then el objeto se guardará en mi lista de favoritos
    And el ícono de corazón cambiará para indicar que el producto ya está guardado

  Scenario: Proponer un intercambio
    Given estoy visualizando la información del producto
    When selecciono el botón "Intercambiar"
    Then se me redirigirá a una pantalla donde podré hacer una oferta de intercambio
    And podré seleccionar el objeto que quiero ofrecer a cambio del artículo publicado
