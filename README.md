# Run Club – Start Running in 30 Days 🏃‍♂️

> **Assignment Task 2:** Marketing Intern Candidate Submission  
> **Offer:** "Run Club – Start Running in 30 Days"  
> **Target Audience:** Complete beginners and returning runners in Delhi (Connaught Place).

---

## 📌 Project Overview
A conversion-focused, accessible, and high-performance landing page created for the **Run Club 30-Day Beginner Program**. 

The page is built with a continuous top-to-bottom storytelling narrative designed to ease beginner anxiety, answer common fears, and inspire action with a single clear Call to Action: **`[Join the Run Club]`**.

### 📍 Cohort Details
- **Location:** Central Park Inner Circle, Connaught Place, New Delhi (Opposite Rajiv Chowk Metro Gate 2)
- **Schedule:** Tuesdays, Thursdays & Saturdays at 6:00 AM IST
- **Next Cohort:** Monday, Nov 2, 2026
- **Head Coach:** Jon Dow
- **Pricing:** 2-Day Free Trial, then ₹800 / month
- **Contact:** runwithus4real@gmail.com | +91 98100 24810

---

## 🌟 Key Highlights & Implementation Details

1. **Continuous Narrative Scroll Flow:**
   - Seamless top-to-bottom document scroll (Hero → Reassurance → Timeline → 30-Day Training Plan → Pricing & Value → FAQs → Final Action).
   - No jarring slide jumps or trapped scroll viewports.

2. **Smooth Scroll-Driven Runner Engine:**
   - Interactive 130-frame track animation (`extracted_frames/frame_0001.jpg` – `frame_0130.jpg`).
   - Sticky showcase alongside Section 1 & Section 2 with linear interpolation (LERP) for buttery-smooth scrubbing.
   - Intelligent canvas aspect-ratio containment (`Math.min`) with an ambient amber running track glow.

3. **Responsive Design (Mobile, Tablet, Desktop):**
   - **Mobile (<768px):** Centered runner container, full-width thumb-friendly buttons (min 50px touch targets), fluid `clamp()` typography, and a smart slide-in sticky bottom CTA bar with safe-area support.
   - **Tablet (768px–1024px):** 2×2 grid layout for weekly plans, responsive spacing.
   - **Desktop (>1024px):** Two-column narrative layout with sticky runner visualization.

4. **Honest Copy & Psychological Reassurance:**
   - Written at a reading level of age 13–15.
   - Free from AI clichés, em-dashes, and fake testimonials or inflated metrics.
   - Systematically addresses the top 5 beginner fears (slow pace, walk breaks, fear of judgment, injury risk, and intimidation).

5. **Accessibility & Standards (WCAG 2.2 AA):**
   - Semantic HTML5 structure with ARIA attributes.
   - Full keyboard navigation support and focus states.
   - Respects user preferences for `@media (prefers-reduced-motion: reduce)`.

6. **Interactive 404 Registration Checkpoint:**
   - All CTA buttons lead to [`join.html`](join.html) displaying the custom checkpoint: *"Start now and don't be afraid."* with cohort timings and contact details.

---

## 🚀 How to Run Locally

### Option 1: Direct Batch Launcher
Double-click `start_preview.bat` (or `preview_landing_page.bat`) to start a local static server and automatically launch the page in your browser.

### Option 2: Direct File Open
Open `index.html` directly in any modern web browser (Google Chrome, Microsoft Edge, Safari, Firefox).

---

## 📁 Repository Structure
```text
├── index.html                   # Main Landing Page (Deep Obsidian Theme, Embedded CSS & JS)
├── join.html                    # Registration 404 Checkpoint Page
├── README.md                    # Project Documentation
├── .gitignore                   # Ignored files
├── start_preview.bat            # Quick batch launcher
├── extracted_frames/            # 130 sequential aerial track runner frames
│   ├── frame_0001.jpg
│   └── ... frame_0130.jpg
└── .agents/
    └── product-marketing.md     # Strategy & ICP research context
```
