Feature: US-30 - Navegación en la landing page

    Como usuario visitante
    Quiero contar con un menú de navegación visible y funcional
    Para que me permita desplazarme fácilmente por las diferentes secciones del sitio web

    Scenario: Acceder a la información acerca de la startup
        Given el usuario se encuentra en la landing page
        When quiera acceder a la información acerca del equipo
        Then podré darle click a la etiqueta "¿Quiénes somos?" de la barra navegadora
        And me redireccionará rápidamente a la parte de la landing page en la que se encuentra la información correspondiente
    
    Scenario: Ver las ONGs afiliadas a CambiaZo
        Given el usuario se encuentra en la landing page
        When quiera ver qué ONGs están afiliadas con CambiaZo
        Then podré darle click a la etiqueta "ONGs" de la barra navegadora
        And me redireccionará rápidamente a la parte de la Landing Page en la que se encuentra la información correspondiente
    
    Scenario: Buscar la sección de Contacto
        Given el usuario se encuentra en la landing page
        When quiera acceder a la sección para contactarme con la startup
        Then le daré click a la etiqueta "Contáctanos" de la barra navegadora
        And me redireccionará rápidamente a la parte de la Landing Page en la que se encuentra el formulario para recibir notificaciones de CambiaZo y el pié de página en el cuál se encuentran los datos de contacto
    
    Scenario: Llegar al inicio de la landing page rápidamente
        Given el usuario se encuentra en la landing page
        When quiera acceder rápidamente al inicio de esta
        Then podré darle click a la etiqueta "Inicio" de la barra navegadora
        And me redireccionará inmediatamente a la parte superior de la landing page
