Feature: Activación automática del riego
  Como agricultor
  quiero que el sistema active automáticamente el riego cuando la humedad sea baja
  para optimizar el uso de agua y evitar pérdidas por sequedad.

  Scenario: activacion automatica por baja humedad
    Given que la humedad del suelo esta por debajo del 30%
    And los sensores envian los datos al sistema
    When se procesan las lecturas
    Then el sistema activa el riego automaticamente

  Scenario: detencion automatica al alcanzar el nievl optimo
    Given que el riego automatico esta activado
    And la humedad alcanza el nivel optimo
    When el sistema procesa la nueva lectura
    Then el riego se detiene automaticamente

  Scenario: alerta por falla en la bomba de agua
    Given que el sistema intenta activarel riego
    And la bomba de agua no responde
    When ocurre el fallo
    Then se muestra una alerta al agricultor indicando el error

  Scenario: cambio de modo automatico a manual
    Given que el agricultor activa el modo manual
    And el sistema se encuentra en modo automatico
    When selecciona "cambiar a manual"
    Then el sistema desactiva el control automatico y permite control manual

