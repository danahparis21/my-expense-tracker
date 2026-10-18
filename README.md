# 🎀 Danah's Finance Tracker

> **A beautifully designed, coquette-themed group finance & debt tracker built for capstone and thesis teams.**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new)
![Built With](https://img.shields.io/badge/Made%20with-HTML5%20%7C%20CSS3%20%7C%20JavaScript-c97b90?style=flat-square)
![Database](https://img.shields.io/badge/Database-Supabase-3ecf8e?style=flat-square)
![Hosting](https://img.shields.io/badge/Hosted%20on-Vercel-black?style=flat-square)

---

## ✨ Overview

During university capstone and thesis projects, members constantly incur shared expenses—printing, binding, prototyping materials, domain hosting, commute fares, and meals. Frequently, one person (**Danah**) fronts the money for the group. 

Traditional splitting apps are often cluttered, require forced logins, or lack visual charm. **Danah's Finance Tracker** solves this with a delightful, vintage-paper-inspired web app that makes tracking balances effortless, transparent, and aesthetically pleasing.

---

## 🌸 Key Features

### 🧾 Paper Receipt Invoice Dispenser
- Realistic paper receipt dispenser with sawtooth tear edges and perforation lines.
- Itemized spendings breakdown with currency formatting in Philippine Pesos (₱).
- Multi-step settlement progress tracker (`Unpaid` → `In Review` → `Paid in Full`).
- Tracks Danah as the upfront payer alongside each member's exact calculated share.

### ⚖️ Flexible Expense Splitting
- **Split Equally**: Automatically splits the total across members + Danah.
- **Include/Exclude Payer**: Toggle whether Danah shares in the bill or if it's strictly for group members.
- **Custom Split Amounts**: Input specific peso shares per member with live remaining balance calculation.
- **Specific People Only**: Bill only the members who participated in a particular expense.

### 🌱 Member Deduction / "Paid for Danah" Feature
- If a group member covers Danah's commute fare, tricycle ride, or food, Danah can record a **Deduction**.
- Automatically subtracts from what that member owes Danah, displaying in green with a `🌱` badge on receipts.

### 💳 Real Payment Cards & QR Code Scanning
- **GCash**: Card styling with optional account number and QR code upload.
- **MariBank**: Vibrant Shopee/Sea orange card with 11-digit formatting and QR code upload.
- **BPI**: Deep burgundy banking card with 10-digit account formatting and QR upload.
- **Direct QR Modal**: Tap any card to open a full-resolution QR code for quick scanning.

### 🔗 Public Guest View Links
- Generate unique, shareable project links (e.g. `?group=g_123456789`).
- No passwords or sign-ups required for team members—friends simply tap their name to view their personal itemized invoice and payment options.
- Team members can tap **"I already paid Danah"** to notify Danah and trigger celebratory confetti!

### 🔒 Admin Security
- Protected by a 4-digit PIN lock screen with interactive tactile keypad.
- Inline editable group titles to quickly rename capstone projects.

---

## 🛠️ Technology Stack

- **Frontend**: Vanilla HTML5, CSS3 (Custom Design System with CSS Tokens, Glassmorphism & Micro-animations), Vanilla JavaScript (ES6+).
- **Typography**: Google Fonts (*Playfair Display* & *Inter*).
- **Backend / Database**: [Supabase](https://supabase.com) (PostgreSQL JSON store with Row Level Security).
- **Serverless API**: Vercel Serverless Functions (`api/config.js`) for secure environment variable injection.
- **Hosting**: [Vercel](https://vercel.com) with Single-Page Application (SPA) routing.

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/danahparis21/my-expense-tracker.git
cd my-expense-tracker
```

### 2. Local Setup
Open `index.html` directly in your browser, or start a local dev server:
```bash
npx serve .
```

---

## ☁️ Connecting Supabase & Deploying to Vercel

### Step 1: Set Up Supabase
1. Create a free project at [supabase.com](https://supabase.com).
2. Go to **SQL Editor** → **New Query**, paste the contents of [`supabase_schema.sql`](./supabase_schema.sql), and click **Run**.
3. Go to **Project Settings** → **API** and copy your:
   - **Project URL**
   - **anon public key**

### Step 2: Deploy to Vercel
1. Import this repository into [Vercel](https://vercel.com).
2. In the **Environment Variables** section, add:
   - `SUPABASE_URL`: `https://your-project.supabase.co`
   - `SUPABASE_ANON_KEY`: `eyJhbGciOiJIUzI1NiIsIn...`
3. Click **Deploy**.

---

## 🎀 Made with love by Danah
*Designed for Capstone & Thesis Project Teams.*
