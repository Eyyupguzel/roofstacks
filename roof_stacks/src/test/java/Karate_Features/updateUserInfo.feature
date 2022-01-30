Feature: updateUserInfo
  Background:
    * def user = read('data.json')


    # If the user id is not-null, it means the user has been updated.
  Scenario: Create User - UserId Not-null Control
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    When method post
    Then status 200
   # Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'


      #The user is updated by entering the minimum, maximum and intermediate values determined for the required fields.
    #Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios are successful.
  Scenario Outline: Update User Info - Min-Int-Max Values
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method put
    Then status 200
   # Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'

    Examples:
      | fname | lname |
      | ey    | gu    |
      | eyyup  | guzel    |
      | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel   |


    # The user is updated by leaving the required fields blank.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Update User Info - Leaving Required Fields Blank
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method put
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname |
      |       | guzel |
      | eyyup |       |
      |       |       |

  # User is updated by entering alphanum, numeric and symbol in the firstname field.
  # Using the Scenario Outline, the same scenario is run with different values.
  # All scenarios fail.
  Scenario Outline: Update user info - Firstname - Alphanum - Numeric - Symbol
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method put
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname |
      | eyyup1| guzel |
      | 123   | guzel |
      |eyyup*/| guzel |



     # User is updated by entering alphanum, numeric and symbol in the lastname field.
     # Using the Scenario Outline, the same scenario is run with different values.
     # All scenarios fail.
  Scenario Outline: Update User Info - Lastname - Alphanum - Numeric - Symbol
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method put
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname |
      | eyyup | guzel1|
      | eyyup | 123   |
      | eyyup |guzel*/|

    # The user is updated by entering values below the determined minimum values.
   # Using the Scenario Outline, the same scenario is run with different values.
   # All scenarios fail.
  Scenario Outline: Update User Info - Below Minimum Value
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method put
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname |
      | e     | guzel |
      | eyyup | g     |
      | e     | g     |

    # The user is updated by entering values below the determined minimum values.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Create user - Below Maximum Value
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    And request user.puts
    * def fname = user.puts.firstname
    * def lname = user.puts.lastname
    * set user.puts.firstname = '<fname>'
    * set user.puts.lastname = '<lname>'
    When method post
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname |
      | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup | guzel |
      | eyyup | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel |
      | eeyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup     | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel     |