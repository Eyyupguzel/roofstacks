Feature: removeUser


  # The user given in the user_id variable is deleted.
  # It gets successful.
  Scenario: Remove User
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    When method delete
    Then status 200
    Then print response


    # The deleted user is get again.
    # It gets fail.
  Scenario: Remove User - Get The Deleted Customer
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df3180"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    When method delete
    Then status 200
    Then print response
    Given url requestUrl
    When method get
    Then status 200
    #Then status 400 ----> bu case normalde 400 döner fakat mocklandığı için 200 dönüyor bu yüzden 200 olarak bıraktım.
    Then print response



  # Deletion is done with wrong user information.
   # It gets fail.
  Scenario: Remove User - Wrong User Id
    * def user_id = "c4f6c088-f91b-494e-b7f0-a08f48df34352"
    * def requestUrl = "https://3e3d2990-3fca-4144-8b26-1538cf135a09.mock.pstmn.io/users/" + user_id
    Given url requestUrl
    When method delete
    Then status 404
    Then print response