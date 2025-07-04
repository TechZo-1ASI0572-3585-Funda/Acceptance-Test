Feature: US-25 - Visualización de la historia de la startup

    Como usuario visitante
    Quiero poder acceder a la historia de la startup, su misión y visión desde la landing page
    Para estar más informado acerca de TechZo

    Scenario: Acceso a la historia de TechZo
        Given soy un visitante de la landing page
        When navegue por la página de inicio
        And encuentre la sección titulada "Quiénes somos"
        Then podré obtener información detallada sobre la historia de la startup
    
    Scenario: Acceso a las redes sociales de TechZo
        Given el visitante se encuentra en la landing page
        When el visitante pulsa en la etiqueta "Contáctanos"
        And encuentre los botones con los logos de las redes sociales en las que puede encontrar la página de TechZo
        And pulsa encima del botón con el logo de la red social que desee ver
        Then el usuario será redireccionado a la red social que seleccionó previamente
    
    Scenario: Acceso a información de contacto
        Given el visitante se encuentra en la parte inferior de la landing page
        When el visitante se acerque a la sección "Comunícate con nosotros"
        Then el visitante podrá observar los métodos de contacto de la startup "(01) 5718202, 992113864, 933960189, cambiazo@TechZo.pe"
