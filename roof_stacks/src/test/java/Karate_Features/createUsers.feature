Feature: user Details

  Background:
    * def user = read('data.json')
    * url 'https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users'



  Scenario: Create User - UserId Not-null Kontrol
    And request user.data1
    When method post
    Then status 200
    Then print response
    And match response.userId == '#notnull'
    #And match response contains {data1: { "firstname" : "#string", "lastname" : "#string"}}

  Scenario: Create User - UserId Not-null Kontrol
    And request user.data1
    When method post
    Then status 200
    Then print response
    And match response.userId == '#notnull'
    * assert responseTime < 6000

    #The user is created by entering the minimum, maximum and intermediate values determined for the required fields.
    #Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios are successful.
  Scenario Outline: Create User - Min-Int-Max Values
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    * assert responseTime < 4000
    Examples:
      | fname | lname | uname |
      | ey    | gu    | eyp1    |
      | eyyup  | guzel    | eypgzl1    |
      | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel | eyyupguzeleyyupguzeleyyupguzeleyyupguzeleyyupguzel   | eypgl123eypgz |




    # The user is created by leaving the required fields blank.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Create User - Leaving Required Fields Blank
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname | uname |
      |       | guzel | eyp123|
      | eyyup |       | eyp123|
      | eyyup | guzel |       |
      |       |       | eyp123|
      | eyyup |       |       |
      |       | guzel |       |

  # User is created by entering alphanum, numeric and symbol in the firstname field.
  # Using the Scenario Outline, the same scenario is run with different values.
  # All scenarios fail.
  Scenario Outline: Create User - Firstname - Alphanum - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname | uname |
      | eyyup1| guzel | eyp123|
      | 123   | guzel | eyp123|
      |eyyup*/| guzel | eyp123|

     # User is created by entering alphanum, numeric and symbol in the lastname field.
     # Using the Scenario Outline, the same scenario is run with different values.
     # All scenarios fail.
  Scenario Outline: Create user - Lastname - Alphanum - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname | uname |
      | eyyup |guzel12| eyp123|
      | eyyup | 1234  | eyp123|
      |eyyup  |guzel*/| eyp123|

    # User is created by entering numeric and symbol in the usurname field.
  # Using the Scenario Outline, the same scenario is run with different values.
  # All scenarios fail.
  Scenario Outline: Create User - Username - Numeric - Symbol
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname | uname |
      | eyyup | guzel | 12345 |
      | eyyup | guzel | eyp*( |

    # The user is created by entering values below the determined minimum values.
   # Using the Scenario Outline, the same scenario is run with different values.
   # All scenarios fail.
  Scenario Outline: Create User - Below Minimum Value
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    Examples:
      | fname | lname | uname |
      | e     | guzel | eyp123|
      | eyyup | g     | eyp123|
      | eyyup | guzel | ey    |
      | e     | g     | eyp123|
      | e     | guzel | eyp   |
      | eyyup | g     | eyp   |
      | e     | g     | eyp   |

    # The user is created by entering values below the determined minimum values.
    # Using the Scenario Outline, the same scenario is run with different values.
    # All scenarios fail.
  Scenario Outline: Create User - Below Maximum Value
    And request user.data1
    * def fname = user.data1.firstname
    * def lname = user.data1.lastname
    * def uname = user.data1.username
    * set user.data1.firstname = '<fname>'
    * set user.data1.lastname = '<lname>'
    * set user.data1.username = '<uname>'
    When method post
    Then status 200
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
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
   # Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    And match response.userId == '#notnull'







