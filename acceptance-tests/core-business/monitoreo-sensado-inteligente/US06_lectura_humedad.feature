Feature: Activación de riego basada en humedad del suelo
  Como agricultor
  quiero que el sistema active automáticamente el riego cuando la humedad sea baja
  para optimizar el uso de agua y evitar pérdidas por sequedad.

  Scenario: visualizacion de datos en tiempo real
    Given que el sensor de humedad esta activo
    And el sistema recibe datos correctamente
    When el agricultor accede al panel de monitore
    Then se muestran los valores actualizados de humedad del suelo

  Scenario: alerta por perdida de conexion
    Given que el sensor pierde conexion
    And el sistema no recibe nuevas lecturas
    When el agricultor abre el panel
    Then el sistema muestra el ultimo valor registrado con una alera de conexion
  
  Scenario: indicador de suelo seco
    Given que el nivel de humedad esta por debajo del umbral minimo
    And el sistema actualiza la lectura
    When el agricultor visualiza el tablero
    Then se muestra un indicador en color rojo con el mensaje "suelo seco"

  Scenario: reporte por zonas
    Given que el agricultor selecciona una parcela especifica
    And los sensores estan activos
    When visualiza el reporte detallado
    Then se muestran las lecturas de humedad por zona
