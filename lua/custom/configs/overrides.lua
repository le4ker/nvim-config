local M = {}

-- NvimTree git support
M.nvimtree = {
  filters = {
    dotfiles = true,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
   icons = {
      show = {
        git = true,
      },
    },
  },
}

-- inline git blame
M.gitsigns = {
  current_line_blame = true,
}

-- syntax highlight
M.treesitter = {
  ensure_installed = {
    "bash",
    "cpp",
    "css",
    "diff",
    "dockerfile",
    "go",
    "gosum",
    "gomod",
    "git_config",
    "graphql",
    "html",
    "javascript",
    "json",
    "markdown",
    "python",
    "toml",
    "tsx",
    "yaml",
  },
}

-- LSPs, Linters, Debuggers and Formatters
M.mason = {
  ensure_installed = {
    "black",
    "clangd",
    "clang-format",
    "debugpy",
    "delve",
    "gopls",
    "markdownlint",
    "marksman",
    "pyright",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
