local M = {}

-- -- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-a>"] = "",
    ["<leader>s"] = "",
    ["<leader>v"] = "",
    ["<leader>q"] = "",
  },
}

M.custom = {
  n = {
    ["<leader>ss"] = { "<cmd> sp <CR>" },
    ["<leader>sv"] = { "<cmd> vsp <CR>" },
    ["<leader><Left>"] = { "<C-w>h" },
    ["<leader><Right>"] = { "<C-w>l" },
    ["<leader><Down>"] = { "<C-w>j" },
    ["<leader><Up>"] = { "<C-w>k" },
    ["<leader>sq"] = { "<C-w>q" },
  },
}
M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
    },
  },
}

return M
