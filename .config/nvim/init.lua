-- 基础配置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 自动命令
require("autocmds")

-- 插件配置
-- 侧边栏
require("plugin-config.nvim-tree")
-- 上标签页
require("plugin-config.bufferline")
-- 下信息栏
require("plugin-config.lualine")
-- 搜索框
require("plugin-config.telescope")
-- dashboard
-- require("plugin-config.dashboard")
require("plugin-config.alpha")
-- project
require("plugin-config.project")
-- treesitter
require("plugin-config.nvim-treesitter")
-- coc
require("plugin-config.coc")
-- copilot
require("plugin-config.copilot")
-- code formatter
require("plugin-config.null-ls")
-- 注释快捷键
require("plugin-config.comment")
-- 作用域连线
require("plugin-config.indent-blankline")
require("plugin-config.gitsigns")
require("plugin-config.nvim-osc52")
-- 自动选择输入法
require("plugin-config.im-select")
