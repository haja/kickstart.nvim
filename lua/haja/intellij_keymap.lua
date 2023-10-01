return {
  general = function()
    local telescope = require('telescope.builtin')
    vim.keymap.set('n', '<C-e>', telescope.oldfiles, { desc = '[C-e] Find recently opened files' })
    vim.keymap.set('n', '<C-h>', telescope.live_grep, { desc = '[C-h] Grep in files' })
    vim.keymap.set('n', '<M-Left>', '<C-o>', { desc = '[M-Left] Jump back' })
    vim.keymap.set('n', '<M-Right>', '<C-i>', { desc = '[M-Right] Jump forward' })
  end,

  lsp = function(nmap)
    local telescope = require('telescope.builtin')
    nmap('<F3>', telescope.lsp_definitions, 'Go to definition(s)')
    nmap('<C-g>', telescope.lsp_implementations, 'Go to implementations')
    nmap('<leader>ff', vim.lsp.buf.format, 'Format')
  end,
}
