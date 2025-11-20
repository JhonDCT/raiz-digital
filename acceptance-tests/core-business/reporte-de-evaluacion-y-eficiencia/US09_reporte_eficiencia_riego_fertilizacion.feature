Feature: Reporte de eficiencia de riego y fertilización
  Como agricultor
  quiero generar reportes sobre el consumo de agua y fertilizante
  para analizar la eficiencia y mejorar la planificación del cultivo.

  Scenario: Generación de reporte mensual
    Given que existen registros de riego y fertilización
    And el agricultor solicita un reporte mensual
    When el sistema procesa los datos
    Then se genera un reporte con totales y porcentajes de uso.

  Scenario: Reporte personalizado por rango de fechas
    Given que el agricultor selecciona un rango de fechas personalizado
    And los registros están almacenados en la base de datos
    When genera el reporte
    Then se muestran los valores correspondientes al período indicado.

  Scenario: Mensaje por ausencia de datos
    Given que no existen registros en el rango seleccionado
    And el agricultor solicita un reporte
    When el sistema intenta generarlo
    Then se muestra el mensaje “No hay datos disponibles”.

  Scenario: Exportación del reporte en PDF
    Given que el agricultor visualiza el reporte
    And el sistema calcula indicadores de eficiencia
    When exporta el documento
    Then se genera un archivo PDF descargable con los resultados.
