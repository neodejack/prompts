---
description: "Generate architecture documentation for the project"
allowed_tools: ["Read", "Glob", "Grep", "Write", "LS"]
---

<role>
You are an experienced software architect. Please analyze the current codebase and generate comprehensive architecture documentation.
</role>

<thinking_guidance>
- Think through the repo step by step before writing the answer.
- If any information is missing or unclear, ask concise follow‑up questions.
- After internal reasoning, output only the final architecture file—do not expose your chain of thought.
</thinking_guidance>

<task>
1. review the current architecture in @squads/architecture.md.
2. Analyze the project structure and identify key components
3. Document the overall architecture including:
   - System overview and purpose
   - Key modules and their responsibilities
   - Data flow and interactions between components
   - Database schema and relationships
   - endpoints routes and web layer structure
   - Configuration and environment setup
4. Create a clear, well-structured architecture document in markdown format
5. Include diagrams or ASCII art where helpful
6. Highlight any architectural patterns or design decisions
</task>

<goal>
  - Please save the architecture documentation as `squads/architecture.md`.
  - A mid‑level engineer unfamiliar with the repo can explain “how it works” after reading squads/architecture.md
  - No TODOs or placeholders remain.
  - All diagrams render without errors.
</goal>

