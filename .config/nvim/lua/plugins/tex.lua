return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.g.vimtex_syntax_conceal_disable = 1
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

      vim.api.nvim_set_hl(0, "@module.latex", { link = "@function" })
      vim.api.nvim_set_hl(0, "@function.macro.latex", { link = "@keyword.import" })
      vim.api.nvim_set_hl(0, "@markup.math.latex", { link = "@keyword" })
      vim.api.nvim_set_hl(0, "@markup.heading.1.latex", { fg = "#E1E1E1", bold = true, underdashed = true })
      vim.api.nvim_set_hl(0, "@markup.heading.2.latex", { fg = "#E1E1E1", bold = true, underdashed = true })
      vim.api.nvim_set_hl(0, "@markup.heading.3.latex", { fg = "#E1E1E1", bold = true, underdashed = true })
      vim.api.nvim_set_hl(0, "@markup.heading.4.latex", { fg = "#E1E1E1", bold = true, underdashed = true })
      vim.api.nvim_set_hl(0, "@markup.heading.5.latex", { fg = "#E1E1E1", bold = true, underdashed = true })
      vim.api.nvim_set_hl(0, "@markup.link.latex", { fg = "#E1E1E1" })
    end,
    keys = {
      { "<localLeader>l", "", desc = "+vimtext" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.highlight = opts.highlight or {}
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "bibtex", "latex" })
      end
      --[[
      if type(opts.highlight.disable) == "table" then
        vim.list_extend(opts.highlight.disable, { "latex" })
      else
        opts.highlight.disable = { "latex" }
      end
      --]]
    end,
  },
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        texlab = {
          keys = {
            { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
          },
        },
      },
    },
  },
}
