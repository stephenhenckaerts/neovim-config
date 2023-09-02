-- Load the required telescope modules
local builtin = require('telescope.builtin')

-- Keymap configuration for Telescope

-- Map <leader>pf to open the Telescope file finder
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Map Ctrl-p to open Telescope with the list of files in the current git repository
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Map <leader>ps to grep (search) for a string across files.
-- It prompts the user for the string to search for.
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Telescope setup to customize its behavior
require('telescope').setup{
    defaults = {
        -- You can set other default configurations here...

        -- Set custom keybindings for Telescope's insert mode
        mappings = {
            i = {
                -- Map Ctrl-i to split horizontally and open the selected file/item
                ["<C-s>"] = require("telescope.actions").select_horizontal,
                
                -- Map Ctrl-s to split vertically and open the selected file/item
                ["<C-i>"] = require("telescope.actions").select_vertical
            }
        }
    }
}

