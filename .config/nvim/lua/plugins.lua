-- ================
-- === 插件管理 ===
-- ================

local packer = require("packer")
packer.startup({
    function(use)
        -- Packer可以管理自己本身
        use("wbthomason/packer.nvim")

        -- 我的插件列表

        -- 主题
        use("folke/tokyonight.nvim")

        -- 侧边栏 nvim-tree
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })

        -- 顶部标签页 bufferline
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })

        -- 底部信息栏 lualine
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")

        -- 模糊搜索 telescope
        use({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })
        -- telescope extensions
        use("LinArcX/telescope-env.nvim")

        -- dashboard
        use("glepnir/dashboard-nvim")
        use("ahmedkhalf/project.nvim")

        -- treesitter
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

        -- copilot
        use("github/copilot.vim")

        -- Auto complete
        use({ 'neoclide/coc.nvim', branch = 'release'})

    end,
    config = {
        -- 并发数限制
        max_jobs = 4,

--        display = {
--            open_fn = require("packer.util").float
--        }

    },
})



-- 每次保存 plugins.lua 自动安装插件
pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)

