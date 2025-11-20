Feature: Gestión de alertas automáticas
  Como agricultor
  quiero recibir alertas cuando los valores de los sensores estén fuera de los rangos normales
  para actuar rápidamente y evitar pérdidas en mis cultivos.

  Scenario: Alerta por valor fuera de rango
    Given que el usuario configuró el tamaño del cultivo
    And el sensor envía un valor que excede los límites
    When el sistema procesa la lectura
    Then genera una alerta con el tipo de parámetro afectado
    And la muestra en la pantalla principal.

  Scenario: Notificación móvil
    Given que el usuario tiene activadas las notificaciones
    And una alerta ha sido generada
    When la alerta se registra
    Then el usuario recibe una notificación push en su dispositivo
    And esta incluye el nombre del cultivo, el valor fuera de rango y la recomendación de acción.

  Scenario: Registro de alertas en el historial
    Given que se generan varias alertas durante el día
    When el usuario accede al historial de alertas
    Then el sistema muestra una lista cronológica con tipo, hora y sensor afectado
    And permite filtrar por tipo de parámetro.

  Scenario: Confirmación de lectura de alerta
    Given que el usuario abre una alerta reciente
    When la visualiza en la app
    Then el sistema la marca como “Leída”
    And actualiza el contador de alertas pendientes.
