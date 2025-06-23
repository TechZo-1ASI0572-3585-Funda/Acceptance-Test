Feature: TS-03 - Microservicio de ONGs

    Como desarrollador que configura la arquitectura de la plataforma
    Quiero contar con un microservicio que gestione ONGs, sus categorías, proyectos y redes sociales
    Para administrar eficazmente la información y servicios asociados a las ONGs y facilitar la colaboración con ellas

    Scenario: Ver todas las ONGs disponibles
        Given el microservicio cuenta con el endpoint GET /api/v2/donations/ongs
        When se realiza una solicitud para obtener todas las ONGs
        Then el sistema devuelve una lista con todas las ONGs disponibles
        And responde con estado 200
    
    Scenario: Crear una nueva ONG
        Given el endpoint POST /api/v2/donations/ongs está habilitado
        When se envía una solicitud para crear una nueva ONG
        Then el sistema registra la ONG
        And responde con estado 201 y los detalles de la ONG creada
    
    Scenario: Editar una ONG existente
        Given el endpoint PUT /api/v2/donations/ongs/edit/{ongId} está disponible
        When se envía una solicitud con los datos actualizados de una ONG
        Then el sistema actualiza la información de la ONG
        And responde con estado 200 y los detalles actualizados de la ONG
    
    Scenario: Ver los detalles de una ONG por su ID
        Given el endpoint GET /api/v2/donations/ongs/{id}/details está habilitado
        When se consulta una ONG por su ID
        Then el sistema devuelve los detalles completos de la ONG
        And responde con estado 200, incluyendo el número de cuentas, proyectos, redes sociales, horarios de atención, categoría y más
    
    Scenario: Buscar ONGs por letras (filtro)
        Given el endpoint GET /api/v2/donations/ongs/search/{letters} está disponible
        When se realiza una búsqueda de ONGs mediante un filtro de letras
        Then el sistema devuelve las ONGs que coinciden con la búsqueda
        And responde con estado 200
    
    Scenario: Ver ONGs por categoría
        Given el endpoint GET /api/v2/donations/ongs/category/{categoryId} está habilitado
        When se consulta por ONGs en una categoría específica
        Then el sistema devuelve una lista de ONGs que pertenecen a esa categoría
        And responde con estado 200
    
    Scenario: Eliminar una ONG
        Given el endpoint DELETE /api/v2/donations/ongs/delete/{id} está disponible
        When se solicita eliminar una ONG por su ID
        Then el sistema elimina la ONG de la plataforma
        And responde con estado 200
    
    Scenario: Ver todas las categorías de ONGs
        Given el endpoint GET /api/v2/donations/category-ongs está disponible
        When se realiza una solicitud para obtener todas las categorías de ONGs
        Then el sistema devuelve una lista de todas las categorías
        And responde con estado 200
    
    Scenario: Crear una nueva categoría de ONG
        Given el endpoint POST /api/v2/donations/category-ongs está habilitado
        When se envía una solicitud para crear una nueva categoría
        Then el sistema agrega la nueva categoría
        And responde con estado 201 y la categoría creada
    
    Scenario: Eliminar una categoría de ONG
        Given el endpoint DELETE /api/v2/donations/category-ongs/delete/{id} está disponible
        When se solicita eliminar una categoría de ONG
        Then el sistema elimina la categoría de la plataforma
        And responde con estado 200