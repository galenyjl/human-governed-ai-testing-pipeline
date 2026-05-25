# Sample Test Plan

## Objective

Validate role-appropriate dashboard access and actions using a Playwright BDD framework.

## Smoke Coverage

### Scenario: Viewer opens an existing dashboard

Purpose:

- Confirm authentication works.
- Confirm dashboard list loads.
- Confirm read-only dashboard view flow works.

Assertions:

- Dashboard list is visible.
- Read-only row actions are visible.
- Privileged actions are not visible.
- Dashboard content loads after opening the item.

## Regression Coverage

### Scenario Outline: Role-specific dashboard actions

Roles:

- Viewer
- Editor
- Admin

Assertions:

- Viewer has read-only actions.
- Editor can create a dashboard.
- Admin can manage permissions.

### Scenario: Editor creates and deletes a dashboard

Assertions:

- Create action is visible.
- Dashboard can be created with a unique test name.
- Created dashboard appears in the list.
- Created dashboard can be deleted.
- Deleted dashboard no longer appears in the list.

## Cross-Browser Coverage

Representative cross-browser smoke only:

- Admin opens dashboard list.
- Admin sees privileged action entry points.

Rationale:

Cross-browser testing validates rendering and JavaScript compatibility. It does not need to repeat every role-permission assertion.

## Risks

- Shared test data can make parallel execution flaky.
- Role permissions must be clarified before generation.
- Self-healing must not change authorization expectations.

