Feature: US-08 - Brindar reseña sobre el Intercambiador

    Como usuario intercambiador
    Quiero dejar una reseña sobre mi experiencia con el intercambiador
    Para que otros usuarios puedan leer y considerar mi opinión antes de intercambiar

    Scenario: Dejar una Reseña
        Given el usuario intercambiador ha completado un intercambio con otro usuario
        When visita la página de la experiencia de intercambio realizada
        Then el usuario encuentra una opción para dejar una reseña sobre su experiencia con el intercambiador
    
    Scenario: Visualización de Reseñas
        Given otros usuarios visitan la página de la experiencia de intercambio
        When exploran las reseñas dejadas por otros intercambiadores
        Then pueden leer y considerar las opiniones de otros usuarios antes de realizar un intercambio con ese intercambiador
    
    Scenario: Respuesta a Reseñas
        Given el usuario intercambiador ha dejado una reseña sobre su experiencia con otro intercambiador
        When el intercambiador revisado desea responder a la reseña
        Then tiene la opción de dejar una respuesta o comentario en la reseña para interactuar con el usuario que dejó la reseña