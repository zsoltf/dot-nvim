vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
vim.keymap.set("n", "<leader>ga", ":Git commit --amend<CR>")
vim.keymap.set("n", "<leader>gl", ":Git log<CR>")
vim.keymap.set("n", "<leader>gp", ":Git pull<CR>")
vim.keymap.set("n", "<leader>gu", ":Git push<CR>")
vim.keymap.set("n", "<leader>gd", ":Gvdiff<CR>")
vim.keymap.set("n", "<leader>gd1", ":Gvdiff HEAD~1<CR>")
vim.keymap.set("n", "<leader>gd2", ":Gvdiff HEAD~2<CR>")

local localFugitive = vim.api.nvim_create_augroup("localFugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = localFugitive,
    pattern = "*",
    callback = function()

        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "q", ":close<CR>", opts)
        vim.keymap.set("n", "cc", ":Git commit<CR>", opts)
    end,
})
