Feature: Funcionalidades de modo offline para el agricultor
    Como agricultor que trabaja en zonas rurales con conectividad limitada
    Quiero poder acceder a la aplicación Raíz Digital y consultar los datos más recientes de mis cultivos sin necesidad de internet
    Para seguir tomando decisiones informadas incluso cuando no tenga conexión disponible

    Scenario: Acceso offline a la información más reciente
        Given que el agricultor ha iniciado sesión previamente en la aplicación
        And su dispositivo no cuenta con conexión a internet
        When accede a la sección de "Mis Cultivos"
        Then el sistema debe mostrar los últimos datos sincronizados (humedad, temperatura, pH)
        And debe mostrar la fecha y hora de la última actualización

    Scenario: Sincronización automática al recuperar conexión
        Given que el agricultor estuvo trabajando en modo offline
        And el dispositivo recupera conexión a internet
        When la aplicación detecta la red disponible
        Then el sistema debe sincronizar automáticamente los nuevos datos del sensor
        And debe actualizar las gráficas en tiempo real

    Scenario: Notificación de activación del modo offline
        Given que el agricultor utiliza la aplicación en campo
        And pierde la señal de internet durante el monitoreo
        When ocurre la desconexión
        Then el sistema debe mostrar el mensaje "Modo offline activado"
        And debe indicar que las funciones se limitan a la visualización de datos almacenados

    Scenario: Almacenamiento de notas en modo offline
        Given que el agricultor registra manualmente observaciones o notas durante el modo offline
        And la aplicación aún no puede sincronizar con el servidor
        When el agricultor guarda la información
        Then el sistema debe almacenar los datos localmente
        And debe enviarlos al servidor de Raíz Digital cuando la conexión se restablezca