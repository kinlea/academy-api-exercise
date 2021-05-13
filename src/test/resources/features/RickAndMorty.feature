Feature: Rick and Morty

  @RyM @ok
  Scenario Outline: Pedimos un personaje al API de Rick and Morty
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se obtuvo el response esperado en <entity> con el <jsonNameResponse>
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity    | jsonNameResponse     |
      | RyM\rq_character | 200        | character:2     | GET       | CHARACTER | RyM\rs_character_200 |

  @RyM @ok
  Scenario Outline: Pedimos un personaje al API de Rick and Morty
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then la respuesta correcta
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity    | jsonNameResponse     |
      | RyM\rq_character | 200        | character:2     | GET       | CHARACTER | RyM\rs_character_200 |

  @RyM @error
  Scenario Outline: Pedimos un error
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se obtuvo el response esperado en <entity> con el <jsonNameResponse>
    Examples:
      | jsonName         | statusCode | inputParamiters | operation | entity | jsonNameResponse     |
      | RyM\rq_character | 404        | character:9999  | GET       | ERROR  | RyM/rs_character_404 |

  @RyM @challenge
  Scenario Outline: Pedimos un episodio aleatorio
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se obtuvo el response esperado en <entity> con el <jsonNameResponse>
    Examples:
      | jsonName       | statusCode | inputParamiters | operation | entity  | jsonNameResponse   |
      | RyM\rq_episode | 200        | episode:1       | GET       | EPISODE | RyM/rs_episode_200 |

  @RyM @challenge
  Scenario Outline: Verificamos que el episodio no contenga datos nulos
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and '<inputParamiters>'
    Then se obtuvo el status code <statusCode>
    Then se verifica que el episodio aleatorio no es nulo
    Examples:
      | jsonName       | statusCode | inputParamiters | operation | entity  | jsonNameResponse   |
      | RyM\rq_episode | 200        | episode:1       | GET       | EPISODE | RyM/rs_episode_200 |