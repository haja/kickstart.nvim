return {
  general = function()
    local telescope = require('telescope.builtin')
    local nmap = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { desc = desc })
    end

    vim.keymap.set('n', '<C-e>', telescope.oldfiles, { desc = '[C-e] Find recently opened files' })
    vim.keymap.set('n', '<C-h>', telescope.live_grep, { desc = '[C-h] Grep in files' })
    vim.keymap.set('n', '<M-Left>', '<C-o>', { desc = '[M-Left] Jump back' })
    vim.keymap.set('n', '<M-Right>', '<C-i>', { desc = '[M-Right] Jump forward' })
  end,

  lsp = function(nmap)
    local telescope = require('telescope.builtin')

    -- movement
    nmap('<F3>', telescope.lsp_definitions, 'Go to definition(s)')
    nmap('<C-g>', telescope.lsp_implementations, 'Go to implementations')
    nmap('<F8>', telescope.lsp_incoming_calls, 'List incoming calls')
    nmap('<F9>', telescope.lsp_outgoing_calls, 'List outgoing calls')

    nmap('<C-S-S>', telescope.lsp_workspace_symbols, 'List workspace symbols')
    nmap('<leader>gt', telescope.lsp_type_definitions, '[G]o to [T]ype Definitions') -- TODO add to IDEA, add to popup menu

    -- refactor
    nmap('<M-S-r>', '', '')
    -- info
    nmap('<F2>', vim.lsp.buf.hover, 'Hover Information')

    -- misc
    nmap('<leader>ff', vim.lsp.buf.format, 'Format')
    nmap('<C-S-f>', vim.lsp.buf.format, 'Format')
  end,
}
