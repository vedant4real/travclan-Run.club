# Website Skills Pack (for Google Antigravity + Claude)

A "skill" is a folder with a file called SKILL.md inside. It is a set of instructions
that teaches an AI how to do one job well (like "design a website that doesn't look
generic" or "make it accessible"). The AI reads the skill only when it needs it.

## What's in this pack

.agent/skills/          <- READY TO USE. 23 skills, none contain scripts.
optional-has-scripts/   <- 2 powerful extras. They include small programs. Read the note below first.
claude-upload/          <- One ZIP per key skill, ready to upload to Claude.
LANDING-PAGE-TASK-PROMPT.md <- Ready prompt for the Marketing Intern landing page task.
LINKS.md                <- Top 10 ranked list + big collections to explore later.
ANTIGRAVITY-PROMPT.md   <- Copy-paste prompt to start your website build.
CREDITS.md              <- Who made each skill + licenses.

## The 23 ready-to-use skills, by category

DESIGN / LOOK AND FEEL
- frontend-design ........ pushes the AI toward a distinctive look (fonts, colors, layout)
- web-design-guidelines .. checks your UI against a long list of good-design rules
- frontend-ui-engineering  builds clean, responsive, accessible pages

ANIMATION (for the GSAP animation library - use only if your site uses GSAP)
- gsap-core, gsap-timeline, gsap-scrolltrigger, gsap-utils

QUALITY (accessibility, search ranking, speed)
- accessibility .......... makes the site usable for everyone (WCAG 2.2)
- seo .................... helps Google find and rank your site
- core-web-vitals, performance, best-practices .... speed and safety

MARKETING / PERSUASION (NEW - best for landing pages that must convince people)
- copywriting ........... writes clear headlines, benefits and calls-to-action
- copy-editing .......... tightens and fixes your words
- cro ................... makes a page guide people to click (Conversion Rate Optimization)
- marketing-psychology .. why people trust, decide and act
- offers ................ how to present what you're selling so the value is obvious
- customer-research ..... works out who your target user is and what they worry about
- product-marketing ..... defines the product, audience and positioning first

PROMPTING / PLANNING (helps YOU and the AI agree on what to build)
- interview-me ........... the AI asks you questions before building
- spec-driven-development  writes a clear plan before any code
- planning-and-task-breakdown  splits the plan into small steps
- context-engineering .... keeps the AI focused and high quality

## How to install in Antigravity (3 steps)

1. Unzip this pack.
2. Open your website project folder (the one you open in Antigravity).
3. Copy the whole ".agent" folder from this pack INTO your project folder.
   You should end up with:  my-website/.agent/skills/frontend-design/SKILL.md

Can't see ".agent"? It starts with a dot so computers hide it.
- Mac: press Cmd + Shift + .   (period)
- Windows: File Explorer > View > Show > Hidden items

Want the skills in ALL projects? Copy the folders inside ".agent/skills/" to
~/.gemini/antigravity/skills/   (Mac/Linux)
C:\Users\YOURNAME\.gemini\antigravity\skills\   (Windows)

Test it: ask Antigravity "Which skills do you have available?"

## How to use in Claude

Go to Settings > Capabilities > Skills and upload a ZIP from the claude-upload/ folder.
(Menu names may shift a little.) Start with frontend-design.

## The 2 optional skills (have scripts)

- impeccable ........ Excellent at removing "AI-looking" design. Has helper scripts.
- design-taste-frontend  Strong art direction. Needs Node 22+ and Chrome installed.

Scripts are small programs that can run on your computer. These two come from
popular, well-known projects, but a good habit is to skim the SKILL.md and ask the
AI "what do the scripts in this skill do?" before moving the folder into
.agent/skills/. Skip them if unsure; the 16 main skills are enough for a great site.

## Golden rules
- Don't install everything. 5-8 skills at a time works best.
- Tell the AI which skill to use: "Use the frontend-design skill to build my hero section."
- Build in steps: plan first, then design, then animation, then accessibility/SEO check.
