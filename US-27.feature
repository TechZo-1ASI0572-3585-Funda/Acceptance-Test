Feature: US-27 - Acceder a un formulario para llenar mis datos de contacto y recibir noticias relacionadas con CambiaZo

    Como usuario visitante
    Quiero tener la opción de llenar un formulario con mi información de contacto, a través de la landing page
    Para recibir noticias y actualizaciones relevantes de CambiaZo

    Scenario: Información en el formulario
        Given soy un usuario interesado en CambiaZo que desea llenar el formulario de contacto
        When navegue por la landing page
        Then encontraré una sección que contendrá un formulario
    
    Scenario: Envío de formulario con datos completos
        Given me encuentro en la sección del formulario de la landing page
        When termine de completar mi información de contacto
        Then debo darle click al botón de "Enviar"
        And si he llenado todos los campos correspondientes, me saldrá un mensaje de registro exitoso
    
    Scenario: Envío de formulario con datos incompletos
        Given me encuentro en la sección del formulario de la landing page
        When desee enviar el formulario con casillas en blanco
        Then me saldrá un mensaje indicando que hay casillas que faltan completar
