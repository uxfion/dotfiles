local status, sniprun = pcall(require, "sniprun")
if not status then
    vim.notify("没有找到 sniprun")
    return
end

sniprun.setup({
    -- display = {
    --     -- "Classic",
    --     "VirtualTextOk",
    --     -- "VirtualText",
    -- },
})

local opt = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>rr", "<Plug>SnipRun", opt)
vim.api.nvim_set_keymap("v", "<leader>r", "<Plug>SnipRun", opt)
vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>SnipRunOperator", opt)
vim.api.nvim_set_keymap("n", "<leader>rs", "<Plug>SnipReset", opt)
vim.api.nvim_set_keymap("n", "<leader>rc", "<Plug>SnipClose", opt)
