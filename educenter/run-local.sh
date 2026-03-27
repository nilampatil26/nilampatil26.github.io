#!/bin/bash

# Educenter Hugo Local Development Server
# This script starts the Educenter theme website locally

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXAMPLE_SITE_DIR="$PROJECT_DIR/exampleSite"

echo -e "${GREEN}🎓 Educenter Hugo Local Server${NC}"
echo -e "${YELLOW}Project Directory: $PROJECT_DIR${NC}"
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo -e "${RED}❌ Hugo is not installed. Please install Hugo first.${NC}"
    echo "Visit: https://gohugo.io/installation/"
    exit 1
fi

# Check if we're in the right directory
if [ ! -d "$EXAMPLE_SITE_DIR" ]; then
    echo -e "${RED}❌ exampleSite directory not found!${NC}"
    echo "Please ensure you're in the educenter theme directory."
    exit 1
fi

# Display Hugo version
echo -e "${GREEN}✅ Hugo version:${NC}"
hugo version
echo ""

# Change to exampleSite directory
cd "$EXAMPLE_SITE_DIR"

# Check if theme is configured
if ! grep -q "educenter" hugo.toml 2>/dev/null; then
    echo -e "${YELLOW}⚠️  Theme might not be properly configured in hugo.toml${NC}"
fi

# Start development server
echo -e "${GREEN}🚀 Starting Educenter development server...${NC}"
echo -e "${YELLOW}Server will be available at: http://localhost:1313${NC}"
echo -e "${YELLOW}Press Ctrl+C to stop the server${NC}"
echo ""

# Start Hugo server
hugo server \
    --buildDrafts \
    --buildFuture \
    --bind=0.0.0.0 \
    --port=1313 \
    --source="$EXAMPLE_SITE_DIR"
