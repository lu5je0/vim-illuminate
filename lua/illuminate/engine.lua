local M = {}

local ILLUMINATE_AUGROUP = 'illuminate_augroup_v2'

local function on_cursor_moved()
    -- if cursor not in references
    --  clear highlights
    --  debounce
    --   clear highlights
    --   new highlight
end

function M.setup_autocmds()
    vim.api.nvim_create_augroup(ILLUMINATE_AUGROUP, {clear=true})
    vim.api.nvim_create_autocmd({'CursorMoved', 'CursorMovedI'}, {
        group = ILLUMINATE_AUGROUP,
        callback = function()
            on_cursor_moved()
        end
    })
end

return M
