return {
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("koda").setup({
        colors = {
          bg = "#000000",
        },
        on_highlights = function(hl)
          hl.Comment = { fg = "#777777" }
          hl["@comment"] = { fg = "#777777" }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "koda-dark",
    },
  },
}
