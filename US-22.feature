Feature: US-22 - Visualizar el perfil de las ONGs registradas

    Como usuario de la aplicación
    Quiero tener la opción de ver todas las ONGs disponibles
    Para realizar donaciones

    Scenario: Acceso a la pestaña de ONGs
        Given el usuario se encuentra en la pestaña principal
        When pulsa a la etiqueta "ONGs"
        Then se mostrarán todas las ONGs registradas dentro de la aplicación
    
    Scenario: Ver perfil de una ONG
        Given el usuario se encuentra dentro de la pestaña "ONGs"
        When pulsa al recuadro que muestra el perfil de la ONG que desea visualizar
        Then aparecerán los datos y características de la ONG seleccionada
    
    Scenario: Donar a una ONG
        Given el usuario se encuentra en el perfil de la ONG seleccionada
        When pulsa a la opción "Donar"
        Then aparecerán las opciones de donación (objetos o dinero)
        And el usuario podrá seleccionar la opción que desea donar
        And realizar la donación
