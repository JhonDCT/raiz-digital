Feature: Fertilización automática
  Como agricultor
  Quiero que el sistema dosifique fertilizantes
  Para mantener el equilibrio del suelo

  Scenario: Aplicar fertilización
    Given que el nivel de nutrientes es inferior al mínimo
    When el sistema evalúa la condición
    Then debe liberar la cantidad adecuada de fertilizante

  Scenario: Registrar evento
    Given que se realizó una fertilización automática
    Then el sistema debe registrar fecha, hora y cantidad aplicada
