# Hugo Profile Site Local Development

## Quick Start

### 1. Run the Hugo Profile Site
```bash
./hugo-site-run.sh
```

### 2. Manual Server Start
```bash
cd hugo-site
hugo server --buildDrafts --bind=0.0.0.0 --port=1314 --disableFastRender
```

## What the Script Does

- ✅ Checks if Hugo is installed
- ✅ Verifies hugo-site directory structure
- ✅ Validates hugo-profile theme exists
- ✅ Displays Hugo version and site info
- ✅ Starts development server with optimal settings
- ✅ Uses port 1314 (different from educenter's 1313)
- ✅ Binds to 0.0.0.0 for network access
- ✅ Builds drafts, future, and expired content
- ✅ Disables Fast Render for full rebuilds

## Access Your Site

- **Local URL**: http://localhost:1314
- **Network URL**: http://0.0.0.0:1314 (accessible from other devices)

## Site Features

This is your original **Hugo Profile** site with:
- 📱 Mobile-first responsive design
- 🎨 Light/dark theme support
- 📝 Blog functionality
- 👤 Personal portfolio sections
- 🔗 Social links integration
- 📧 Contact forms

## Port Configuration

- **Hugo Profile Site**: Port 1314
- **Educenter Site**: Port 1313
- **No conflicts** between the two sites

## Stop Server

Press `Ctrl+C` in the terminal to stop the server.

## Site Structure

```
hugo-site/
├── config.yaml          # Site configuration
├── content/             # Your content files
├── static/              # Static assets
├── themes/
│   └── hugo-profile/    # Hugo Profile theme
└── public/              # Generated site
```

## Troubleshooting

If the server doesn't start:
1. Ensure Hugo is installed: `hugo version`
2. Check hugo-site directory exists
3. Verify hugo-profile theme is in themes/hugo-profile/
4. Confirm config.yaml exists in hugo-site/
