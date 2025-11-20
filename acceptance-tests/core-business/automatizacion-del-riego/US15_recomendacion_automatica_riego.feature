Feature: Recomendación automática de riego
  Como agricultor
  quiero recibir recomendaciones automáticas de riego
  para evitar desperdiciar agua.

  Scenario: Riego sugerido
    Given que los sensores de humedad del suelo están activos
    And el agricultor consulta la recomendación de riego
    When la humedad se encuentra por debajo del umbral definido
    Then el sistema muestra la recomendación “Riegue X litros”
    And sugiere la cantidad calculada según el tipo de cultivo.

  Scenario: No regar
    Given que el nivel de humedad es adecuado
    And el agricultor revisa la sección de recomendaciones
    When el sistema procesa los valores registrados
    Then se muestra la indicación “No es necesario regar”
    And el indicador se marca en color verde.

  Scenario: Entrada manual por falta de datos
    Given que los sensores no han enviado información reciente
    And el agricultor necesita tomar una decisión de riego
    When el sistema detecta la ausencia de valores
    Then solicita que el agricultor ingrese los parámetros de forma manual
    And guarda dichos datos para la recomendación temporal.

  Scenario: Representación visual por niveles
    Given que el sistema ha generado una recomendación
    And el agricultor accede al panel de riego
    When se muestran los resultados en pantalla
    Then el sistema usa indicadores de color (verde, amarillo, rojo)
    And permite interpretar fácilmente el nivel de necesidad de riego.
