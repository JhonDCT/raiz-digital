Feature: Activación automática del sistema de riego
  Como agricultor
  quiero que el sistema active automáticamente el riego cuando la humedad sea baja
  para optimizar el uso de agua y evitar pérdidas por sequedad.

  Scenario: Activación automática por baja humedad
    Given que la humedad del suelo está por debajo del 30%
    And los sensores envían los datos al sistema
    When se procesan las lecturas
    Then el sistema activa el riego automáticamente.

  Scenario: Detención automática al alcanzar el nivel óptimo
    Given que el riego automático está activado
    And la humedad alcanza el nivel óptimo
    When el sistema procesa la nueva lectura
    Then el riego se detiene automáticamente.

  Scenario: Alerta por falla en la bomba de agua
    Given que el sistema intenta activar el riego
    And la bomba de agua no responde
    When ocurre el fallo
    Then se muestra una alerta al agricultor indicando el error.

  Scenario: Cambio de modo automático a manual
    Given que el agricultor activa el modo manual
    And el sistema se encuentra en modo automático
    When selecciona “Cambiar a manual”
    Then el sistema desactiva el control automático y permite control manual.
