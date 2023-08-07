vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", vim.cmd.Ex)

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever TODO wtf is this prime?
vim.keymap.set("x", "<leader>P", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>=", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>R", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/zsoltaire/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<C-x>", "<cmd>:w<CR>")

vim.keymap.set("n", "<C-n>", "<cmd>:bn<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>:bp<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>:bd!<CR>")

vim.keymap.set("n", "<leader>l", "<cmd>:lopen<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>:Copen<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>:ccl<CR>")

vim.keymap.set("n", "<leader>z", "zMzozozozozozozozozz")
vim.keymap.set("n", "<leader>Z", "zazAzt")

vim.keymap.set("n", "<leader>T", ":terminal<CR>")
