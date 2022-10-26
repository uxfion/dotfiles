-- 基础配置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer插件管理
require("plugins")

-- 主题设置
require("colorscheme")

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
require("plugin-config.dashboard")
-- project
require("plugin-config.project")
-- treesitter
require("plugin-config.nvim-treesitter")
-- coc
require("plugin-config.coc")

