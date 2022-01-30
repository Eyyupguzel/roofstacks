Feature: getUserList

  Background:
    * def user = read('data.json')
    * url 'https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/'

  # The user list is called and the result is checked.
  Scenario: Get User List
    When method get
    Then status 200
    Then print response
    * def user_id = response[0]
    * def user_id2 = response[1]
    * print user_id
    * print user_id2
    * match user_id == {"id": "c4f6c088-f91b-494e-b7f0-a08f48df3180","username": "doejj","firstName": "jane","lastName": "doe","isActive": true}
    * match user_id2 == {"id": "c3e140a4-99db-44c2-a9ea-896904745993","username": "johnthesavior","firstName": "john","lastName": "doe","isActive": false}


  # The user is created and the created user information is called.
  # The result is compared with the entered user information.
  Scenario: Get User By Id
    And request user.data2
    When method post
    Then status 200
    #Then status 201 ----> bu case normalde 201 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    * print response
    * def userid = response.userId
    * def fname = user.data2.firstName
    * def lname = user.data2.lastName
    * def uname = user.data2.username
    * print userid
    * print fname
    * print lname
    Given path userid
    When method get
    Then status 200
    And match userid == '#notnull'
    And match fname == '#string'
    And match lname == '#string'
    And match fname == response.firstName
    And match lname == response.lastName
    And match uname == response.username

  # Information is called with wrong user id.
  Scenario: Get User By Id - Wrong User Id
    And request user.data2
    Given path 21-12312
    When method get
    Then status 200
    #Then status 404 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response
    * assert responseTime < 3000


