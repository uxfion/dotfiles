local status, alpha = pcall(require, "alpha")
if not status then
    vim.notify("没有找到 alpha")
    return
end
local dashboard = require("alpha.themes.dashboard")

-- https://github.com/goolord/alpha-nvim/discussions/16?sort=top#discussioncomment-1309233
-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("r", "    >    Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button("f", "    >    Find file", ":cd $HOME/Workspaces | Telescope find_files<CR>"),
    dashboard.button("t", "    >    Find text", ":cd $HOME/Workspaces | Telescope live_grep<CR>"),
    dashboard.button("p", "    >    Projects" , ":Telescope projects<CR>"),
    dashboard.button("n", "    >    New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button("s", "    >    Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button("q", "    >    Quit nvim", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
