Feature: Visualización de datos en tiempo real
  Como agricultor
  Quiero ver los valores en tiempo real de los sensores
  Para asegurarme de que las condiciones sean adecuadas para el cultivo

  Scenario: Mostrar valores actualizados automáticamente
    Given que el agricultor está en la pantalla de monitoreo
    And el sistema está conectado a los sensores
    When se reciben nuevos datos del sensor
    Then los valores visualizados deben actualizarse sin recargar la pantalla
    And deben mostrarse en el gráfico en tiempo real

  Scenario: Mostrar alerta visual si un valor es crítico
    Given que el agricultor observa los indicadores de temperatura y humedad
    When un valor está fuera del rango definido
    Then el sistema debe resaltar el indicador en color rojo
    And mostrar un mensaje de advertencia
