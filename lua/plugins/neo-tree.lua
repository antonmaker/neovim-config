return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem focus<CR>')
    vim.keymap.set('n', '<leader>nf', ':Neotree filesystem focus<CR>')
    vim.keymap.set('n', '<leader>nb', ':Neotree buffers toggle left<CR>')
    vim.keymap.set('n', '<leader>nh', ':Neotree filesystem toggle left<CR>')
    vim.keymap.set('n', '<leader>nc', ':Neotree filesystem close<CR>')
  end
}
