Feature: US-21 - Cancelar una suscripción

    Como usuario
    Quiero poder cancelar mi suscripción en cualquier momento
    Para no pagar mensualmente

    Scenario: Acceso a la ventana de suscripciones
        Given el usuario desea verificar la información del estado de su suscripción
        When se dirige a la sección de configuración
        Then observará un botón que dice “Mi suscripción”
        And al pulsar podrá ver los detalles de su suscripción
    
    Scenario: Verificación de los detalles de la suscripción
        Given el usuario se encuentra en la ventana que muestra el estado de su suscripción
        Then podrá visualizar la fecha en la que se renueva su suscripción, los beneficios que obtiene
        And si es que se encuentra en un plan mensual o semianual
    
    Scenario: si es que se encuentra en un plan mensual o semianual
        Given el usuario se encuentra en la ventana que muestra el estado de la suscripción
        Then al tener ya la decisión de no continuar con el premium de CambiaZo
        And podrá pulsar a un botón rojo que dice "Anular suscripción"
        And así terminaría la suscripción que no se renovará hasta su próxima fecha