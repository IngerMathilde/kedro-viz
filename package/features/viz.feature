Feature: Viz plugin in new project
    Background:
        Given I have prepared a config file with example code

    Scenario: Execute viz with the earliest Kedro version that it supports 
        Given I have installed kedro version "0.17.5"
        And I have run a non-interactive kedro new with pandas-iris starter
        And I have installed the project's requirements
        When I execute the kedro viz command
        Then kedro-viz should start successfully

    Scenario: Execute viz with latest Kedro with lower-bound viz requirements
        Given I have installed kedro version "latest"
        And I have installed the lower-bound Kedro-viz requirements
        And I have run a non-interactive kedro new with pandas-iris starter
        And I have installed the project's requirements
        When I execute the kedro viz command
        Then kedro-viz should start successfully
    
    Scenario: Execute viz with latest Kedro
        Given I have installed kedro version "latest"
        And I have run a non-interactive kedro new with pandas-iris starter
        And I have installed the project's requirements
        When I execute the kedro viz command
        Then kedro-viz should start successfully

