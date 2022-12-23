-- <leader>键就表示空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
    noremap = true,
    silent = true,
}

-- 定义本地变量map('模式', '按键', '映射为', 'options')
local map = vim.api.nvim_set_keymap

-- 复用opt参数

-- ======================
-- === 窗口管理快捷键 ===
-- ======================

-- 取消 s 默认功能
map("n", "s", "", opt)

-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- 关闭当前
map("n", "sc", "<C-w>c", opt)

-- 关闭其他
map("n", "so", "<C-w>o", opt)

-- Alt + hjkl  窗口之间跳转
-- Mac用户需要在iTerm2中将option键映射为Alt键
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- <leader> + hjkl 窗口之间跳转
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- 调整窗口比例

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
-- map("n", "s,", ":vertical resize -20<CR>", opt)
-- map("n", "s.", ":vertical resize +20<CR>", opt)

-- 上下比例
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
-- map("n", "sk", ":resize -10<CR>", opt)
-- map("n", "sj", ":resize +10<CR>", opt)

-- 等比例
map("n", "s=", "<C-w>=", opt)

-- ================
-- === Terminal ===
-- ================

-- 在下边窗口打开Terminal
map("n", "<leader>t", ":sp | terminal<CR>", opt)

-- 在侧边窗口打开Terminal
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)

-- Esc回到Normal模式
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- Alt + hjkl  窗口之间跳转
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- ========================
-- === Visual下的快捷键 ===
-- ========================

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- ======================
-- === 浏览代码快捷键 ===
-- ======================

-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "10k", opt)
map("n", "<C-d>", "10j", opt)

-- ================
-- === 其他设置 ===
-- ================

-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP', opt)

-- 保存
map("n", "<leader>w", ":w<CR>", opt)

-- 退出
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 命令行下 ctrl+j/k 下一个上一个
map("c", "<C-j>", "<C-n>", { noremap = false })
map("c", "<C-k>", "<C-p>", { noremap = false })

--map("n", "<leader>fm", "gg=G<C-o>", opt)
map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opt)

-- ==================
-- === 插件快捷键 ===
-- ==================

local pluginKeys = {}

-- =================
-- === nvim-tree ===
-- =================

-- alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

-- 列表快捷键
pluginKeys.nvimTreeList = {
    -- enter/o 打开文件或文件夹
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },

    -- 分屏打开文件
    { key = "v", action = "vsplit" },
    { key = "h", action = "split" },

    -- 显示隐藏文件
    { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)

    -- 显示文件信息
    { key = "I", action = "toggle_file_info" },

    -- 文件操作
    { key = "R", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "s", action = "system_open" },

    -- 拷贝文件路径
    { key = "y", action = "copy_name" },
    { key = "Y", action = "copy_path" },
    { key = "gy", action = "copy_absolute_path" },

    -- 进入上下一级
    { key = { "]" }, action = "cd" },
    { key = { "[" }, action = "dir_up" },
}

-- ==================
-- === bufferline ===
-- ==================

-- 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

--"moll/vim-bbye" 以下的操作都十分危险，会将未保存的文件直接舍弃，谨慎使用
-- 关闭标签页
map("n", "<C-w>", ":Bdelete<CR>", opt)
map("n", "<leader>bc", ":Bdelete!<CR>", opt)
-- 关闭右侧标签页
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
-- 关闭左侧标签页
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
-- 选择一个标签页关闭
map("n", "<leader>bp", ":BufferLinePickClose<CR>", opt)

-- =================
-- === Telescope ===
-- =================

-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)

-- 全局搜索
map("n", "<C-f>", ":Telescop live_grep<CR>", opt)

-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
    i = {
        -- 上下移动
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
        ["<Down>"] = "move_selection_next",
        ["<Up>"] = "move_selection_previous",
        -- 历史记录
        ["<C-n>"] = "cycle_history_next",
        ["<C-p>"] = "cycle_history_prev",
        -- 关闭窗口
        ["<C-c>"] = "close",
        -- 预览窗口上下滚动
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
    },
}

-- gitsigns
pluginKeys.gitsigns_on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map("n", "]c", function()
        if vim.wo.diff then
            return "]c"
        end
        vim.schedule(function()
            gs.next_hunk()
        end)
        return "<Ignore>"
    end, { expr = true })

    map("n", "[c", function()
        if vim.wo.diff then
            return "[c"
        end
        vim.schedule(function()
            gs.prev_hunk()
        end)
        return "<Ignore>"
    end, { expr = true })

    -- Actions
    map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>")
    map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>")
    map("n", "<leader>hS", gs.stage_buffer)
    map("n", "<leader>hR", gs.reset_buffer)
    map("n", "<leader>hu", gs.undo_stage_hunk)
    map("n", "<leader>hp", gs.preview_hunk)
    map("n", "<leader>hb", function()
        gs.blame_line({ full = true })
    end)
    map("n", "<leader>tb", gs.toggle_current_line_blame)
    map("n", "<leader>td", gs.toggle_deleted)
    map("n", "<leader>hd", gs.diffthis)
    map("n", "<leader>hD", function()
        gs.diffthis("~")
    end)

    -- Text object
    map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
end

return pluginKeys
