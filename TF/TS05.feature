Feature: TS05 - API Gateway

  Como desarrollador que configura la arquitectura de la plataforma,
  Quiero implementar un API Gateway que centralice el acceso a los microservicios de usuarios, productos, ONG, intercambios, entre otros,
  Para proporcionar un punto único de entrada a los servicios y mejorar la gestión y seguridad de las solicitudes.

  Scenario: Acceder a los microservicios de usuarios
    Given que el API Gateway está configurado para enrutar las solicitudes hacia el microservicio de usuarios
    When un usuario realiza una solicitud de autenticación o consulta de usuarios
    Then el API Gateway reenvía la solicitud al microservicio adecuado
    And devuelve la respuesta correspondiente al cliente

  Scenario: Acceder a los microservicios de productos
    Given que el API Gateway enruta las solicitudes al microservicio de productos
    When se solicita acceder a los productos disponibles o agregar nuevos productos
    Then el API Gateway envía la solicitud al microservicio de productos para ser procesada
    And devuelve la respuesta con la información de productos o la confirmación de creación

  Scenario: Acceder a los microservicios de ONG
    Given que el API Gateway está configurado para redirigir las solicitudes al microservicio de ONG
    When se consulta sobre las ONG disponibles o se realiza alguna gestión relacionada con donaciones
    Then el API Gateway reenvía la solicitud al microservicio de ONG
    And devuelve la respuesta con los detalles de las ONG o la confirmación de las acciones realizadas

  Scenario: Acceder a los microservicios de intercambios
    Given que el API Gateway está configurado para manejar las solicitudes de intercambios y reseñas
    When un usuario solicita ver o gestionar intercambios o dejar una reseña
    Then el API Gateway redirige la solicitud al microservicio de intercambios
    And devuelve la respuesta correspondiente

  Scenario: Gestión centralizada de errores
    Given que el API Gateway maneja todas las solicitudes hacia los microservicios
    When uno de los microservicios responde con un error
    Then el API Gateway captura ese error y lo envía al cliente de manera adecuada
    And proporciona un mensaje de error estándar para que el cliente pueda entender la falla

  Scenario: Seguridad y autenticación centralizada
    Given que el API Gateway es responsable de la autenticación centralizada
    When un usuario realiza una solicitud a cualquiera de los microservicios
    Then el API Gateway valida el token de autenticación del usuario antes de redirigir la solicitud
    And si el token es inválido, devuelve un error de autenticación

  Scenario: Acceso a todas las funcionalidades a través de un solo endpoint
    Given que el API Gateway centraliza el acceso a todos los microservicios
    When un cliente realiza una solicitud a la URL del API Gateway
    Then el API Gateway enruta la solicitud al microservicio adecuado
    And devuelve la respuesta correspondiente en un formato estándar