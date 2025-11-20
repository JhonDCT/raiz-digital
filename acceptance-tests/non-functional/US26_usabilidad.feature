Feature: Interfaz usable
  Como agricultor
  Quiero una interfaz fácil de usar
  Para navegar sin dificultad

  Scenario: Navegación intuitiva
    Given que el agricultor abre la aplicación
    When consulta las secciones principales
    Then debe identificar fácilmente el menú, iconos y funciones

  Scenario: Accesibilidad mínima
    Given que el usuario tiene visión reducida
    When activa el modo de letra grande
    Then todos los textos deben ampliarse correctamente