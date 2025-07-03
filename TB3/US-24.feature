Feature: US-24 - Ver reseñas recibidas

    Como usuario de la aplicación
    Quiero poder ver las reseñas y calificaciones que he recibido
    Para tener una referencia de mi reputación en la plataforma

    Scenario: Ver la calificación general y reseñas recibidas
        Given estoy en mi perfil
        When selecciono la opción "Mis Reseñas"
        Then se me mostrará mi calificación general (promedio de estrellas), el número total de reseñas recibidas y una lista de las reseñas, mostrando el nombre del usuario que dejó la reseña, su calificación (número de estrellas) y el comentario de la reseña