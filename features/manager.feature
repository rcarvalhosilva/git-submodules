Feature: Manager
  In order to manage my submodules
  As a CLI
  I want to be as objective as possible

  Scenario: Initialize dependencies
    When I run `submodule init`
    Then the output should contain "Dependencies folder created!"
    And the directory "Dependencies" should exist
