-- ~/.config/nvim/lua/plugins/trnu.lua

local M = {}

-- Function to toggle 'number' and 'relativenumber'
function M.toggle_trnu()
    local number = vim.wo.number
    local relativenumber = vim.wo.relativenumber

    if number and relativenumber then
        -- Both are enabled; disable both
        vim.wo.number = false
        vim.wo.relativenumber = false
        vim.notify("Line numbers and relative line numbers disabled.", vim.log.levels.INFO)
    else
        -- Either one or both are disabled; enable both
        vim.wo.number = true
        vim.wo.relativenumber = true
        vim.notify("Line numbers and relative line numbers enabled.", vim.log.levels.INFO)
    end
end

-- Setup function to define commands and key mappings
function M.setup()
    -- Define a custom command :Trnu to toggle line numbers
    vim.api.nvim_create_user_command('Trnu', M.toggle_trnu, {})

    -- Define a key mapping, e.g., <Leader>tn to toggle trnu
    vim.keymap.set('n', '<Leader>tn', ':Trnu<CR>', { noremap = true, silent = true })

    -- Optional: Set initial state on VimEnter
    vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
            -- Example: Ensure line numbers are off on startup
            -- Uncomment the next two lines if desired
            -- vim.wo.number = false
            -- vim.wo.relativenumber = false
        end,
    })
end

return M
