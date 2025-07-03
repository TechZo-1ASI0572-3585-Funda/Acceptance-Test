Feature: US-07 - Visualización de ONGs registradas y filtrado

    Como usuario donante
    Quiero visualizar la lista de ONGs registradas y poder filtrarlas por nombre usando el buscador
    Para encontrar la ONG específica en la cual me gustaría hacer mi donación

    Scenario: Visualización por defecto de ONGs registradas
        Given el usuario donante ha accedido a la sección de ONGs registradas para donación
        When el usuario ingresa a esta sección por primera vez o no ha aplicado ningún filtro
        Then la aplicación muestra por defecto una lista de ONGs registradas con su imagen de logo, nombre, tipo de organización (ej. educación, salud), y ubicación (ej. San Borja, Lima)
    
    Scenario: Aplicación de filtros por nombre
        Given el usuario donante está en la sección de ONGs registradas para donación
        When el usuario escribe el nombre o parte del nombre de una ONG en el campo de búsqueda que se muestra en la parte superior
        And pulsa la tecla "Enter" o selecciona la opción de búsqueda
        Then la lista de ONGs se ajustará automáticamente mostrando solo aquellas cuyo nombre coincida con el término ingresado
    
    Scenario: Visualización de resultados filtrados por nombre
        Given el usuario donante ha aplicado un filtro por nombre en el buscador
        When la aplicación muestra únicamente las ONGs cuyos nombres coincidan con el término buscado
        Then el usuario podrá ver y explorar la ONG específica que busca o verificar si está registrada
