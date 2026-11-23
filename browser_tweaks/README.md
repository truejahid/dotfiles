# Browser Tweaks

Frameless **Zen Browser** setup and custom **uBlock Origin** filters.

## Structure

```text
browser_tweaks/
├── README.md
└── ublock-origin/
    ├── custom-filters.txt
    └── ublock-hide-yt-shorts.txt
```

---

## Setup

### 1. Zen Browser (Frameless Viewport)
1. Open `about:config` in Zen Browser.
2. Search for `zen.theme.content-element-separation` and set its value to **`0`**.

### 2. uBlock Origin (`ublock-origin/`)
1. **My filters:** Open **uBlock Origin Dashboard** -> **My filters**, paste the contents of `ublock-origin/custom-filters.txt`, and click **Apply changes**.
2. **Block YouTube Shorts:** Go to **Filter lists** -> scroll to **Custom** -> check **Import...**, paste the URL inside `ublock-origin/ublock-hide-yt-shorts.txt`, and click **Apply changes**.
