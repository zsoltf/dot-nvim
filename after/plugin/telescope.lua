require("telescope").setup({
  extensions = {
    ["frecency"] = {
      default_workspace = 'CWD'
    },
    ["zf-native"] = {
      -- options for sorting file-like items
      file = {
        -- override default telescope file sorter
        enable = true,

        -- highlight matching text in results
        highlight_results = true,

        -- enable zf filename match priority
        match_filename = true,
      },

      -- options for sorting all other items
      generic = {
        -- override default telescope generic item sorter
        enable = true,

        -- highlight matching text in results
        highlight_results = true,

        -- disable zf filename match priority
        match_filename = false,
      },
    }
  },
})

require('telescope').load_extension('projects')
require("telescope").load_extension("zf-native")
--require("telescope").load_extension("fzy_native")
if vim.loop.os_uname().sysname ~= "Windows_NT" then
    require"telescope".load_extension("frecency")
end
require("telescope").load_extension "file_browser"

local builtin = require('telescope.builtin')
local projects = require('telescope').extensions.projects.projects
vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>', {})
vim.keymap.set('n', '<leader>F', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>O', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>o', ':Telescope frecency<CR>', {})
vim.keymap.set('n', '<leader>c', builtin.commands, {})
vim.keymap.set('n', '<leader>;', builtin.command_history, {})
vim.keymap.set('n', '<leader><leader>', ':Telescope<CR>', {})
vim.keymap.set('n', '<leader>t', builtin.treesitter, {})
vim.keymap.set('n', '<leader>r', builtin.registers, {})

vim.keymap.set('n', '<leader>p', projects, {})
