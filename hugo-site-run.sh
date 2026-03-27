#!/bin/bash

# Hugo Site Local Development Server
# This script starts the Hugo Profile theme website locally

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Project directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/hugo-site" && pwd)"

echo -e "${BLUE}🚀 Hugo Profile Site Local Server${NC}"
echo -e "${YELLOW}Project Directory: $PROJECT_DIR${NC}"
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo -e "${RED}❌ Hugo is not installed. Please install Hugo first.${NC}"
    echo "Visit: https://gohugo.io/installation/"
    exit 1
fi

# Check if we're in the right directory
if [ ! -d "$PROJECT_DIR" ]; then
    echo -e "${RED}❌ hugo-site directory not found!${NC}"
    echo "Please ensure the hugo-site directory exists."
    exit 1
fi

# Check if theme exists
if [ ! -d "$PROJECT_DIR/themes/hugo-profile" ]; then
    echo -e "${RED}❌ hugo-profile theme not found!${NC}"
    echo "Please ensure the hugo-profile theme is installed in themes/hugo-profile/"
    exit 1
fi

# Display Hugo version
echo -e "${GREEN}✅ Hugo version:${NC}"
hugo version
echo ""

# Change to hugo-site directory
cd "$PROJECT_DIR"

# Check if config file exists
if [ ! -f "config.yaml" ]; then
    echo -e "${RED}❌ config.yaml not found!${NC}"
    exit 1
fi

# Display site info
echo -e "${GREEN}📋 Site Information:${NC}"
echo -e "${YELLOW}Theme: hugo-profile${NC}"
echo -e "${YELLOW}Site Title: $(grep 'title:' config.yaml | head -1 | cut -d'"' -f2)${NC}"
echo ""

# Start development server
echo -e "${GREEN}🚀 Starting Hugo Profile development server...${NC}"
echo -e "${YELLOW}Server will be available at: http://localhost:1314${NC}"
echo -e "${YELLOW}Press Ctrl+C to stop the server${NC}"
echo ""

# Start Hugo server with different port to avoid conflicts
hugo server \
    --buildDrafts \
    --buildFuture \
    --buildExpired \
    --bind=0.0.0.0 \
    --port=1314 \
    --disableFastRender
