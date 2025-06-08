Feature: US-11 - Realización de una oferta de intercambio

    Como usuario de la aplicación de intercambio
    Quiero seleccionar uno de mis artículos y enviarlo como oferta de intercambio
    Para poder ofrecerlo a cambio de otro artículo publicado por otro usuario

    Scenario: Usuario con artículos publicados para ofertar
        Given he visto un artículo que quiero intercambiar
        When presiono el botón "Ofertar"
        Then se me mostrará una lista de mis artículos disponibles para intercambio
        And podré seleccionar uno de mis artículos para ofrecer
    
    Scenario: Confirmación de oferta
        Given he seleccionado un artículo para ofrecer
        When procedo a confirmar la oferta
        Then se me mostrará una pantalla de confirmación con los detalles del artículo que estoy solicitando y el que estoy ofreciendo
        And podré presionar "Listo" para enviar la oferta
    
    Scenario: Oferta enviada con éxito
        Given he confirmado mi cuenta
        When la oferta se haya enviado correctamente
        Then veré un mensaje que dice "Oferta enviada" confirmando que mi oferta fue enviada exitosamente
        And se me notificará que el otro usuario recibirá la oferta para su consideración
    
    Scenario: Usuario sin artículos publicados
        Given presiono el botón "Ofertar"
        Then veré un mensaje que me indica que no tengo artículos publicados
        And se me dará la opción de publicar un nuevo artículo directamente desde la pantalla de la oferta, con un botón "+ Publicar"
    
    Scenario: Publicación de un nuevo artículo
        Given no tengo artículos y deseo publicar uno
        When presiono el botón "+ Publicar" desde el mensaje de que no tengo productos
        Then seré llevado a la pantalla de publicación de un artículo, donde puedo agregar los detalles del artículo (imagen, título, categoría, etc.)
        And después de publicar exitosamente el artículo, veré un mensaje de confirmación de publicación exitosa
        And podré continuar con el proceso de realizar una oferta usando el nuevo artículo publicado