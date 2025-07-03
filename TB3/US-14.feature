Feature: US-14 - Eliminar publicación de intercambio

    Como usuario
    Quiero tener la opción de eliminar una publicación de intercambio que ya no deseo ofrecer
    Para intercambiar

    Scenario: Acceso a la eliminación de una publicación de intercambio
        Given el usuario ha iniciado sesión en la aplicación
        And tiene una publicación de intercambio existente
        When accede a la opción de eliminar la publicación desde la interfaz de la aplicación
        Then el sistema le muestra una confirmación para confirmar si realmente desea eliminar la publicación
    
    Scenario: Confirmación de eliminación
        Given el usuario ha seleccionado eliminar una publicación de intercambio
        When confirma la acción de eliminación
        Then el sistema elimina la publicación de manera permanente de la plataforma y se muestra un mensaje de confirmación al usuario
    
    Scenario: Cancelación de la eliminación
        Given el usuario ha seleccionado eliminar una publicación de intercambio
        When decide cancelar la eliminación
        Then la publicación no se elimina y el sistema redirige al usuario al inicio de la aplicación