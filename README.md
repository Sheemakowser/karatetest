# Sky QA Assignment

## What this does
 This project will run Gherkin test (Karate framework) that will test the Articles
 
## Running the Tests

Run the TestRunnner java class which has been created in this below path, 
\src\test\java\articles\TestRunner.java

## Failing Test Scenarios
As per the requirement provided, 
the expected statuscode for below test scripts was 404 
but the actual statuscode returned was 400. So the below tests would fail while running this suite

Perform a POST action using valid endpoint
(path - /tech-test/articles/2 )

Perform a PUT action using valid endpoint
(path -	/tech-test/articles  )

Perform a DELETE action using valid endpoint
(path- 	/tech-test/articles  )
