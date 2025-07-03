Feature: US-23 - Gestionar mis favoritos en la aplicación 

    Como usuario de la aplicación
    Quiero poder acceder a los objetos que he guardado como favoritos
    Para poder visualizarlos y eliminar los que ya no me interesen

    Scenario: Ver objetos guardados como favoritos
        Given estoy en mi perfil
        When selecciono la opción "Favoritos"
        Then se me mostrará una lista de los objetos que he guardado como favoritos, incluyendo la imagen del objeto, el nombre del objeto, la descripción breve del objeto y el valor aproximado del objeto
    
    Scenario: Eliminar un objeto de mis favoritos
        Given estoy visualizando la lista de favoritos
        When selecciono el botón de favoritos (ícono de corazón) de un objeto para eliminarlo
        Then se mostrará un popup de confirmación con el mensaje: "¿Estás seguro de que deseas eliminar este objeto de tus favoritos?"
        And podré seleccionar entre eliminar, que eliminará el objeto de mi lista de favoritos, o cancelar, que cerrará el popup sin realizar ninguna acción
        And si selecciono "Eliminar", el objeto desaparecerá de la lista de favoritos después de la confirmación