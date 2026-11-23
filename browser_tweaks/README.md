# Browser Tweaks

Native, extension-free zero-rounding and frameless setup for **Zen Browser** and **all websites** (preserving circular loading/buffering spinners), plus custom **uBlock Origin** filters.

## Structure

```text
browser_tweaks/
├── README.md
├── ublock-origin/
│   ├── custom-filters.txt
│   └── ublock-hide-yt-shorts.txt
└── zen-borwser-tweaks/
    ├── userChrome.css
    └── userContent.css
```

---

## Setup

### 1. Zen Browser & Websites (`zen-borwser-tweaks/`)
1. Open `about:config` and set:
   * `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
   * `zen.theme.border-radius` = `0`
   * `zen.view.border-radius` = `0`
   * `zen.theme.content-element-separation` = `0` *(removes outer viewport frame/gap)*
2. Open `about:support` -> **Profile Folder** -> **Open Folder**.
3. Copy `userChrome.css` (browser UI & tab-switch lock) and `userContent.css` (all websites, PDF viewer, `about:` pages, plus ChatGPT/YouTube rules) into the `chrome` folder (create it if missing).
4. Restart Zen Browser.

### 2. uBlock Origin (`ublock-origin/`)
1. **My filters:** Open **uBlock Origin Dashboard** -> **My filters**, paste the contents of `ublock-origin/custom-filters.txt`, and click **Apply changes**.
2. **Block YouTube Shorts:** Go to **Filter lists** -> scroll to **Custom** -> check **Import...**, paste the URL inside `ublock-origin/ublock-hide-yt-shorts.txt`, and click **Apply changes**.

