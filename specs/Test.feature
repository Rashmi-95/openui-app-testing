Feature: Can trigger all actions provided by Gherkin Generic Steps
  
  Background: Initial state
    Given  I start the app from 'ui5app/ui5app.html'

  Scenario: iClickOnNestedItem by text
    Given I can see verticalBox in Main view
     When I click on the control deeply nested inside verticalBox with text containing 'quar' in Main view
     Then I can see lblListItemClicked with text 'Square shape was clicked' in Main view
  
  Scenario: iPressBrowserBack pre-requisite
    Given I can see lblLocation in Main view
     When I click on btnNavigate in Main view
      And I press browser back
     Then I can see lblLocation with text containing 'ui5app.html' in Main view 

  Scenario: iCannotSee (item does not exist - no main view given)
     Then I cannot see btnNotExisting
  Scenario: iCannotSee (item is invisible - main view specified)
    Given I can see lstShapes in Main view
      And I click on btnHide in Main view
     Then I cannot see lstShapes in Main view
  Scenario: iCannotSee (item does not exist)
     Then I cannot see notExistingButton in Main view

