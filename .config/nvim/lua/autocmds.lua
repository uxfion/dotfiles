local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

local autocmd = vim.api.nvim_create_autocmd

-- nvim-tree 自动关闭
autocmd("BufEnter", {
    nested = true,
    group = myAutoGroup,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd("quit")
        end
    end,
})

-- 进入Terminal 自动进入插入模式
autocmd("TermOpen", {
    group = myAutoGroup,
    command = "startinsert",
})

-- 保存时自动格式化
-- 使用快捷键<leader>f
-- autocmd("BufWritePre", {
--     group = myAutoGroup,
--     -- pattern = { "*.lua", "*.py", "*.sh" },
--     callback = function()
--         vim.lsp.buf.format()
--     end,
-- })

-- 修改lua/plugins.lua 自动更新插件
autocmd("BufWritePost", {
    group = myAutoGroup,
    -- autocmd BufWritePost plugins.lua source <afile> | PackerSync
    callback = function()
        if vim.fn.expand("<afile>") == ".config/nvim/lua/plugins.lua" then
            vim.api.nvim_command("source .config/nvim/lua/plugins.lua")
            vim.api.nvim_command("PackerSync")
        end
    end,
})

-- 搜索高亮
vim.on_key(function(char)
    if vim.fn.mode() == "n" then
        vim.opt.hlsearch = vim.tbl_contains({ "<CR>", "n", "N", "*", "#", "?", "/" }, vim.fn.keytrans(char))
    end
end, vim.api.nvim_create_namespace("auto_hlsearch"))

-- 用o换行不要延续注释
autocmd("BufEnter", {
    group = myAutoGroup,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions
            - "o" -- O and o, don't continue comments
            + "r" -- But do continue when pressing enter.
    end,
})
