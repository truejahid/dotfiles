return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        theme = {
          normal = {
            a = { fg = "#ffffff", bg = "#272727", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
          insert = {
            a = { fg = "#ffffff", bg = "#272727", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
          visual = {
            a = { fg = "#ffffff", bg = "#272727", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
          replace = {
            a = { fg = "#ffffff", bg = "#272727", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
          command = {
            a = { fg = "#ffffff", bg = "#272727", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
          inactive = {
            a = { fg = "#888888", bg = "#272727" },
            b = { fg = "#888888", bg = "#272727" },
            c = { fg = "#888888", bg = "#272727" },
          },
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return string.format("%-7s", str)
            end,
          },
        },
        lualine_z = {},
      },
    },
  },
}
