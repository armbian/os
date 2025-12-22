# Workflow Failure Analysis - JH Workflow Recreate

**Date**: December 22, 2024  
**Workflow**: JH Workflow Recreate  
**Run ID**: 20427702700  
**URL**: https://github.com/jethome-iot/armbian-os/actions/runs/20427702700/job/58691395104

---

## 📋 Problem Description

### Error Message

```
ℹ️  Branch automated/update-gha-workflows-20251222 already exists, checking out...
From https://github.com/jethome-iot/armbian-os
 * branch                  automated/update-gha-workflows-20251222 -> FETCH_HEAD
error: Your local changes to the following files would be overwritten by checkout:
	.github/workflows/jh-nightly-artifact-image-complete-matrix.yml
	.github/workflows/jh-stable-artifact-image-complete-matrix.yml
Please commit your changes or stash them before you switch branches.
Aborting
Error: Process completed with exit code 1.
```

### Root Cause

**Order of operations problem** in `.github/workflows/jh-workflow-recreate.yaml`:

1. ❌ **WRONG ORDER**:
   - Generate workflow files (creates uncommitted changes in working directory)
   - Try to checkout existing branch
   - **FAILS**: Git refuses to checkout because uncommitted changes would be overwritten

---

## 🔍 Analysis

### Original Workflow Steps Order

```yaml
1. Checkout armbian-build repository
2. Checkout armbian-os repository
3. Configure Git
4. Sync userpatches to build directory
5. Generate STABLE workflow → creates changes in os/.github/workflows/
6. Generate NIGHTLY workflow → creates changes in os/.github/workflows/
7. Check for changes
8. Create/Update Pull Request:
   - Try to checkout branch ❌ FAILS HERE
   - Add and commit changes
   - Push changes
   - Create/Update PR
```

### Why It Fails

When workflow generates new workflow files (steps 5-6), it creates **uncommitted changes** in the working directory.

Then, when it tries to checkout an existing branch (step 8), Git detects that:
- Files `jh-nightly-artifact-image-complete-matrix.yml` and `jh-stable-artifact-image-complete-matrix.yml` have uncommitted changes
- Checking out the branch would overwrite these changes
- Git refuses to proceed and exits with error code 1

This happens **only when the branch already exists** (e.g., on second run with same date).

---

## ✅ Solution

### Correct Order of Operations

Move the "Checkout or create feature branch" step **BEFORE** generating files:

```yaml
1. Checkout armbian-build repository
2. Checkout armbian-os repository
3. Configure Git
4. ✅ Checkout or create feature branch (NEW POSITION)
5. Sync userpatches to build directory
6. Generate STABLE workflow
7. Generate NIGHTLY workflow
8. Check for changes
9. Commit and push changes
10. Create/Update Pull Request
```

### Implementation

**Changes made to `.github/workflows/jh-workflow-recreate.yaml`**:

1. **Added new step after "Configure Git"** (line 57-75):
   ```yaml
   - name: Checkout or create feature branch
     id: branch-setup
     run: |
       cd os
       
       # Define branch name
       BRANCH_NAME="automated/update-gha-workflows-$(date +%Y%m%d)"
       echo "branch_name=$BRANCH_NAME" >> $GITHUB_OUTPUT
       
       # Check if branch exists
       if git ls-remote --heads origin "$BRANCH_NAME" | grep -q "$BRANCH_NAME"; then
         echo "ℹ️  Branch $BRANCH_NAME already exists, checking out..."
         git fetch origin "$BRANCH_NAME"
         git checkout "$BRANCH_NAME"
         git pull origin "$BRANCH_NAME"
       else
         echo "✅ Creating new branch $BRANCH_NAME..."
         git checkout -b "$BRANCH_NAME"
       fi
   ```

2. **Split "Create/Update Pull Request" into two steps**:
   - "Commit and push changes" - handles git operations
   - "Create/Update Pull Request" - handles PR creation via gh CLI

3. **Use branch name from output**:
   ```yaml
   BRANCH_NAME="${{ steps.branch-setup.outputs.branch_name }}"
   ```

---

## 📊 Benefits of This Fix

### Why This Works

1. ✅ **Branch is checked out FIRST** - working directory is on correct branch before any changes
2. ✅ **Files are generated AFTER checkout** - changes are created directly on the feature branch
3. ✅ **No uncommitted changes during checkout** - Git has nothing to complain about
4. ✅ **Works for both new and existing branches** - consistent behavior

### Additional Improvements

- **Clearer step separation**: Git operations separated from GitHub PR operations
- **Reusable branch name**: Stored in step output, used in subsequent steps
- **Better error handling**: Each step has focused responsibility

---

## 🧪 Testing Recommendations

### Test Scenarios

1. **First run** (branch doesn't exist):
   ```bash
   gh workflow run "JH Workflow Recreate" --ref main
   ```
   Expected: Creates new branch, generates files, commits, creates PR

2. **Second run same day** (branch exists):
   ```bash
   gh workflow run "JH Workflow Recreate" --ref main
   ```
   Expected: Checks out existing branch, updates files, commits, updates PR

3. **Force PR creation**:
   ```bash
   gh workflow run "JH Workflow Recreate" --ref main -f force_pr=true
   ```
   Expected: Creates/updates PR even without changes

### Verification

```bash
# Watch workflow execution
gh run watch

# Check if PR was created/updated
gh pr list --label "automated" --label "ci"

# Verify branch was updated
git fetch origin automated/update-gha-workflows-$(date +%Y%m%d)
git log origin/automated/update-gha-workflows-$(date +%Y%m%d) --oneline -5
```

---

## 📚 Technical Details

### Workflow Purpose

**"JH Workflow Recreate"** automatically regenerates GitHub Actions workflow files from templates stored in `userpatches-jethub/gha/chunks/`:

- **STABLE workflow**: Built from `gha_config_release.yaml` and `targets-stable.yaml`
- **NIGHTLY workflow**: Built from `gha_config_nightly.yaml` and `targets-full.yaml`

### Why Templates Are Used

1. **Consistency**: All JetHome workflows use same structure
2. **Maintainability**: Update chunks once, regenerate all workflows
3. **Version control**: Track template changes separately from generated files
4. **Automation**: Automatic updates when templates or configs change

### Trigger Conditions

Workflow runs:
- **Weekly**: Every Monday at 3 AM UTC (`cron: '0 3 * * 1'`)
- **On push**: When templates or configs change in `userpatches-jethub/gha/**`
- **Manual**: Via `workflow_dispatch`

---

## ✅ Resolution Status

- ✅ **Root cause identified**: Order of operations problem
- ✅ **Fix implemented**: Branch checkout moved before file generation
- ✅ **Workflow restructured**: Better separation of concerns
- ✅ **Documentation updated**: This analysis document created

### Commit Information

```
Branch: bugfix/workflow-recreate-checkout-conflict
Files changed:
  - .github/workflows/jh-workflow-recreate.yaml
  - WORKFLOW-FAILURE-ANALYSIS.md (this file)
```

---

## 🔗 Related Files

- `.github/workflows/jh-workflow-recreate.yaml` - The fixed workflow
- `userpatches-jethub/gha/chunks/` - Workflow template chunks
- `userpatches-jethub/gha/gha_config_release.yaml` - STABLE config
- `userpatches-jethub/gha/gha_config_nightly.yaml` - NIGHTLY config
- `.github/workflows/jh-stable-artifact-image-complete-matrix.yml` - Generated STABLE workflow
- `.github/workflows/jh-nightly-artifact-image-complete-matrix.yml` - Generated NIGHTLY workflow

---

**Analysis completed**: December 22, 2024  
**Fix status**: ✅ Ready for testing

