return {
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    main = "koda",

    opts = {
      transparent = false,

      colors = {
        dark = {
          bg = "#000000",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "koda-dark",
    },
  },
}
