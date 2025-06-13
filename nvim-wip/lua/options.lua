vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.cursorline = false -- Highlight current line
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.wrap = false -- Don't wrap lines
vim.opt.scrolloff = 10 -- Keep 8 lines above/below cursor
vim.opt.sidescrolloff = 10
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go right
vim.opt.cursorline = true
vim.opt.undofile = true
vim.opt.showmode = false
-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = "a"
-- Enable break indent
vim.o.breakindent = true
-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300
-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
--vim.o.confirm = true
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.inccommand = "split"

-- TODO: disable this to get rid of the default command line, pro tip do it when all plugins play ball.
vim.opt.cmdheight = 0

--Tabs
--
--vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 4 -- Amount to indent with << and >>
vim.opt.tabstop = 4 -- How many spaces are shown per Tab
vim.opt.softtabstop = 4 -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line
