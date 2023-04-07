local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "lua-language-server",
				"stylua",
				-- web dev
				"css-lsp",
				"deno",
				"emmet-ls",
				"eslint-lsp",
				"html-lsp",
				"json-lsp",
				"typescript-language-server",
				"yaml-language-server",
        "prettier",
        -- "pyright",
        "prisma-language-server",
        "tailwindcss-language-server",
        "vim-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "python-lsp-server",
        "pyright",
        "autopep8",
        "flake8",
        
			},
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
      },
      {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
      },
      {
        "lukas-reineke/lsp-format.nvim",
        config = function()
          require "custom.configs.lsp-format"
        end,
      }
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"

    end,z
  },
  {
    "jayp0521/mason-null-ls.nvim",
    lazy = true,
    dependencies = "jose-elias-alvarez/null-ls.nvim",
    event = "BufRead",
    opts = function()
      require "custom.configs.mason_null_ls"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts={
      auto_install = true,
    }
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
 
}



return plugins
