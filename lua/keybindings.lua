require('helpers/alias');
require('helpers/keybindings');

g.mapleader = ' '                                                 -- Use Space, like key for alternative hotkeys

-- LSP (все горячие клавиши начинаются с g), кроме ховера
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                      -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                     -- Rename an object

-- Telescope
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                    -- Goto declaration
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                    -- Show recent files
nm('<leader>o', '<cmd>Telescope git_files<CR>')                   -- Search for a file in project
nm('<leader><C-o>', '<cmd>Telescope find_files<CR>')              -- Search for a file (ignoring git-ignore)
nm('<leader>b', '<cmd>Telescope git_branches<CR>')                -- Show git branches
nm('<leader>f', '<cmd>Telescope live_grep<CR>')                   -- Find a string in project
nm('<leader>q', '<cmd>Telescope buffers<CR>')                     -- Show all buffers
nm('<leader>c', '<cmd>TodoTelescope<CR>')                           -- Show all special comments

-- Git
nm('<leader>gp', '<cmd>Gitsigns preview_hunk<CR>')                -- Show changes in hunk
nm('<leader>gb', '<cmd>Gitsigns blame_line<CR>')                  -- Show line history

-- Trouble
nm('<leader>x', '<cmd>TroubleToggle<CR>')                         -- Show all problems in project (with help of LSP)
nm('gr', '<cmd>Trouble lsp_references<CR>')                       -- Show use of object in project

-- Nvim Tree
nm('<leader>v', '<cmd>NvimTreeToggle<CR>')                        -- Toggle file explorer
