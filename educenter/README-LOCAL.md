# Educenter Hugo Local Development

## Quick Start

### 1. Run the Local Server
```bash
./run-local.sh
```

### 2. Manual Server Start
```bash
cd exampleSite
hugo server --buildDrafts --bind=0.0.0.0 --port=1313 --themesDir=../ --theme=educenter
```

## What the Script Does

- ✅ Checks if Hugo is installed
- ✅ Verifies project structure
- ✅ Displays Hugo version
- ✅ Starts development server with optimal settings
- ✅ Binds to 0.0.0.0 for network access
- ✅ Uses port 1313 (standard Hugo port)
- ✅ Builds drafts and future content
- ✅ Configures theme directory correctly

## Access Your Site

- **Local URL**: http://localhost:1313
- **Network URL**: http://0.0.0.0:1313 (accessible from other devices)

## Server Features

- 🔄 Auto-reload on file changes
- 📱 Mobile-friendly testing
- ⚡ Fast rebuilds
- 🎓 Education-focused design with:
  - Course pages
  - Teacher profiles
  - Blog functionality
  - Contact forms

## Stop Server

Press `Ctrl+C` in the terminal to stop the server.

## Troubleshooting

If the server doesn't start:
1. Ensure Hugo is installed: `hugo version`
2. Check you're in the educenter directory
3. Verify exampleSite folder exists
