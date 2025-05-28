vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.textwidth = 80

function ReplaceChinesePunctuation()
  vim.api.nvim_command('silent! %s/，/, /g')
  vim.api.nvim_command('silent! %s/“\\|”/"/g')
  vim.api.nvim_command([[silent! %s/‘\|’/'/g]])
  vim.api.nvim_command('silent! %s/；/; /g')
  vim.api.nvim_command('silent! %s/：/: /g')
  vim.api.nvim_command('silent! %s/！/! /g')
  vim.api.nvim_command('silent! %s/？/? /g')
  vim.api.nvim_command('silent! %s/（/(/g')
  vim.api.nvim_command('silent! %s/）/)/g')
  vim.api.nvim_command('silent! %s/【/[/g')
  vim.api.nvim_command('silent! %s/】/]/g')
  vim.api.nvim_command('silent! %s/《/</g')
  vim.api.nvim_command('silent! %s/》/>/g')
  vim.api.nvim_command('silent! %s/、/, /g')
  vim.api.nvim_command('silent! %s/…/.../g')
  vim.api.nvim_command('silent! %s/·/`/g')
  vim.api.nvim_command('nohlsearch')
  vim.api.nvim_command('silent! %s/。/;/g')
  vim.api.nvim_command('silent! %s/～/~/g')
  vim.api.nvim_command('silent! :Format<CR>')
end

-- 设置快捷键映射（Leader 键 + rp）
vim.keymap.set('n', '<leader>rp', ReplaceChinesePunctuation, { noremap = true, silent = true, desc = "Replace Chinese punctuation" })
