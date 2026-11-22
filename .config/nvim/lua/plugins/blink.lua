local menu_bg = "#1A1A1A"

local function set_bg(name, color)
  vim.api.nvim_set_hl(0, name, {
    bg = color,
    update = true,
  })
end

local function set_highlights()
  local groups = {
    "BlinkCmpMenu",
    "BlinkCmpLabel",
    "BlinkCmpLabelDeprecated",
    "BlinkCmpLabelMatch",
    "BlinkCmpLabelDetail",
    "BlinkCmpLabelDescription",
    "BlinkCmpSource",
    "BlinkCmpScrollBarGutter",
    "BlinkCmpDoc",
    "BlinkCmpDocBorder",
  }

  for _, name in ipairs(groups) do
    set_bg(name, menu_bg)
  end

  -- Scrollbar thumb
  set_bg("BlinkCmpScrollBarThumb", "#555555")

  -- Selected suggestion
  vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {
    fg = "#ffffff",
    bg = "#333333",
  })
end

return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          border = "none",
          draw = {
            components = {
              kind_icon = {
                highlight = function(ctx)
                  local group = ctx.kind_hl or "BlinkCmpKind"
                  set_bg(group, menu_bg)

                  return {
                    { group = group, priority = 20000 },
                  }
                end,
              },
            },
          },
        },
      },
    },

    init = function()
      local group = vim.api.nvim_create_augroup(
        "BlinkCmpCustomHighlights",
        { clear = true }
      )

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        callback = function()
          vim.schedule(set_highlights)
        end,
      })

      vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = "BlinkCmpMenuOpen",
        callback = set_highlights,
      })
    end,
  },
}
