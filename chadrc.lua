local M = {}
M.ui = {
    theme = 'catppuccin',
    statusline = {
        theme = "vscode_colored",
        separator_style = "catppuccin",
        overriden_modules = nil,
      },

}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
return M
