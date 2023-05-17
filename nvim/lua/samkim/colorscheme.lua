-- local colorscheme = "dracula"
local colorscheme = "gruvbox"

-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

vim.cmd("hi! link SignColumn LineNr")
vim.cmd("hi! clear CursorLineNR")
vim.cmd("hi clear CursorLine")
vim.cmd("hi CursorLine gui=underline cterm=underline")

vim.cmd("hi illuminatedWord cterm=underline gui=underline")
vim.cmd("hi link illuminatedWord Visual")

-- Gruvbox colors
vim.cmd("hi GitSignsAdd guifg=#b8bb26 guibg=#282828")
vim.cmd("hi GitSignsChange guifg=#fabd2f guibg=#282828")
vim.cmd("hi GitSignsDelete guifg=#fb4934 guibg=#282828")
