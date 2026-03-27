# GitHub Actions Deployment Guide

## Current Structure Analysis

After reorganizing your website, the structure is now:

```
nilampatil26.github.io/
├── .github/workflows/
│   ├── hugo.yml              # Original (broken)
│   ├── gh-pages.yml          # Original (broken)
│   ├── hugo-fixed.yml        # Fixed for hugo-site
│   └── educenter-deploy.yml  # New for educenter
├── hugo-site/               # Original Hugo Profile site
│   ├── config.yaml
│   ├── content/
│   ├── static/
│   └── themes/hugo-profile/
├── educenter/               # New Educenter theme
│   └── exampleSite/         # Educenter example site
└── public/                  # Generated files
```

## Issues Identified

### ❌ **Broken Workflows:**
1. **`hugo.yml`** - Looks for content in root directory (now in `hugo-site/`)
2. **`gh-pages.yml`** - Wrong branch reference and paths
3. **Hugo version mismatch** - Using 0.108.0 instead of 0.123.7

### ✅ **Fixed Workflows:**
1. **`hugo-fixed.yml`** - Corrected for `hugo-site/` structure
2. **`educenter-deploy.yml`** - New workflow for Educenter site

## Deployment Options

### Option 1: Deploy Original Site (Hugo Profile)
**Branch:** `main` or `master`
**Trigger:** Push to main branch
**Site:** Your original "Nilam's Page"

### Option 2: Deploy Educenter Site
**Branch:** `educenter` 
**Trigger:** Push to educenter branch
**Site:** New education-focused site

## Setup Instructions

### For Original Site (Hugo Profile):
1. Rename `hugo-fixed.yml` to `hugo.yml`
2. Delete old workflows:
   ```bash
   rm .github/workflows/hugo.yml
   rm .github/workflows/gh-pages.yml
   mv .github/workflows/hugo-fixed.yml .github/workflows/hugo.yml
   ```

### For Educenter Site:
1. Create `educenter` branch:
   ```bash
   git checkout -b educenter
   git add .
   git commit -m "Add educenter theme"
   git push origin educenter
   ```

## GitHub Pages Settings

1. Go to Repository Settings → Pages
2. **Source:** GitHub Actions
3. **Branch:** Select appropriate branch based on workflow

## Testing Locally

Before deploying:
```bash
# Test original site
./hugo-site-run.sh

# Test educenter site  
cd educenter && ./run-local.sh
```

## Workflow Differences

| Feature | hugo-fixed.yml | educenter-deploy.yml |
|---------|----------------|---------------------|
| Hugo Version | 0.123.7 | 0.123.7 |
| Build Directory | `hugo-site/` | `educenter/exampleSite/` |
| Output Path | `hugo-site/public` | `educenter/exampleSite/public` |
| Trigger Branch | main/master | educenter |
| Concurrency Group | pages | educenter-pages |

## Next Steps

1. Choose which site to deploy
2. Update workflow files accordingly
3. Configure GitHub Pages settings
4. Test deployment
