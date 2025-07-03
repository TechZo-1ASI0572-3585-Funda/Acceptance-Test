Feature: TS-04 - Microservicios de Intercambio

    Como desarrollador que configura la arquitectura de la plataforma
    Quiero contar con un microservicio que gestione intercambios y reseñas
    Para administrar eficazmente la información relacionada con las transacciones de intercambios entre usuarios

    Scenario: Ver los intercambios de un usuario
        Given el microservicio cuenta con el endpoint GET /api/v2/exchanges/userOwn/{userId}
        When se realiza una solicitud para obtener los intercambios de un usuario
        Then el sistema devuelve una lista con todos los intercambios del usuario
        And responde con estado 200
    
    Scenario: Cambiar el estado de un intercambio
        Given  el endpoint PUT /api/v2/exchanges/status/{exchangeId} está habilitado
        When se realiza una solicitud para cambiar el estado de un intercambio
        Then el sistema actualiza el estado del intercambio
        And responde con estado 200 y los detalles del intercambio actualizado
    
    Scenario: Eliminar un intercambio
        Given el endpoint DELETE /api/v2/exchanges/delete/{exchangeId} está disponible
        When se solicita eliminar un intercambio
        Then el sistema elimina el intercambio de la plataforma
        And responde con estado 200 de confirmación
    
    Scenario: Ver los intercambios finalizados de un usuario
        Given el endpoint GET /api/v2/exchanges/finished/{userId} está habilitado
        When se realiza una solicitud para obtener los intercambios finalizados de un usuario
        Then el sistema devuelve una lista de intercambios que han sido completados
        And responde con estado 200
    
    Scenario: Crear un nuevo intercambio
        Given el endpoint POST /api/v2/exchanges está habilitado
        When se envía una solicitud para crear un nuevo intercambio
        Then el sistema registra el intercambio en la plataforma
        And responde con estado 201 y los detalles del intercambio creado
    
    Scenario: Ver las reseñas del usuario al que se realizó el intercambio
        Given el endpoint GET /api/v2/reviews/user-receptor/{userId} está habilitado
        When se realiza una solicitud para obtener las reseñas de un usuario que recibió un intercambio
        Then el sistema devuelve las reseñas relacionadas con ese usuario
        And responde con estado 200
    
    Scenario: Dejar una reseña a un usuario que intercambió
        Given el endpoint POST /api/v2/reviews está habilitado
        When se envía una solicitud para dejar una reseña a un usuario con el que se realizó un intercambio
        Then el sistema crea la reseña asociada
        And responde con estado 201 y los detalles de la reseña creada
    
    Scenario: Eliminar una reseña
        Given el endpoint DELETE /api/v2/reviews/delete/{reviewId} está disponible
        When se solicita eliminar una reseña por su ID
        Then el sistema elimina la reseña de la plataforma
        And responde con estado 200 de confirmación