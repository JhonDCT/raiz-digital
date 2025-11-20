Feature: Lectura y monitoreo de humedad del suelo
  Como agricultor
  quiero que el sistema active automáticamente el riego cuando la humedad sea baja
  para optimizar el uso de agua y evitar pérdidas por sequedad.

  Scenario: Visualización de datos en tiempo real
    Given que el sensor de humedad está activo
    And el sistema recibe datos correctamente
    When el agricultor accede al panel de monitoreo
    Then se muestran los valores actualizados de humedad del suelo.

  Scenario: Alerta por pérdida de conexión
    Given que el sensor pierde conexión
    And el sistema no recibe nuevas lecturas
    When el agricultor abre el panel
    Then el sistema muestra el último valor registrado con una alerta de conexión.

  Scenario: Indicador de suelo seco
    Given que el nivel de humedad está por debajo del umbral mínimo
    And el sistema actualiza la lectura
    When el agricultor visualiza el tablero
    Then se muestra un indicador en color rojo con el mensaje “Suelo seco”.

  Scenario: Reporte por zonas
    Given que el agricultor selecciona una parcela específica
    And los sensores están activos
    When visualiza el reporte detallado
    Then se muestran las lecturas de humedad por zona.
