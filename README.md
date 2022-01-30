# RoofStacks
## _Case Study_

[![N|Solid](https://github.com/Eyyupguzel/roofstacks/blob/main/roof_stacks/src/test/java/Karate_Features/roof.png)](https://nodesource.com/products/nsolid)


# Intro 


There are scenarios of service automations. An explanation of these scenarios and a general comment about the project have been added.Karate framework was used to write automation.While writing the cases, the name of the scenario and the description of the scenario, the risk of scenario, the precedence of the scenario, regression type, expected result,status  were determined.

[![N|Solid](https://github.com/Eyyupguzel/roofstacks/blob/main/roof_stacks/src/test/java/Karate_Features/karate.png)](https://nodesource.com/products/nsolid)

> Post method is used for Crate User service.Response time control was made to be less than 6 seconds.Checked that the userId value is not null as a result in the post methods.Controls were made considering the minimum and maximum values.Required fields were also checked.Since some cases are similar, they were written by changing the values in the same scenario with the scenario outline property.Even if we write an incorrect case because the services were mocked, status 200 was returned, so their status was determined as 200 while writing the scripts.Correct status values added as comments.

# Karate Cases - Create User
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Create user - UserId Not-null Control | If the user id is not-null, it means the user has been created. | High | High | Daily | Status Code 201 | OK |
| Create user - Response Time Control | It is checked that the response time is below a certain time. | Middle | Middle | Daily | Status Code 201 | OK |
| Create user - Minimum Value | The user is created by entering the minimum value determined for the required fields. | Middle | Middle | Weekly | Status Code 201 | OK |
| Create user - Intermediate Value | The user is created by entering the intermediate value determined for the required fields. | Middle | Middle | Weekly | Status Code 201 | OK |
| Create user - Maximum Value | The user is created by entering the maximum value determined for the required fields. | Middle | Middle | Weekly | Status Code 201 | OK |
| Create user - Leaving The Firstname Field Blank | The user is created by leaving the required firstname field blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Lastname Field Blank | The user is created by leaving the required lastname field blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Username Field Blank | The user is created by leaving the required username field blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Firstname and Lastname Fields Blank | The user is created by leaving the required firstname and lastname fields blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Firstname and Username Fields Blank | The user is created by leaving the required firstname and username fields blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Lastname and Username Fields Blank | The user is created by leaving the required lastname and username fields blank. | High | High | Daily | Status Code 400 | OK |
| Create user - Leaving The Firstname,Lastname and Username Fields Blank | The user is created by leaving the required firstname,lastname and username fields blank. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname Alphanumeric | The user is created by entering alphanumeric  in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname Numeric | The user is created by entering numeric in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname Symbol | The user is created by entering symbol in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname Alphanumeric | The user is created by entering alphanumeric  in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname Numeric | The user is created by entering numeric in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname Symbol | The user is created by entering symbol in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Username Numeric | The user is created by entering numeric in the username field. | High | High | Daily | Status Code 400 | OK |
| Create User - Username Symbol | The user is created by entering symbol in the username field. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname is Below Minimum Value | The user is created by entering a value below the minimum value in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname is Below Minimum Value | The user is created by entering a value below the minimum value in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Username is Below Minimum Value | The user is created by entering a value below the minimum value in the username field. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname and Lastname are Below Minimum Value | The user is created by entering a value below the minimum value in the firstname and lastname fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname and Username are Below Minimum Value | The user is created by entering a value below the minimum value in the firstname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname and Username are Below Minimum Value | The user is created by entering a value below the minimum value in the lastname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname,Lastname and Username are Below Minimum Value | The user is created by entering a value below the minimum value in the firstname,lastname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname is Below Maximum Value | The user is created by entering a value below the maximum value in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname is Below Maximum Value | The user is created by entering a value below the maximum value in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Create User - Username is Below Maximum Value | The user is created by entering a value below the maximum value in the username field. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname and Lastname are Below Maximum Value | The user is created by entering a value below the maximum value in the firstname and lastname fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname and Username are Below Maximum Value | The user is created by entering a value below the maximum value in the firstname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Lastname and Username are Below Maximum Value | The user is created by entering a value below the maximum value in the lastname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Firstname,Lastname and Username are Below Maximum Value | The user is created by entering a value below the maximum value in the firstname,lastname and username fields. | High | High | Daily | Status Code 400 | OK |
| Create User - Password Field Not Entered | The user is created without entering the unrequired password field.. | Low | Low | Monthly | Status Code 201 | OK |
> Get method is used for Get User List service.The result has been checked to be correct.

# Karate Cases - Get User List
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Get User List - Result Control | The user list is called and the result is checked. | Middle | Middle | Weekly | Status Code 200 | OK |

> Get method is used for Get User By Id service.The result has been checked to be correct.The get method was used for an incorrect user information.

# Karate Cases - Get User By Id
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Get User By Id | The user is created and the created user information is called.The result is compared with the entered user information. | High | High | Daily | Status Code 200 | OK |
| Get User ById - Wrong User Id | Information is called with wrong user id. | Middle | Middle | Weekly | Status Code 400 | OK |

> Delete method is used for Remove User service.Checked for deleted user.The delete method was used for an incorrect user information.

# Karate Cases - Remove User
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Remove User | The user given in the user_id variable is deleted. | High | High | Daily | Status Code 204 | OK |
| Remove User - Get The Deleted Customer | The deleted user is get again. | High | High | Daily | Status Code 400 | OK |
| Remove User - Wrong User Id | Deletion is done with wrong user information. | Middle | Middle | Weekly | Status Code 404 | OK |

> Patch method is used for Switch User Activity service.The values of true and false are used for user activity.Leaving the isActive field blank.A value other than a boolean value is used.

# Karate Cases - Switch User Activity
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Switch User Activity - True | The user's activity is updated to true. | High | High | Daily | Status Code 200 | OK |
| Switch User Activity - False | The user's activity is updated to false. | High | High | Daily | Status Code 200 | OK |
| Switch User - Leaving The isActive Field Blank  | User activity is changed without entering the isActivity field. | High | High | Daily | Status Code 400 | OK |
| Switch User - Not Boolean | User activity is changed with a non-boolean value. | High | High | Daily | Status Code 400 | OK |

> Put method is used for Crate User service.Checked that the userId value is not null as a result in the put methods.Controls were made considering the minimum and maximum values.Required fields were also checked.Since some cases are similar, they were written by changing the values in the same scenario with the scenario outline property.

# Karate Cases - Update User Info
| Scenario Name | Scenario Description | Risk | Precedence | Regression Type | Expected Result | Status |
|-------------| ------ | ------| ------ | ------| ------ | ------|
| Update User Info - UserId Not-null Control | If the user id is not-null, it means the user has been updated. | High | High | Daily | Status Code 200 | OK |
| Update User Info - Minimum Value | The user is updated by entering the minimum value determined for the required fields. | Middle | Middle | Weekly | Status Code 200 | OK |
| Update User Info - Intermediate Value | The user is updated by entering the intermediate value determined for the required fields. | Middle | Middle | Weekly | Status Code 200 | OK |
| Update User Info - Maximum Value | The user is updated by entering the maximum value determined for the required fields. | Middle | Middle | Weekly | Status Code 200 | OK |
| Update User Info - Leaving The Firstname Field Blank | The user is updated by leaving the required firstname field blank. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Leaving The Lastname Field Blank | The user is updated by leaving the required lastname field blank. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Leaving The Firstname and Lastname Fields Blank | The user is updated by leaving the required firstname and lastname fields blank. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname Alphanumeric | The user is updated by entering alphanumeric  in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname Numeric | The user is updated by entering numeric in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname Symbol | The user is updated by entering symbol in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Lastname Alphanumeric | The user is updated by entering alphanumeric  in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Lastname Numeric | The user is updated by entering numeric in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Lastname Symbol | The user is updated by entering symbol in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Username Numeric | The user is updated by entering numeric in the username field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Username Symbol | The user is updated by entering symbol in the username field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname is Below Minimum Value | The user is updated by entering a value below the minimum value in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Lastname is Below Minimum Value | The user is updated by entering a value below the minimum value in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname and Lastname are Below Minimum Value | The user is updated by entering a value below the minimum value in the firstname and lastname fields. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname is Below Maximum Value | The user is updated by entering a value below the maximum value in the firstname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Lastname is Below Maximum Value | The user is updated by entering a value below the maximum value in the lastname field. | High | High | Daily | Status Code 400 | OK |
| Update User Info - Firstname and Lastname are Below Maximum Value | The user is updated by entering a value below the maximum value in the firstname and lastname fields. | High | High | Daily | Status Code 400 | OK |

## _Karate Reports_
Karate presents our automation results as a ready report.

[![N|Solid](https://github.com/Eyyupguzel/roofstacks/blob/main/roof_stacks/src/test/java/Karate_Features/senaryo.png)](https://nodesource.com/products/nsolid)




 ✨Eyyüp Güzel✨




