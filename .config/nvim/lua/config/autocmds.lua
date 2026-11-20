-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local koda_comment_group = vim.api.nvim_create_augroup("KodaCommentColor", {
  clear = true,
})

local function set_koda_comment_color()
  vim.api.nvim_set_hl(0, "Comment", {
    fg = "#6E6E6E",
  })

  vim.api.nvim_set_hl(0, "@comment", {
    fg = "#6E6E6E",
  })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = koda_comment_group,
  pattern = "koda-dark",
  callback = set_koda_comment_color,
})

-- Also apply immediately if Koda is already active.
if vim.g.colors_name == "koda-dark" then
  set_koda_comment_color()
end
