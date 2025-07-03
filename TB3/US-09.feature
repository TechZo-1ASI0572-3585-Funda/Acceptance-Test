Feature: US-09 - Eliminación de Cuenta

    Como usuario
    Quiero  tener la opción de eliminar permanentemente mi cuenta
    Para evitar que mi información persista en caso de que ya no desee utilizar la aplicación

    Scenario: Acceso a la Opción de Eliminación
        Given el usuario está registrado en la aplicación
        When desee eliminar permanentemente su cuenta
        Then la aplicación proporciona una opción claramente visible en la configuración de la cuenta para eliminar la cuenta
    
    Scenario: Confirmación de Eliminación
        Given el usuario selecciona la opción de eliminar su cuenta
        When confirma su elección
        Then la aplicación muestra un mensaje de confirmación solicitando al usuario que confirme su decisión antes de proceder con la eliminación
    
    Scenario: Eliminación Exitosa de la Cuenta
        Given el usuario ha confirmado su deseo de eliminar su cuenta
        When la confirmación es recibida por la aplicación
        Then todos los datos asociados con la cuenta del usuario son eliminados permanentemente de la base de datos y la cuenta se cierra de forma definitiva