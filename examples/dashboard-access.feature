Feature: Dashboard access

    @Smoke
    Scenario: Viewer opens an existing dashboard in read-only mode
        Given I load the application as viewer
        Then the dashboard list is visible
        And the viewer row action menu on "Daily Performance" has read-only options
        When I open "Daily Performance" with default parameters
        Then the dashboard content loads correctly

    @Regression
    Scenario Outline: Role-specific dashboard actions are correct
        Given I load the application as <role>
        Then the dashboard controls are correct for <role>

        Examples:
            | role   |
            | viewer |
            | editor |
            | admin  |

    @Regression
    Scenario: Editor can create and delete an owned dashboard
        Given I load the application as editor
        When I create a new dashboard with a unique test name
        Then the new dashboard appears in the dashboard list
        When I delete the dashboard
        Then the dashboard is no longer visible

    @CrossBrowser
    Scenario: Admin dashboard action entry points render across browsers
        Given I load the application as admin
        Then the dashboard list is visible
        And privileged dashboard action entry points are visible

