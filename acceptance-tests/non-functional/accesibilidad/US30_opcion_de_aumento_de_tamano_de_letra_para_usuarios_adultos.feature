Feature: Configuración de accesibilidad y tamaño de letra
  Como agricultor adulto con visión reducida
  Quiero poder aumentar el tamaño del texto en la aplicación
  Para visualizar claramente los datos de humedad, temperatura y alertas sin dificultad.

  Scenario: Activación del modo de letra grande
    Given que el agricultor accede al menú de configuración
    And selecciona la opción "Aumentar tamaño de letra"
    When guarda los cambios
    Then el sistema debe aplicar el nuevo tamaño a todos los textos de la interfaz

  Scenario: Persistencia de la configuración de accesibilidad
    Given que el agricultor ha activado la opción de letra grande
    And cierra la aplicación
    When vuelve a iniciar sesión
    Then el sistema debe mantener la preferencia guardada sin necesidad de reconfigurarla

  Scenario: Compatibilidad del texto ampliado con todos los módulos
    Given que el agricultor activa el modo de letra grande
    And navega por diferentes secciones (monitoreo, riego, soporte)
    When visualiza los textos
    Then ningún elemento debe sobreponerse
    And ningún elemento debe perder legibilidad

  Scenario: Confirmación visual inmediata
    Given que el agricultor cambia el tamaño de letra
    When aplica la configuración
    Then el sistema debe mostrar una vista previa inmediata con el nuevo tamaño
    And debe permitir confirmar o revertir el cambio