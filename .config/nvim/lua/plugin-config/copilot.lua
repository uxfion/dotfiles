local status, copilot = pcall(require, "copilot")
if not status then
    vim.notify("没有找到 copilot.lua")
    return
end

copilot.setup({
    filetypes = {
        ["*"] = true,
    },

    panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
            jump_prev = "<M-[>",
            jump_next = "<M-]>",
            accept = "<M-CR>",
            refresh = "r",
            open = "<M-\\>",
        },
        layout = {
            position = "right", -- | top | left | right | bottom
            ratio = 0.4,
        },
    },

    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<C-y>",
            accept_word = "<C-j>",
            accept_line = "<C-k>",
            next = "<C-u>",
            prev = "<C-i>",
            dismiss = "<C-o>",
        },
    },
})

vim.api.nvim_set_keymap("n", "<A-c>", ":Copilot suggestion toggle_auto_trigger<CR>", { silent = true, noremap = true })
