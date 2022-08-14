-- ================
-- === 插件管理 ===
-- ================

-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    vim.notify("正在安装Pakcer.nvim，请稍后...")
    paccker_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        -- "https://gitcode.net/mirrors/wbthomason/packer.nvim",
        install_path,
    })

    -- https://github.com/wbthomason/packer.nvim/issues/750
    local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
    if not string.find(vim.o.runtimepath, rtp_addition) then
        vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
    end
    vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("没有安装 packer.nvim")
    return
end

packer.startup({
    function(use)
        -- Packer可以管理自己本身
        use("wbthomason/packer.nvim")

        -- 我的插件列表

        -- 主题
        use("folke/tokyonight.nvim")

        -- 侧边栏 nvim-tree
        use({"kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-web-devicons"
        })

        -- 顶部标签页 bufferline
        use({
            "akinsho/bufferline.nvim",
            requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
        })

        -- 底部信息栏 lualine
        use({
            "nvim-lualine/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons" }
        })
        use("arkav/lualine-lsp-progress")

        -- 模糊搜索 telescope
        use({ 'nvim-telescope/telescope.nvim',
            requires = { "nvim-lua/plenary.nvim" }
        })
        -- telescope extensions
        use("LinArcX/telescope-env.nvim")

        -- dashboard
        use({
            "glepnir/dashboard-nvim",
        })
        use("ahmedkhalf/project.nvim")

        -- treesitter
        use({"nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        })

        -- Auto complete
        --use({'neoclide/coc.nvim',
        --    branch = 'release'
        --})

        -- copilot
        use("github/copilot.vim")

        if paccker_bootstrap then
            packer.sync()
        end

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

