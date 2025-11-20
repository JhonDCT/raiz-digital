Feature: Gestión de fertilización automática
  Como agricultor
  quiero que el sistema dosifique automáticamente los fertilizantes según los niveles de nutrientes del suelo
  para mantener el equilibrio adecuado sin desperdiciar recursos.

  Scenario: Activación automática de fertilización por deficiencia
    Given que el sistema recibe lecturas de nutrientes
    And el nivel de nitrógeno está por debajo del límite
    When se procesa la información
    Then el sistema activa la bomba de fertilización.

  Scenario: Detención de fertilización al alcanzar niveles óptimos
    Given que la fertilización está en proceso
    And el sensor detecta que se alcanzó el nivel óptimo
    When el sistema actualiza la lectura
    Then se detiene automáticamente la dosificación.

  Scenario: Alerta por lecturas incoherentes
    Given que el sistema detecta lecturas incoherentes o erróneas
    And no puede calcular la cantidad adecuada
    When ocurre la falla
    Then muestra una alerta de revisión de sensores.

  Scenario: Actualización de parámetros de fertilización
    Given que el agricultor desea cambiar la fórmula de fertilización
    And el sistema tiene configuraciones almacenadas
    When edita los valores en la aplicación
    Then el sistema guarda los nuevos parámetros para el siguiente ciclo.
