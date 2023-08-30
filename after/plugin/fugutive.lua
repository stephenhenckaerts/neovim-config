local function warn_unsaved_buffers()
    local buffers = vim.api.nvim_list_bufs()
    for _, buf in ipairs(buffers) do
        if vim.api.nvim_buf_get_option(buf, "modified") and vim.api.nvim_buf_is_loaded(buf) then
            local bufname = vim.api.nvim_buf_get_name(buf)
            vim.api.nvim_err_writeln("Error: Buffer ("..bufname..") has unsaved changes.")
            return true
        end
    end
    return false
end

_G.safe_git = function()
    if not warn_unsaved_buffers() then
        vim.cmd("Git")
    end
end

vim.api.nvim_set_keymap("n", "<leader>ga", ":lua _G.safe_git()<CR>", { noremap = true, silent = true })

