Feature: US-17 - Visualizar el perfil del usuario que publique un producto

    Como usuario
    Quiero visualizar el perfil de la persona que haya publicado un intercambio
    Para poder obtener información detallada de su confiabilidad

    Scenario: Acceso al perfil del creador de la publicación
        Given el usuario se encuentra en la publicación de su interés
        When hace clic al recuadro que muestra el perfil del autor de la publicación
        Then la aplicación mostrará lo dirigirá al perfil del creador de la publicación
    
    Scenario: Visualizar el datos de otro usuario
        Given el usuario haya accedido al perfil de otro usuario
        When sea dirigido a su perfil
        Then podrá visualizar todos los productos que realizo y las reseñas echas por otros usuarios con su respectiva valoración