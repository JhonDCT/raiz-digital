Feature: Tiempo de respuesta óptimo del sistema
  Como agricultor
  quiero que las lecturas de sensores y las respuestas automáticas del sistema se procesen en menos de 2 segundos
  para tomar decisiones inmediatas y efectivas.

  Scenario: Procesamiento rápido de datos de sensores
    Given que los sensores envían mediciones en tiempo real
    And el sistema recibe la información
    When la aplicación procesa los datos
    Then la actualización debe mostrarse en menos de 2 segundos.

  Scenario: Respuesta ágil ante ejecución automática
    Given que el sistema detecta niveles críticos de humedad
    When activa el riego automático
    Then la acción se ejecuta sin demoras perceptibles para el usuario.

  Scenario: Manejo eficiente de múltiples solicitudes
    Given que varios agricultores usan la aplicación simultáneamente
    When el sistema procesa múltiples lecturas
    Then mantiene un rendimiento estable sin bloqueos.

  Scenario: Verificación de carga máxima tolerada
    Given que se realiza una prueba de estrés
    When el número de conexiones simultáneas alcanza el máximo esperado
    Then el sistema sigue respondiendo dentro del límite de 2 segundos.
