Feature: Análisis histórico de sensores
  Como agricultor
  quiero consultar el historial de mediciones de mis sensores
  para analizar cómo han variado las condiciones del cultivo a lo largo del tiempo.

  Scenario: Filtrado por fecha
    Given que el sistema almacena datos históricos de sensores
    When el usuario selecciona un rango de fechas
    Then se muestran solo los registros correspondientes a ese rango
    And el usuario puede navegar entre días, semanas o meses.

  Scenario: Visualización gráfica
    Given que el usuario selecciona el parámetro de humedad o temperatura
    When elige “ver gráfico”
    Then el sistema muestra una gráfica de línea con la evolución del valor en el tiempo
    And permite identificar los picos o caídas más importantes.

  Scenario: Exportación de datos
    Given que el usuario consultó un historial
    When presiona “exportar”
    Then el sistema genera un archivo descargable en formato Excel o PDF
    And este incluye fecha, hora, valor y sensor asociado.

  Scenario: Comparación entre sensores
    Given que el usuario tiene múltiples sensores en un mismo cultivo
    When selecciona “Comparar sensores”
    Then el sistema muestra un gráfico con las lecturas simultáneas
    And permite identificar variaciones entre zonas del cultivo.
