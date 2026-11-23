# Zero-Rounding Zen Browser & Web Setup

A complete, mod-free configuration that removes all rounded corners (`border-radius: 0`) across **Zen Browser** (including the floating search bar, sidebar, tabs, menus, and internal `about:` pages) and **all websites** via Stylus—while keeping circular loading spinners and buffering circles round.

---

## Repository Structure

* **`userChrome.css`** — Removes rounded corners from the Zen Browser UI shell, tabs, sidebar, context menus, and floating URL bar.
* **`userContent.css`** — Removes rounded corners from internal browser pages (`about:config`, `about:preferences`, `about:addons`, and the built-in PDF viewer) where extensions cannot run.
* **`stylus-zero-rounding.css`** *(or your saved Stylus CSS file)* — Global Stylus userstyle that removes rounded corners across all websites while sparing circular loading and buffering spinners without false positives on cards, buttons, or horizontal progress bars.

---

## Installation Guide

### Part 1: Zen Browser UI & Internal Pages

#### 1. Configure `about:config`
Open a new tab in Zen Browser, navigate to `about:config`, accept the warning, and set the following preferences (create them using `+` if they do not exist):

| Preference Name | Type | Value |
| :--- | :--- | :--- |
| `toolkit.legacyUserProfileCustomizations.stylesheets` | Boolean | `true` |
| `zen.theme.border-radius` | Number | `0` |
| `zen.view.border-radius` | Number | `0` |

#### 2. Copy the CSS Files to Your Profile
1. Navigate to `about:support` in Zen Browser.
2. Locate **Profile Folder** and click **Open Folder** (or **Show in Finder** / **Open Directory**).
3. Open the `chrome` folder (create a lowercase folder named `chrome` if it doesn't exist).
4. Place both **`userChrome.css`** and **`userContent.css`** inside the `chrome` folder.
5. Restart Zen Browser completely.

> **Note:** No third-party Zen Mods (such as *Disable Rounded Corners*) are required—this setup replaces them entirely.

---

### Part 2: Websites (Stylus)

1. Install the **[Stylus](https://mozilla.org)** extension in Zen Browser.
2. Click the **Stylus** toolbar icon -> **Manage** -> **Write new style**.
3. Name the style `Zero Rounding`.
4. Ensure **Applies to** at the bottom is set to **Everything**.
5. Paste the contents of your Stylus CSS file into the editor and click **Save**.

---

## How Spinner Protection Works

The Stylus stylesheet uses targeted CSS Level 4 `:not(...)` exclusions to strip `border-radius` globally while preserving circular loaders without accidentally sparing normal UI components:

* **Precision spinner keywords:** Protects elements (and their nested inner layers) matching `spinner`, `loader`, `loading`, `buffer`, `throbber`, `preloader`, `circular-progress`, `MuiCircularProgress`, and Tailwind's `animate-spin`.
* **No UI false positives:** Avoids overly broad terms (`ring`, `progress`, `pulse`, `load`, `spin`, `circular`) so horizontal progress bars, skeleton cards, avatars, focus rings, and upload/download boxes stay completely square.
* **Accessibility & inline animations:** Preserves elements with `aria-busy="true"` or inline `animation` styles.
* **SVG loaders:** Native `<svg>` and `<circle>` buffering animations (such as YouTube's player spinner) remain unaffected automatically.

