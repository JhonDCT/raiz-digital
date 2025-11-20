Feature: Fertilización automática
  Como agricultor
  quiero que el sistema dosifique automáticamente los fertilizantes según los niveles de nutrientes del suelo
  para mantener el equilibrio adecuado sin desperdiciar recursos.

  Scenario: activacion automatica de fertilizacion por deficiencia
    Given que el sistema recibe lecturas de nustrientes
    And el nivel de nitrogeno esta por debajo del limite
    When se procesa la informacion
    Then el sistema activa la bomba de fertilizacion
    
  Scenario: deteccion de fertilizacion al alcanzar niveles optimos
    Given que la fertilizacion esta en proceso
    And el sensor detecta que se alcanzo el nivel optimo
    When el sistema actualiza la lectura
    Then se detiene automaticamente la dosificacion

  Scenario: alerta por lecturas incoherentes
    Given que el sistema detecta lecturas incoherentes o erroneas
    And no puede calcular la cantidad adecuada
    When ocurre la falla
    Then muestra una alerta de revision de sensores

  Scenario: actualizacion de parametros de fertilizacion
    Given que el agricultor desea cambiar la formula de fertilizacion
    And el sistema tiene configuraciones almacenadas
    When edita los valores en la aplicacion
    Then el sistema guarda los nuevos parametros para el siguiente ciclo
