vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest,full"
vim.opt.backspace = "indent,eol,start"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.equalalways = true
vim.opt.list = true
--TODO this desn't work for some reason
--vim.opt.listchars="tab:۰,trail:∙,extends:→,precedes:←"
--vim.opt.fillchars="vert:┃,stlnc:_,diff:─"
vim.opt.shortmess="filmnrxoOtT"
vim.opt.scrolljump=2
vim.opt.scrolloff=2
vim.opt.foldenable = true
vim.opt.foldmethod="syntax"
vim.opt.foldlevelstart=99
vim.opt.comments="sl:/*,mb:*,elx:*/"
vim.opt.cursorline = true
vim.opt.foldcolumn = "0"
vim.opt.viewoptions = "folds,cursor"
vim.opt.sessionoptions:remove("curdir")
