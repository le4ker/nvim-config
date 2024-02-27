local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.markdownlint.with {
      extra_args = {
        "--config",
        vim.fn.expand "~/.config/nvim/configs/markdownlint.yaml",
      },
    },
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.prettier.with {
      extra_args = {
        "--config",
        vim.fn.expand "~/.config/nvim/configs/prettier.yaml",
      },
    },
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua.with {
      extra_args = {
        "--config-path",
        vim.fn.expand "~/.config/nvim/configs/stylua.toml",
      },
    },
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.yamlfmt,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          if vim.g.format_on_save then
            vim.lsp.buf.format { bufnr = bufnr }
          end
        end,
      })
    end
  end,
}

return opts
