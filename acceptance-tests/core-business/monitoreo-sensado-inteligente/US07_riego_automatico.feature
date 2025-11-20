Feature: Activación automática del riego
  Como agricultor
  Quiero que el riego se active automáticamente con baja humedad
  Para optimizar el uso del agua

  Scenario: Activar riego
    Given que la humedad es menor al umbral configurado
    When el sistema verifica la condición
    Then debe activar el sistema de riego
    And mostrar una notificación al agricultor

  Scenario: No activar riego si ya está activo
    Given que la humedad sigue baja
    And el sistema de riego ya está funcionando
    When el sistema ejecuta la verificación
    Then no debe volver a activar el riego


