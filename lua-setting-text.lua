-- Basic Neovim Settings
vim.opt.number = true           -- Line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 2          -- 2 spaces for indentation
vim.opt.tabstop = 2             -- 2 spaces for tab
vim.opt.smartindent = true      -- Smart indentation
vim.opt.wrap = false            -- Don't wrap lines
vim.opt.ignorecase = true       -- Ignore case in search
vim.opt.smartcase = true        -- Case sensitive if uppercase used
vim.opt.hlsearch = false        -- Don't highlight search
vim.opt.incsearch = true        -- Incremental search

-- Install lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin Setup
require("lazy").setup({
  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
    end
  },
  
  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { 
          "javascript", "typescript", "tsx", "html", "css", "scss", 
          "json", "markdown", "lua", "vim" 
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  
  -- Auto close HTML tags
  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false
        },
      })
    end
  },
  
  -- LSP for multiple languages
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- TypeScript/JavaScript LSP
      lspconfig.ts_ls.setup({
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        settings = {
          typescript = {
            preferences = {
              disableSuggestions = false,
            }
          }
        }
      })
      
      -- HTML LSP
      lspconfig.html.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        filetypes = { "html", "htmldjango" },
      })
      
      -- CSS LSP
      lspconfig.cssls.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        settings = {
          css = { validate = true },
          scss = { validate = true },
          less = { validate = true },
        }
      })
      
      -- TailwindCSS LSP
      lspconfig.tailwindcss.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        filetypes = { 
          "html", "css", "scss", "javascript", "javascriptreact", 
          "typescript", "typescriptreact", "svelte", "vue" 
        },
        settings = {
          tailwindCSS = {
            experimental = {
              classRegex = {
                "tw`([^`]*)",
                "tw=\"([^\"]*)",
                "tw={'([^'}]*)",
                "tw\\.\\w+`([^`]*)",
                "tw\\(.*?\\)`([^`]*)",
              },
            },
          },
        },
      })
      
      -- Emmet LSP for HTML/CSS
      lspconfig.emmet_ls.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })
    end
  },
  
  -- Auto completion with more sources
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",  -- Snippet collection
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      
      -- Load friendly snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }
      })
    end
  },
  
  -- Terminal inside Neovim
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        direction = "horizontal",
      })
    end
  },
  
  -- Auto save plugin
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true,
        execution_message = {
          message = function()
            return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
          end,
          dim = 0.18,
          cleaning_interval = 1250,
        },
        trigger_events = {"InsertLeave", "TextChanged"},
        condition = function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")
          
          if fn.getbufvar(buf, "&modifiable") == 1 and
             utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
            return true
          end
          return false
        end,
        write_all_buffers = false,
        debounce_delay = 135,
      })
    end
  },
  
  -- Auto pairs for brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
        ts_config = {
          lua = {'string', 'source'},
          javascript = {'string', 'template_string'},
          typescript = {'string', 'template_string'},
        },
        disable_filetype = { "TelescopePrompt", "spectre_panel" },
        fast_wrap = {
          map = '<M-e>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
          offset = 0,
          end_key = '$',
          keys = 'qwertyuiopzxcvbnmasdfghjkl',
          check_comma = true,
          highlight = 'PmenuSel',
          highlight_grey = 'LineNr'
        },
      })
      
      -- Integration with nvim-cmp
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end
  },
  
  -- Code formatter (supports all your languages)
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          html = { "prettier" },
          css = { "prettier" },
          scss = { "prettier" },
          json = { "prettier" },
          markdown = { "prettier" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end
  },
  
  -- Linting
  {
    "mfussenegger/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      }
      
      -- Auto lint on save and text change
      vim.api.nvim_create_autocmd({ "BufWritePost", "TextChanged", "InsertLeave" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end
  },
  
  -- TailwindCSS color preview
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = true,
          RRGGBBAA = false,
          AARRGGBB = false,
          rgb_fn = false,
          hsl_fn = false,
          css = false,
          css_fn = false,
          mode = "background",
          tailwind = true,  -- Enable tailwind colors
          sass = { enable = false },
        },
      })
    end
  },
  
  -- Better icons for file explorer
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end
  },
})

-- Key mappings
vim.g.mapleader = " "  -- Space as leader key

-- File explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Terminal toggle
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")

-- LSP mappings
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

-- Formatting mappings
vim.keymap.set("n", "<leader>f", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format code" })

-- Quick file navigation
vim.keymap.set("n", "<leader>w", ":w<CR>")  -- Save file
vim.keymap.set("n", "<leader>q", ":q<CR>")  -- Quit

-- Auto save settings
vim.opt.updatetime = 1000  -- 1 second delay

-- Auto save when text changes
vim.api.nvim_create_autocmd({"TextChanged", "TextChangedI"}, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
})

-- Auto save when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
})
