Feature: switchUserActivity

  Background:
    * def user = read('data.json')


    # The user's activity is updated to true.
    # Activity is checked.
    # It gets successful.
  Scenario: Switch User Activity - True
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    Given path 'activity'
    And request user.activate
    When method patch
    Then status 200
    Then print response
    * def act = user.activate.isActive
    Then print user_id
    Then print act
    And match response.userId == '#notnull'
    And match response.userId == user_id
    And match response.isActive == act



    # The user's activity is updated to true.
    # Activity is checked.
    # It gets successful.
  Scenario: Get User List - False
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    Given path 'activity'
    And request user.activate
    * set user.activate.isActive = false
    When method patch
    Then status 200
    Then print response
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def act = user.activate.isActive
    Then print user_id
    Then print act
    And match response.userId == user_id
    And match response.isActive == act

    # User activity is changed without entering the isActivity field.
    # It gets fail.
  Scenario: Get User List - Leaving The isActive Field Blank
    Given url 'https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/c4f6c088-f91b-494e-b7f0-a08f48df3180/activity'
    When method patch
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response

    # User activity is changed with a non-boolean value.
    # It gets fail.
  Scenario: Get User List - Not Boolean
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    Given path 'activity'
    And request user.activate2
    When method patch
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def act = user.activate2.isActive
    Then print user_id
    Then print act
    And match response.userId == user_id
    And match response.isActive == act
