require('haja.remap')
require('haja.set')
require('haja.command')
local intellij_keymap = require('haja.intellij_keymap')

if vim.g.neovide then
    require('haja.neovide')
end

-- needed for kitty keyboard protocol / wezterm. seems unsupported vai tmux
--vim.cmd([[autocmd UIEnter * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[>1u") | endif]])
--vim.cmd([[autocmd UILeave * if v:event.chan ==# 0 | call chansend(v:stderr, "\x1b[<1u") | endif]])

vim.cmd [[
map <c-i> :echo "hello"<CR>
map <tab> :echo "awesome"<CR>
nmap <C-M-f> :echo "ctrl meta f"<CR>
nmap <C-f> :echo "ctrl f"<CR>
nmap <C-S-f> :echo "ctrl shift f"<CR>
nmap <C-S-F> :echo "ctrl shift F"<CR>
]]

intellij_keymap.general()
