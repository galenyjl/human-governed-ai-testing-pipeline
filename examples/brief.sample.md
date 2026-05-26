# Sample Approved Brief

## Story

As a dashboard user, I need access to dashboard actions based on my role so that I can only perform actions I am authorized to use.

## Business Intent

Validate that dashboard access and available actions are role-appropriate.

The purpose is not to validate every dashboard visualization. The purpose is to validate access, visibility, and permitted actions across representative roles.

## Prior Brief Context

Relevant prior briefs indicate that permission management has historically been admin-only.

Prior briefs are used as context only. The current signed-off acceptance criteria remain the authority for this work item.

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

## Rejected Assumptions

### Assumption

Editor should be able to manage dashboard permissions.

### Decision

Rejected.

### Reason

The current acceptance criteria define permission management as admin-only.

### Assumption

Cross-browser coverage should repeat the full role matrix.

### Decision

Rejected.

### Reason

Cross-browser coverage is intended to validate rendering and JavaScript compatibility using a representative privileged role. Full role coverage belongs in regression.

## Human Review Notes

Approved for smoke and regression planning.

Any future change to role permissions must update this brief before generated tests are changed.

