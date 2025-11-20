Feature: Lectura de datos en tiempo real
  Como agricultor
  quiero ver los valores en tiempo real de los sensores de mi cultivo
  para asegurarme de que las condiciones ambientales sean adecuadas para su crecimiento.

  Scenario: Mostrar datos en tiempo real
    Given que el usuario tiene sensores activos y vinculados
    And el sistema está recibiendo lecturas correctamente
    When el usuario abre el panel “Monitoreo en tiempo real”
    Then el sistema muestra los datos más recientes de cada sensor
    And los actualiza automáticamente cada minuto.

  Scenario: Actualización automática de lecturas
    Given que el usuario está visualizando los valores de los sensores
    When el sistema recibe nuevas lecturas
    Then los valores se actualizan sin necesidad de recargar la aplicación
    And se indica el tiempo desde la última actualización.

  Scenario: Desconexión de sensor
    Given que un sensor deja de transmitir información
    And el sistema no recibe datos durante 10 minutos
    When el usuario visualiza el panel
    Then se muestra el mensaje “Sensor desconectado”
    And se mantiene visible la última lectura registrada.

  Scenario: Cambio de cultivo monitoreado
    Given que el usuario tiene más de un cultivo registrado
    When selecciona otro cultivo en la lista
    Then el sistema actualiza los valores correspondientes a ese cultivo
    And muestra la fecha y hora de la última actualización.