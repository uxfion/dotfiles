
-- https://github.com/community/community/discussions/8105
--
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.g.copilot_filetypes = {
    ["*"] = true,
}
