# AI-Generated Test Review Checklist

Use this checklist before approving AI-assisted test changes.

## Intent

- [ ] The feature file matches the approved brief.
- [ ] The test proves a business behavior, not just UI presence.
- [ ] Assertions have not been softened to make the test pass.
- [ ] Out-of-scope behavior has not been added by the generator.
- [ ] Role and permission expectations are explicit.
- [ ] Relevant prior briefs were checked for terminology drift, repeated ambiguity, or role-matrix inconsistency.
- [ ] Prior briefs were used as context, not as authority over the current approved brief.
- [ ] Rejected assumptions are recorded so they are not regenerated later.

## Coverage

- [ ] Smoke coverage validates the critical path only.
- [ ] Regression coverage includes the required role matrix.
- [ ] Cross-browser coverage is limited to representative rendering and JavaScript risk.
- [ ] Negative or restricted-access behavior is covered where required.

## Architecture

- [ ] Feature files remain business-readable.
- [ ] Step definitions orchestrate flow and assertions.
- [ ] Page objects encapsulate locators and reusable interactions.
- [ ] Environment access is centralized.
- [ ] No secrets are hardcoded.
- [ ] No direct locator logic leaks into high-level step definitions.

## Stability

- [ ] Test data is unique or safely reusable.
- [ ] Tests can run in parallel without corrupting shared state.
- [ ] Locators prefer roles, labels, test IDs, or stable app-specific markers.
- [ ] Waits are based on application readiness signals.
- [ ] Retries do not hide deterministic failures.
- [ ] Data-dependent false positives are handled by isolating or varying data, not by changing assertions prematurely.

## CI

- [ ] The test can run headless.
- [ ] The test does not depend on local `.env` values in CI.
- [ ] Failure artifacts are available through trace, screenshot, video, or reporting.
- [ ] CI failure classification is clear: implementation drift, environment issue, requirement mismatch, product defect, or flaky/no-root-cause.
- [ ] Data/state sensitivity is considered before changing test intent or assertions.

## Self-Healing Boundaries

- [ ] The healer only changed execution mechanics.
- [ ] The healer did not remove or weaken assertions.
- [ ] The healer did not change scenario intent.
- [ ] The healer stopped after the agreed fix-attempt limit.
- [ ] Flaky/no-root-cause failures were escalated for investigation instead of patched indefinitely.
- [ ] Healer output was reviewed as a diff before commit.
- [ ] The healer did not auto-commit, auto-push, or auto-create a pull request.
- [ ] Genuine product defects remain visible.
- [ ] Requirement changes are cascaded through brief, plan, and implementation.

## Success Criteria

- [ ] Generated tests can be reviewed without major rewrite.
- [ ] Human review time is tracked or estimated.
- [ ] Flaky rate is monitored after generated tests are merged.
- [ ] Token/runtime/review cost is visible enough to decide whether the workflow is worth scaling.

