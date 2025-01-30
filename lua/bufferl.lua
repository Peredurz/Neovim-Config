require("bufferline").setup {
    options = {
        -- Lighter separator for better aesthetics
        separator_style = "slant",
        -- Show close icons on buffers
        show_buffer_close_icons = true,
        show_close_icon = false,
        -- Enables highlighting for the active buffer
        always_show_bufferline = false,
        -- Add buffer numbers to help identify them quickly
        numbers = "ordinal",
        -- Ensure buffer names are unique
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },
        -- Show LSP diagnostics in the bufferline
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        -- Modify buffer sort function (optional)
        sort_by = 'insert_after_current',
        -- Better navigation between buffers
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        hover = {
            enabled = true,
            delay = 20,
            reveal = {'close'}
        }
    },
}
