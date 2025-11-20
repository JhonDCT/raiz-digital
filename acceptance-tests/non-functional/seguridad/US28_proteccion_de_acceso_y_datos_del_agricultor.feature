Feature: Seguridad de acceso y protección de datos
  Como agricultor
  Quiero que mi información personal y las configuraciones del sistema estén protegidas
  Para evitar accesos no autorizados y pérdida de datos

  Scenario: Autenticación segura
    Given que el agricultor intenta iniciar sesión
    And las credenciales ingresadas son válidas
    When el sistema verifica la identidad del usuario
    Then se debe conceder acceso mediante una conexión cifrada

  Scenario: Bloqueo ante intentos fallidos
    Given que un usuario ingresa contraseñas incorrectas repetidamente
    When supera el límite de tres intentos fallidos
    Then el sistema debe bloquear temporalmente la cuenta por motivos de seguridad

  Scenario: Encriptación de datos sensibles
    Given que el agricultor guarda información de sensores o datos de su perfil
    When el sistema procede a almacenar dichos datos
    Then estos deben ser encriptados antes de guardarse en la base de datos

  Scenario: Cierre automático de sesión inactiva
    Given que el agricultor no interactúa con la aplicación por un periodo prolongado
    When se cumple el límite de inactividad de sesión de 10 minutos
    Then el sistema debe cerrar automáticamente la sesión y requerir reautenticación
