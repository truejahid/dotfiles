return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = { left = "|", right = "|" },
        component_separators = { left = "|", right = "|" },
        theme = {
          normal = {
            a = { fg = "#ffffff", bg = "#292929", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
          insert = {
            a = { fg = "#ffffff", bg = "#292929", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
          visual = {
            a = { fg = "#ffffff", bg = "#292929", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
          replace = {
            a = { fg = "#ffffff", bg = "#292929", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
          command = {
            a = { fg = "#ffffff", bg = "#292929", gui = "bold" },
            b = { fg = "#aaaaaa", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
          inactive = {
            a = { fg = "#888888", bg = "#292929" },
            b = { fg = "#888888", bg = "#292929" },
            c = { fg = "#888888", bg = "#292929" },
          },
        },
      },
      sections = {
        lualine_z = {},
      },
    },
  },
}
