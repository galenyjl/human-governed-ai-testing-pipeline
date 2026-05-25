# Publishing Checklist

Use this checklist before publishing the repository publicly.

## Repository

- [ ] Confirm the repository name: `human-governed-ai-testing-pipeline`
- [ ] Confirm the repository description:
  - `AI-assisted, human-governed test automation pipeline for enterprise Playwright teams.`
- [ ] Keep the repository public only after reviewing all files for company-specific names, URLs, credentials, and internal references.
- [ ] Pin the repository on the GitHub profile after publishing.

## Content Review

- [ ] README explains the idea clearly in the first screen.
- [ ] Architecture diagram renders correctly.
- [ ] Article is product-neutral and does not reference private systems.
- [ ] Sample brief is generic.
- [ ] Sample test plan is generic.
- [ ] Feature file is illustrative and not copied from private code.
- [ ] CI workflow is stored as an example template, not active `.github/workflows` automation.

## GitHub Topics

Recommended topics:

- `playwright`
- `test-automation`
- `qa-automation`
- `ai-testing`
- `bdd`
- `typescript`
- `enterprise-testing`
- `quality-engineering`

## Launch Sequence

1. Publish the GitHub repository.
2. Add the repository to GitHub profile pinned repos.
3. Publish the LinkedIn launch post from `docs/linkedin-launch-post.md`.
4. Link the LinkedIn post to the GitHub article.
5. Follow up with smaller posts:
   - Why the brief is the contract
   - Why self-healing tests must not change assertions
   - How to classify CI test failures
   - Why AI-generated tests need human review gates

## Optional Next Assets

- Add a visual carousel version of the architecture.
- Add a sample prompt for generating a brief.
- Add a sample prompt for generating a test plan.
- Add a sample prompt for reviewing generated tests.
- Add a minimal Playwright BDD skeleton in a separate branch or template repository.

