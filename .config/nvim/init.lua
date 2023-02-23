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
-- 启动画面
require("plugin-config.alpha")
-- project
require("plugin-config.project")
-- treesitter
require("plugin-config.nvim-treesitter")
-- coc
require("plugin-config.coc")
-- copilot
-- 使用懒加载，配置文件写在plugins里
-- require("plugin-config.copilot")
-- 代码格式化
require("plugin-config.null-ls")
-- 注释快捷键
require("plugin-config.comment")
-- 作用域连线
require("plugin-config.indent-blankline")
-- git
require("plugin-config.gitsigns")
-- ssh复制
require("plugin-config.nvim-osc52")
-- 自动选择输入法
require("plugin-config.im-select")
-- 代码运行
require("plugin-config.sniprun")
