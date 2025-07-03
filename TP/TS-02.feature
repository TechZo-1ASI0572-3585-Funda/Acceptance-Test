Feature: TS02 - Microservicio de Productos 

    Como desarrollador que configura la arquitectura de la plataforma, 
    Quiero contar con un microservicio que gestione productos, categorías, favoritos y ubicaciones, 
    para administrar eficazmente la publicación y visualización de productos en la aplicación. 


Scenario: Ver todos los productos disponibles 

    Given que el microservicio cuenta con el endpoint GET /api/v2/products, 
    When se realiza una solicitud para listar los productos, 
    Then el sistema devuelve una lista de todos los productos registrados, 
    And responde con estado 200. 

Scenario: Publicar un nuevo producto 

    Given que el endpoint POST /api/v2/products está disponible, 
    When se envía una solicitud con los datos del producto, 
    Then el sistema registra el nuevo producto, 
    And responde con estado 201 y los detalles del producto publicado. 

 

Scenario: Ver todas las categorías de productos 

    Given que el endpoint GET /api/v2/product-categories está habilitado, 
    When se realiza una solicitud para listar las categorías, 
    Then el sistema responde con una lista de todas las categorías existentes, 
    And devuelve un estado 200. 

 

Scenario: Ver los detalles de un producto específico 

    Given que el endpoint GET /api/v2/products/{id} está disponible, 
    When se consulta un producto por su ID, 
    Then el sistema devuelve los datos detallados del producto, 
    And responde con estado 200. 

 

Scenario: Ver los productos publicados por un usuario 

    Given que el endpoint GET /api/v2/products/user/{id} está habilitado, 
    When se consulta el listado de productos de un usuario por su ID, 
    Then se obtiene la lista completa de productos publicados por ese usuario, 
    And se devuelve con estado 200. 

 

Scenario: Editar un producto publicado 

    Given que el endpoint PUT /api/v2/products/edit/{productId} está disponible, 
    When se envía una solicitud con los nuevos datos de un producto, 
    Then el sistema actualiza la información del producto, 
    And devuelve una respuesta de éxito con estado 200. 

 

Scenario: Agregar un producto a favoritos 

    Given que el endpoint POST /api/v2/favorite-products está disponible, 
    When un usuario desea marcar un producto como favorito, 
    Then el sistema lo agrega a su lista de productos favoritos, 
    And responde con estado 201 y un mensaje de confirmación. 

 

Scenario: Eliminar un producto de favoritos 

    Given que el endpoint DELETE /api/v2/favorite-products/delete/{userId}/{favoriteProductId} está habilitado, 
    When un usuario solicita eliminar un producto de su lista de favoritos, 
    Then el sistema lo elimina correctamente, 
    And responde con estado 202. 

 

Scenario: Ver la ubicación donde fue publicado el producto 

    Given que los endpoints GET /api/v2/countries, GET /api/v2/departments y GET /api/v2/districts están disponibles, 
    When se consulta la ubicación del producto, 
    Then el sistema muestra el país, departamento y distrito donde fue publicado, 
    And cada uno se obtiene por su respectivo ID asociado. 