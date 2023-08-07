require("zsoltaire.set")
require("zsoltaire.remap")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.indent_guides_auto_colors = 0
vim.g.indent_guides_enable_on_vim_startup = 1
vim.g.indent_guides_guide_size = 1
vim.g.indent_guides_start_level = 3

if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.cmd('cd $USERPROFILE')
else
    vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
        command = "lcd $PWD",
        pattern = "*"
    })
end
