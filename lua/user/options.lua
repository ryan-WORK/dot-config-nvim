-- :help options
--vim.opt.macos_option_as_alt = 'yes'
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height

vim.opt.showmode = false                         -- TODO: we don't need to see things like -- INSERT -- anymore

vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile

vim.opt.termguicolors = true                   -- TODO: set term gui colors (not supported on MACOS Terminal.app)
--vim.opt.background = 'dark'

vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
--vim.opt.undodir = '~/.vim/undodir'
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 4                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
vim.cmd [[syntax on]]


--vim.cmd([[
--filetype indent on
--]])
--set.foldmethod = 'marker'
--set.fileformat = 'unix'
--set.wrapscan = true  --begin search from top of file when nothing is found anymore
--set.softtabstop = 4
--vim.cmd([[
--set fillchars+=vert:\
--]])
-- set fillchars+=vert:\  " remove chars from seperators
--set.fillchars = {
--  fold = " ", -- remove folding chars
--  vert = "\\", -- set vsplit chars
--}
--set.history = 1000  -- remember more commands and search history
--set.breakindent = true
--set.showbreak='..'
--set.lbr = true
--set.showcmd = false
--set.laststatus = 2  --always slow statusline
--set.incsearch = true
--vim.cmd([[
--set cpoptions+=x 
--]])
--set.cpoptions+=x  --stay at seach item when <esc>
--set.errorbells = false  --remove bells (i think this is default in neovim)
--set.visualbell = true
--vim.cmd([[
--set t_vb=
--]])
--set.t_vb = ''
--vim.cmd([[
--set viminfo='20,<1000
--]])
--set.viminfo = '20,<1000  --allow copying of moreto



