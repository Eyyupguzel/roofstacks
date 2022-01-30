Feature: createUsers

  Background:
    * def user = read('data.json')
    * url 'https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users'


    # If the user id is not-null, it means the user has been created.
  Scenario: Create User - UserId Not-null Control
    And request user.data1
    When method post
    Then status 200
   # Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'



    # It is checked that the response time is below a certain time.
  Scenario: Create User - Response Time Control
    And request user.data1
    When method post
    Then status 200
   # Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000



    #The user is created by entering the minimum, maximum and intermediate values determined for the required fields.
    #Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios are successful.
  Scenario Outline: Create User - Min-Int-Max Values
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | ja    | do    | doe   |
      | jane  | doe   | doejj |
      | janejanejanejanejanejanejanejaneja | doedoedoedoedoedoedoedoedoedoedoedoedoedoedoedoedo   | doejjdoejjdo |




    # The user is created by leaving the required fields blank.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Create User - Leaving Required Fields Blank
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      |       | doe   | doejj |
      | jane  |       | doejj |
      | jane  | doe   |       |
      |       |       | doejj |
      | jane  |       |       |
      |       | doe   |       |

  # User is created by entering alphanum, numeric and symbol in the firstname field.
  # Using the Scenario Outline, the same scenario is run with different values.
  # All scenarios fail.
  Scenario Outline: Create User - Firstname - Alphanum - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | jane1 | joe   | doejj |
      | 123   | joe   | doejj |
      |eyyup*/| joe   | doejj |

     # User is created by entering alphanum, numeric and symbol in the lastname field.
     # Using the Scenario Outline, the same scenario is run with different values.
     # All scenarios fail.
  Scenario Outline: Create user - Lastname - Alphanum - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | jane  | joe12 | doejj |
      | jane  | 1234  | doejj |
      | jane  |guzel*/| doejj |

    # User is created by entering numeric and symbol in the usurname field.
  # Using the Scenario Outline, the same scenario is run with different values.
  # All scenarios fail.
  Scenario Outline: Create User - Username - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | jane  | joe   | 12345 |
      | jane  | joe   | eyp*( |

    # The user is created by entering values below the determined minimum values.
   # Using the Scenario Outline, the same scenario is run with different values.
   # All scenarios fail.
  Scenario Outline: Create User - Below Minimum Value
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstName = '<fname>'
    * set user.data1.lastName = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | j     | joe   | doejj |
      | jane  | j     | doejj |
      | jane  | joe   | do    |
      | j     | j     | doejj |
      | j     | joe   | do   |
      | jane  | j     | do   |
      | j     | j     | do   |

    # The user is created by entering values below the determined minimum values.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Create User - Below Maximum Value
    And request user.data1
    * def fname = user.data1.firstName
    * def lname = user.data1.lastName
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000
    Examples:
      | fname | lname | uname |
      | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup | guzel | eyp123|
      | eyyup | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel | eyp123|
      | eyyup | guzel | eyyupguzel1234567    |
      | eeyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup     | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel     | eyp123|
      | eeyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup     | guzel | eyyupguzel1234567   |
      | eyyup | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel     | eyyupguzel1234567   |
      | eeyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyup | guzeleyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel     | eyyupguzel1234567   |

   # The user is created without entering the unrequired password field.
  Scenario: Create User - Password Field Not Entered
    And request user.data2
    When method post
    Then status 200
    Then print response
    And match response.userId == '#notnull'

