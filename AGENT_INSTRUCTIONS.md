# 🤖 AI Agent Instructions (Jules)

## 1. Core Rules

- **System:** Pure NPM Monorepo. No Nx. No pnpm.
- **Commit:** Use `git commit -m "type: msg"`. NEVER use `npm run commit`.
- **Publish:** Private Repo. Do NOT publish.

## 2. Workflows

- **Start Dev:** `npm run dev` (Runs watchers in parallel).
- **Add App:** If you create a new app, you MUST update the `dev` script in `package.json` to include it in the `concurrently` list.
- **Build:** `npm run build` (Uses TypeScript Project References).
- **Fix:** `npm run fix` (Runs ESLint + Prettier).

## 3. Troubleshooting

- If dependencies seem broken: `npm run reset`.
- If Types aren't updating: `npm run build:force`.

## TypeScript Rules:

- **noImplicitAny is ON.** Do not use any unless absolutely necessary (and verify with a comment).
- **noUnusedLocals is ON.** If you declare a variable, you must use it, or delete it.
- **strictNullChecks is ON.** You must handle null and undefined cases explicitly.
