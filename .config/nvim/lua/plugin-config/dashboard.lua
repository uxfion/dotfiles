local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("没有找到 dashboard")
    return
end

db.custom_footer = {
    "",
    "",
    "https://lecter.one",
}

db.custom_center = {
    {
        icon = "  ",
        desc = "Recently files                      ",
        action = "Telescope oldfiles",
    },
    {
        icon = "  ",
        desc = "Projects                            ",
        action = "Telescope projects",
    },
    {
        icon = "  ",
        desc = "Edit Projects                       ",
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
    },
    {
        icon = "  ",
        desc = "Find file                           ",
        action = "Telescope find_files",
    },
    {
        icon = "  ",
        desc = "Find text                           ",
        action = "Telescopecope live_grep",
    },
    -- {
    --     icon = "  ",
    --     desc = "Edit keybindings                    ",
    --     action = "edit ~/.config/nvim/lua/keybindings.lua",
    -- },
    -- {
    --   icon = "  ",
    --   desc = "Edit .bashrc                        ",
    --   action = "edit ~/.bashrc",
    -- },
    -- {
    --   icon = "  ",
    --   desc = "Change colorscheme                  ",
    --   action = "ChangeColorScheme",
    -- },
    -- {
    --   icon = "  ",
    --   desc = "Edit init.lua                       ",
    --   action = "edit ~/.config/nvim/init.lua",
    -- },
}

db.custom_header = {
    [[]],
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
    [[                                                   ]],
    [[                [ version : 1.0.0 ]                ]],
}
