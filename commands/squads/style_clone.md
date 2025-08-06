---
description: "Analyzes HTML to extract design/content"
allowed_tools: ["Read", "Glob", "Grep", "Write", "LS"]
---

Analyze the provided HTML content. First ask the user which cloning mode they need:

1. **style** - Extract design styles only (colors, fonts, spacing, component styles)
2. **full** - Complete clone (including design styles + content structure, text, layout)

If the user doesn't specify explicitly, default to **style** mode.

---

## Style Mode Output Format

### Design System

```javascript
// tailwind.config.js extensions
{
  colors: { primary: "#xxx", secondary: "#xxx", ... },
  fontFamily: { sans: ["font-name"], ... },
  spacing: { base: "1rem", ... },
  borderRadius: { DEFAULT: "xxx", ... }
}
```

### Core Components

List identified components one by one:

- **Component Name**: Brief description
- **Styles**: `Key Tailwind classes`
- **States**: hover/focus changes

### Layout Patterns

- Main layout structure and container widths
- Responsive breakpoint behavior

---

## Full Mode Output Format (includes all Style mode content, plus additional)

### Page Structure

```text
Header
  - Logo: [text/image path]
  - Navigation: [menu item list]

Main Content
  Section 1: [title]
    - Component type: [Hero/Features/etc]
    - Title text: "xxx"
    - Subtitle: "xxx"
    - Content layout: [description]

  Section 2: [title]
    - ...

Footer
  - Copyright info: "xxx"
  - Link groups: [list]
```

### Content Inventory

- All heading text
- Paragraph content summaries
- Button/CTA text
- Image asset list

### Interactive Elements

- Form fields and labels
- Clickable elements and their targets

---

**Output Requirements**:

1. Keep concise, avoid redundant descriptions
2. Use actual values instead of placeholders
3. Save directly to appropriate paths:
   - HTML file input → `./squads/design/{filename}.md`
   - Other input → `./squads/design/index.md`
4. Ensure design directory exists
