return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- empty setup using defaults
    require("nvim-tree").setup()
    
    -- set keymaps for when nvim-tree loads
    local keymap = vim.keymap -- conciseness, apparently
    -- keymap.set("n", "<leader>pv", "<cmd>NvimTreeToggle<CR>") -- not actually useful tbh
    keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<CR>")
    keymap.set("n", "<leader>pr", "<cmd>NvimTreeRefresh<CR>")
  end,
}
