-- write with sudo (sudo write)
vim.api.nvim_create_user_command('Suw', ':w !sudo tee % >/dev/null', {})
