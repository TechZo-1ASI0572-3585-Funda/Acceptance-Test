Feature: Gestión de intercambios

    Como usuario de la aplicación
    Quiero revisar el estado de los intercambios que he enviado, recibido o aceptado
    Para poder ver los detalles y gestionar mis transacciones de intercambio de manera eficiente

    Scenario: Revisión de intercambios enviados
        Given estoy en la pantalla de Intercambios
        When selecciono la pestaña de Enviados
        Then se me mostrará una lista de los intercambios que he enviado, junto con los artículos involucrados y el estado de cada intercambio
        And podré hacer clic en cualquiera de ellos para ver más detalles del intercambio, como los objetos que he ofrecido y el objeto que solicito
    
    Scenario: Revisión de intercambios recibidos
        Given estoy en la pantalla de Intercambios
        When selecciono la pestaña de Recibidos
        Then se me mostrará una lista de los intercambios que he recibido, donde se verán los objetos ofrecidos y solicitados en cada transacción, así como el estado actual de cada intercambio
        And podré hacer clic en cualquiera de ellos para ver más detalles del intercambio, como los artículos ofrecidos, el valor aproximado y opciones para aceptar o rechazar la oferta
    
    Scenario: Revisión de intercambios aceptados
        Given estoy en la pantalla de intercambios
        When selecciono la pestaña de Aceptados
        Then veré un resumen breve de los intercambios que ya he aceptado, junto con los artículos intercambiados
        And si hago clic en uno de ellos, podré ver más detalles de ese intercambio, como los artículos implicados, la ubicación y la posibilidad de dejar una reseña sobre el intercambio