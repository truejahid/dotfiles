local function set_noice_preset_border(opts, name, view)
  local preset = opts.presets and opts.presets[name]

  if not preset then
    return
  end

  if type(preset) ~= "table" then
    preset = {}
  else
    preset = vim.deepcopy(preset)
  end

  preset.views = vim.tbl_deep_extend("force", preset.views or {}, {
    [view] = {
      border = {
        style = "single",
      },
    },
  })

  opts.presets[name] = preset
end

return {
  -- Which-key
  {
    "folke/which-key.nvim",
    opts = {
      win = {
        border = "single",
      },
    },
  },

  -- Noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.views = vim.tbl_deep_extend("force", opts.views or {}, {
        popup = {
          border = { style = "single" },
        },

        cmdline_popup = {
          border = { style = "single" },
        },

        cmdline_input = {
          border = { style = "single" },
        },

        confirm = {
          border = { style = "single" },
        },
      })

      -- Preserve the existing preset enabled/disabled state
      set_noice_preset_border(opts, "command_palette", "cmdline_popupmenu")
      set_noice_preset_border(opts, "lsp_doc_border", "hover")
    end,
  },

  -- Snacks
  {
    "folke/snacks.nvim",
    opts = {
      -- Existing floating windows
      styles = {
        blame_line = { border = "single" },
        input = { border = "single" },
        notification = { border = "single" },
        notification_history = { border = "single" },
        scratch = { border = "single" },
        snacks_image = { border = "single" },
      },

      -- Picker layouts
      picker = {
        layouts = {
          default = {
            layout = {
              box = "horizontal",
              width = 0.8,
              min_width = 120,
              height = 0.8,

              {
                box = "vertical",
                border = "single",
                title = "{title} {live} {flags}",

                { win = "input", height = 1,     border = "bottom" },
                { win = "list",  border = "none" },
              },

              {
                win = "preview",
                title = "{preview}",
                border = "single",
                width = 0.5,
              },
            },
          },

          vertical = {
            layout = {
              backdrop = false,
              width = 0.5,
              min_width = 80,
              height = 0.8,
              min_height = 30,
              box = "vertical",
              border = "single",
              title = "{title} {live} {flags}",
              title_pos = "center",

              { win = "input", height = 1,     border = "bottom" },
              { win = "list",  border = "none" },

              {
                win = "preview",
                title = "{preview}",
                height = 0.4,
                border = "top",
              },
            },
          },

          dropdown = {
            layout = {
              backdrop = false,
              row = 1,
              width = 0.4,
              min_width = 80,
              height = 0.8,
              border = "none",
              box = "vertical",

              {
                win = "preview",
                title = "{preview}",
                height = 0.4,
                border = "single",
              },

              {
                box = "vertical",
                border = "single",
                title = "{title} {live} {flags}",
                title_pos = "center",

                { win = "input", height = 1,     border = "bottom" },
                { win = "list",  border = "none" },
              },
            },
          },

          telescope = {
            reverse = true,
            layout = {
              box = "horizontal",
              backdrop = false,
              width = 0.8,
              height = 0.9,
              border = "none",

              {
                box = "vertical",

                {
                  win = "list",
                  title = " Results ",
                  title_pos = "center",
                  border = "single",
                },

                {
                  win = "input",
                  height = 1,
                  border = "single",
                  title = "{title} {live} {flags}",
                  title_pos = "center",
                },
              },

              {
                win = "preview",
                title = "{preview:Preview}",
                width = 0.45,
                border = "single",
                title_pos = "center",
              },
            },
          },

          sidebar = {
            preview = "main",
            layout = {
              backdrop = false,
              width = 40,
              min_width = 40,
              height = 0,
              position = "left",
              border = "none",
              box = "vertical",

              {
                win = "input",
                height = 1,
                border = "single",
                title = "{title} {live} {flags}",
                title_pos = "center",
              },

              { win = "list", border = "none" },

              {
                win = "preview",
                title = "{preview}",
                height = 0.4,
                border = "top",
              },
            },
          },

          select = {
            hidden = { "preview" },
            layout = {
              backdrop = false,
              width = 0.5,
              min_width = 80,
              max_width = 100,
              height = 0.4,
              min_height = 2,
              box = "vertical",
              border = "single",
              title = "{title}",
              title_pos = "center",

              { win = "input", height = 1,     border = "bottom" },
              { win = "list",  border = "none" },

              {
                win = "preview",
                title = "{preview}",
                height = 0.4,
                border = "top",
              },
            },
          },

          vscode = {
            hidden = { "preview" },
            layout = {
              backdrop = false,
              row = 1,
              width = 0.4,
              min_width = 80,
              height = 0.4,
              border = "none",
              box = "vertical",

              {
                win = "input",
                height = 1,
                border = "single",
                title = "{title} {live} {flags}",
                title_pos = "center",
              },

              { win = "list", border = "hpad" },

              {
                win = "preview",
                title = "{preview}",
                border = "single",
              },
            },
          },
        },
      },
    },
  },
}
