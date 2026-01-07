#!/bin/bash

echo "🚀 Starting Migration to Agent-Ready Architecture..."

# 1. Clean old junk
echo "🧹 Cleaning Nx and pnpm artifacts..."
rm -rf .nx nx.json pnpm-lock.yaml pnpm-workspace.yaml
rm -rf node_modules packages/*/node_modules apps/*/node_modules

# 2. Install Dependencies
echo "📦 Installing with NPM..."
npm install

# 3. Setup Hooks
echo "🪝 Initializing Husky..."
npm run prepare
chmod +x .husky/commit-msg
chmod +x .husky/pre-push

# 4. Verify Build
echo "🏗️ Verifying Build..."
npm run build

echo "✅ DONE. Your repo is now optimized for Jules."
echo "   Run 'npm run dev' to start."