Feature: TS01 - Microservicio de Usuario 

    Como desarrollador que configura la arquitectura de la plataforma, 
    quiero contar con un microservicio que gestione usuarios, autenticación, suscripciones y planes, 
    para administrar eficazmente la información y servicios asociados a los usuarios. 


 Scenario: Registro de usuario 

    Given el microservicio tiene disponible el endpoint POST /api/v2/authentication/sign-up, 
    When se envía una solicitud con los datos del nuevo usuario, 
    Then el sistema crea la cuenta del usuario, 
    And responde con un estado 201 y los datos registrados. 

 

Scenario: Inicio de sesión de usuario 

    Given el microservicio tiene disponible el endpoint POST /api/v2/authentication/validate, 
    When se envía una solicitud con las credenciales del usuario, 
    Then el sistema valida los datos, 
    And responde con un token y estado 200 si el inicio de sesión es exitoso. 

 

Scenario: Ver todos los usuarios registrados 

    Given el endpoint GET /api/v2/users está disponible, cuando
    When se realiza una solicitud para listar todos los usuarios, 
    Then se devuelve una respuesta con estado 200, 
    And se incluye la lista completa de usuarios registrados. 

 

Scenario: Ver los detalles de una suscripción del usuario 

    Given el endpoint GET /api/v2/subscriptions/user/{id} está disponible, 
    When se consulta la suscripción de un usuario con su ID, 
    Then se obtiene la información detallada de sus suscripciones, 
    And se confirma con estado 200. 

 

Scenario: Ver las membresías o planes disponibles 

    Given el endpoint GET /api/v2/plans está disponible, 
    When se realiza una solicitud para obtener todos los planes, 
    Then el sistema devuelve una lista de planes o membresías, 
    And cada plan contiene sus características principales. 

 

Scenario: Eliminar un usuario 

    Given el endpoint DELETE /api/v2/users/{userId} está implementado (o por implementar), 
    When se solicita la eliminación de un usuario existente, 
    Then el sistema elimina al usuario del registro, 
    And responde con un estado 202 indicando éxito. 

 

Scenario: Editar datos de un usuario 

    Given los endpoints PUT /api/v2/users/edit/{userId} y PUT /api/v2/users/edit/profile/{userId} están disponibles, 
    When se envía una solicitud para actualizar los datos generales o el perfil, 
    Then el sistema modifica los datos del usuario correspondiente, 
    And devuelve un mensaje confirmando la actualización. 

 

Scenario: Cambiar la contraseña de un usuario 

    Given el endpoint PUT /api/v2/users/edit/password/{username} está disponible, 
    When se envía una solicitud con el nuevo password del usuario, 
    Then el sistema actualiza la contraseña, 
    And responde con un mensaje confirmando el cambio exitoso. 

 

Scenario: Registrar una nueva suscripción 

    Given el endpoint POST /api/v2/subscriptions está disponible, 
    When se envía una solicitud con los datos de una suscripción válida, 
    Then el sistema la registra en la cuenta del usuario, 
    And responde con estado 201 y los detalles de la suscripción. 

 

Scenario: Eliminar o desactivar una suscripción 

    Given el endpoint PUT /api/v2/subscriptions/status/{subscriptionId} permite actualizar el estado, 
    When se envía una solicitud para desactivar o dar de baja una suscripción, 
    Then el sistema marca la suscripción como inactiva, 
    And devuelve una confirmación con estado 202. 