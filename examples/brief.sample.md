# Sample Approved Brief

## Story

As a dashboard user, I need access to dashboard actions based on my role so that I can only perform actions I am authorized to use.

## Business Intent

Validate that dashboard access and available actions are role-appropriate.

The purpose is not to validate every dashboard visualization. The purpose is to validate access, visibility, and permitted actions across representative roles.

## In Scope

Roles:

- Viewer
- Editor
- Admin

Workflows:

- Viewer opens an existing dashboard.
- Viewer sees read-only actions only.
- Editor can create a dashboard.
- Admin can manage dashboard permissions.

## Out of Scope

- Full visual validation of every dashboard widget
- Data accuracy validation
- Performance testing
- Mobile layout validation
- Exhaustive browser matrix

## Required Assertions

- Viewer can open an existing dashboard.
- Viewer cannot see privileged actions.
- Editor can see create action.
- Admin can see permission management action.
- Dashboard page reaches a stable loaded state.

## Test Data

Use stable seed dashboards for read-only tests.

Generated dashboards must use unique names and be cleaned up after the scenario.

## Human Review Notes

Approved for smoke and regression planning.

Any future change to role permissions must update this brief before generated tests are changed.

