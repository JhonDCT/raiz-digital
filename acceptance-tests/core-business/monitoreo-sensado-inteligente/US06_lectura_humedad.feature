Feature: Activación de riego basada en humedad del suelo
  Como agricultor
  Quiero que el sistema detecte baja humedad
  Para gestionar el riego automáticamente

  Scenario: Medición por debajo del umbral
    Given que la humedad mínima configurada es 30%
    And el sensor reporta 25%
    When el sistema evalúa la medición
    Then debe marcar la humedad como "Baja"
    And registrar el evento

  Scenario: Medición dentro del umbral
    Given que el sensor reporta 40%
    When el sistema evalúa la medición
    Then debe indicar que la humedad está en estado normal

