Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://5f99522350d84900163b8737.mockapi.io'

  Scenario: Get a list of articles using valid endpoint
    Given path '/tech-test/articles'
    When method get
    Then status 200
    And match responseType == 'json'
    And def res = $[*].id
    And assert res.length > 0

 Scenario Outline: Get the article <id> using valid endpoint
  Given path '/tech-test/articles/<id>'
  When method get
  Then status 200
  And match responseType == 'json'
  And match response contains { id:'<id>' , title:'<title>'}
  Examples:
      | id            | title                                   |
      | 1             | title 1                                 |
      | 2             | title 2                                 |
      | 3             | £31 million pounds shortfall in economy |
      | 4656364867443 | title 4                                 |
      | 5             | title 5                                 |

  Scenario: Get a particular article which is not in the list of articles
    Given path '/tech-test/articles/6'
    When method get
    Then status 404

  Scenario: Get articles from an invalid path
    Given path '/tech-test/article'
    When method get
    Then status 404
    And match response == '"Not found"'

  Scenario Outline: Perform a POST action using valid endpoint - <path>
    Given path '<path>'
    When method post
    Then status 404
    And match response ==  '"Endpoint disabled"'
    Examples:
      | path                  |
      | /tech-test/articles   |
      | /tech-test/articles/2 |

  Scenario Outline: Perform a PUT action using valid endpoint - <path>
    Given path '<path>'
    When method put
    Then status 404
    And match response ==  '"Endpoint disabled"'
    Examples:
      | path                  |
      | /tech-test/articles   |
      | /tech-test/articles/2 |

  Scenario Outline: Perform a DELETE action using valid endpoint - <path>
    Given path '<path>'
    When method delete
    Then status 404
    And match response ==  '"Endpoint disabled"'
    Examples:
      | path                  |
      | /tech-test/articles   |
      | /tech-test/articles/2 |

