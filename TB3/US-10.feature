Feature: US-10 - Visualización de artículos publicados para intercambio

    Como usuario de la aplicación de intercambio
    Quiero ver los artículos que he publicado
    Para revisar cuáles están disponibles para intercambio

    Scenario: Sin artículos publicados
        Given no he publicado ningún artículo para intercambio
        When accedo a la sección "Mis Artículos"
        Then no se mostrará ningún artículo y veré un mensaje que me invita a publicar uno
        And habrá un botón destacado que diga “+ Publicar” para agregar nuevos artículos
    
    Scenario: Con artículos publicados
        Given he publicado artículos para intercambio
        When accedo a la sección "Mis Artículos"
        Then se mostrarán los artículos que he publicado en un formato de tarjetas, con una imagen representativa, el nombre del artículo, y el estado del mismo
        And el botón “+ Publicar” seguirá disponible en la parte inferior para agregar más artículos
    
    Scenario: Visualización de las opciones de un artículo
        Given he publicado uno o más artículos
        When presiono el botón de opciones (tres puntos) en una de las tarjetas de mis artículos
        Then se desplegará un menú con las posibles acciones disponibles para ese artículo (acciones futuras)