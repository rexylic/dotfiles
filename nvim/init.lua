local g = vim.g
g.mapleader = ","
g.maplocalleader = "\\"
g.vimtex_view_method = 'skim'
g.vimtex_quickfix_ignore_filters = { 'Overfull' }

local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end
require('mini.deps').setup { path = { package = path_package } }
local now, later, add = MiniDeps.now, MiniDeps.later, MiniDeps.add

add { source = 'cormacrelf/dark-notify' }
add { source = 'neanias/everforest-nvim' }
add { source = 'neovim/nvim-lspconfig' }
add {
  source = 'nvim-treesitter/nvim-treesitter',
  hooks = {
    post_checkout = function() vim.cmd('TSUpdate') end,
  },
}
add { source = 'nvim-treesitter/nvim-treesitter-context' }
add { source = 'nvim-treesitter/nvim-treesitter-textobjects' }
add { source = 'lervag/vimtex' }

now(function() -- load now
  require('dark_notify').run()
  require('everforest').setup {
    background = 'hard',
    sign_column_background = 'grey',
    ui_contrast = 'high',
    diagnostic_line_highlight = true,
    inlay_hints_background = 'dimmed',
  }
  require('mini.starter').setup {}
  require('mini.statusline').setup {}
  require('mini.tabline').setup {}
end)

now(function() -- vim
  vim.cmd('colorscheme everforest')
  vim.cmd('filetype plugin indent on')
  vim.cmd('syntax enable')
  local o = vim.opt
  o.autoindent = true
  o.colorcolumn = '81,101,121'
  o.cursorline = true
  o.expandtab = true
  o.fillchars = "fold: "
  o.foldenable = true
  o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  o.foldlevel = 6
  o.foldmethod = 'expr'
  o.formatoptions = 'roqlj'
  o.hidden = false
  o.hlsearch = false
  o.ignorecase = true
  o.inccommand = 'split'
  o.number = true
  o.showmode = false
  o.shiftwidth = 2
  o.signcolumn = 'number'
  o.tabstop = 2
  o.softtabstop = 2
  o.smartindent = true
  o.smarttab = true
  o.termguicolors = true
end)

now(function() -- neovide
  if vim.g.neovide then
    vim.opt.guifont = "Pragmata Nerd Font:h16"
    vim.g.neovide_padding_top = 12
    vim.g.neovide_padding_right = 12
    vim.g.neovide_padding_bottom = 12
    vim.g.neovide_padding_left= 12
  end
end)

later(function() -- load plugins later
  require('mini.ai').setup {}
  require('mini.bracketed').setup {}
  do -- mini.clue
    local mc = require('mini.clue')
    mc.setup {
      clues = {
        -- Builtin
        mc.gen_clues.builtin_completion(),
        mc.gen_clues.g(),
        mc.gen_clues.marks(),
        mc.gen_clues.registers(),
        mc.gen_clues.windows(),
        mc.gen_clues.z(),
        -- Secondary groups
        { mode = 'n', keys = '<Leader><Space>', desc = '+Pick' },
        { mode = 'n', keys = '<LocalLeader>l', desc = '+VimTex' },
        -- VimTex
        { mode = 'n', keys = '<LocalLeader>la', desc = 'Context menu' },
        { mode = 'n', keys = '<LocalLeader>lc', desc = 'Clean' },
        { mode = 'n', keys = '<LocalLeader>lC', desc = 'Full clean' },
        { mode = 'n', keys = '<LocalLeader>le', desc = 'Errors' },
        { mode = 'n', keys = '<LocalLeader>lg', desc = 'Status' },
        { mode = 'n', keys = '<LocalLeader>lG', desc = 'All status' },
        { mode = 'n', keys = '<LocalLeader>li', desc = 'Info' },
        { mode = 'n', keys = '<LocalLeader>lI', desc = 'Full info' },
        { mode = 'n', keys = '<LocalLeader>lk', desc = 'Stop' },
        { mode = 'n', keys = '<LocalLeader>lK', desc = 'Stop all' },
        { mode = 'n', keys = '<LocalLeader>ll', desc = 'Compile' },
        { mode = 'x', keys = '<LocalLeader>lL', desc = 'Compile selected' },
        { mode = 'n', keys = '<LocalLeader>lm', desc = 'List imaps' },
        { mode = 'n', keys = '<LocalLeader>lo', desc = 'Compile output' },
        { mode = 'n', keys = '<LocalLeader>lq', desc = 'Log' },
        { mode = 'n', keys = '<LocalLeader>lr', desc = 'Reverse search' },
        { mode = 'n', keys = '<LocalLeader>ls', desc = 'Toggle main' },
        { mode = 'n', keys = '<LocalLeader>lt', desc = 'Open ToC' },
        { mode = 'n', keys = '<LocalLeader>lT', desc = 'Toggle ToC' },
        { mode = 'n', keys = '<LocalLeader>lv', desc = 'View' },
        { mode = 'n', keys = '<LocalLeader>lx', desc = 'Reload' },
        { mode = 'n', keys = '<LocalLeader>lX', desc = 'Reload state' },
      },
      triggers = {
        -- Leader
        { mode = 'n', keys = '<Leader>' },
        { mode = 'x', keys = '<Leader>' },
        -- Local Leader
        { mode = 'n', keys = '<LocalLeader>' },
        { mode = 'x', keys = '<LocalLeader>' },
        -- Built-in completion
        { mode = 'i', keys = '<C-x>' },
        -- `g` key
        { mode = 'n', keys = 'g' },
        { mode = 'x', keys = 'g' },
        -- Marks
        { mode = 'n', keys = "'" },
        { mode = 'n', keys = '`' },
        { mode = 'x', keys = "'" },
        { mode = 'x', keys = '`' },
        -- Registers
        { mode = 'n', keys = '"' },
        { mode = 'x', keys = '"' },
        { mode = 'i', keys = '<C-r>' },
        { mode = 'c', keys = '<C-r>' },
        -- `z` key
        { mode = 'n', keys = 'z' },
        { mode = 'x', keys = 'z' },
        -- Brackets
        { mode = 'n', keys = '[' },
        { mode = 'n', keys = ']' },
        { mode = 'x', keys = '[' },
        { mode = 'x', keys = ']' },
      },
      window = {
        config = {
          width = 'auto',
        },
        delay = 0,
        scroll_down = '<Down>',
        scroll_up = '<Up>',
      },
    }
  end
  require('mini.comment').setup {
    mappings = {
      comment_line = '<leader>c',
      comment_visual = '<leader>c',
    },
  }
  require('mini.completion').setup {}
  require('mini.extra').setup {}
  require('mini.diff').setup {}
  require('mini.git').setup {}
  require('mini.icons').setup {}
  require('mini.jump').setup {}
  require('mini.jump2d').setup {}
  require('mini.files').setup {}
  require('mini.move').setup {}
  require('mini.pick').setup {}
  require('mini.splitjoin').setup {
    mappings = {
      toggle = '<Leader>m',
    },
  }
  require('mini.surround').setup {}
  require('treesitter-context').setup { enable = true }
end)

later(function() -- leader key mappings
  local lc = function(suffix, command, desc) -- command
    vim.keymap.set(
    'n',
    '<Leader>' .. suffix,
    '<Cmd>' .. command .. '<CR>',
    { desc = desc }
    )
  end
  local lk = function(suffix, keycombo, desc) -- key sequence
    vim.keymap.set('n', '<Leader>' .. suffix, keycombo, { desc = desc })
  end
  lc('!', 'q!', 'Quit without saving')
  lc('b', 'split', 'Open buffer')
  lc('B', 'bd', 'Close buffer')
  lc('d', 'lua vim.diagnostic.open_float()', 'Diagnose line')
  lc('D', 'lua MiniDiff.toggle_overlay()', 'Diff overlay')
  lc('f', 'lua MiniFiles.open()', 'Explore files')
  lc('q', 'x', 'Save and quit')
  lc('s', 'w', 'Save')
  lc('S', 'w<CR>:source', 'Save and source')
  lc('t', 'tabnew', 'Open tab')
  lc('T', 'tabclose', 'Close tab')
  lc('<Space>b', 'Pick buffers', 'Buffers')
  lc('<Space>d', 'Pick diagnostic', 'Diagnostic')
  lc('<Space>f', 'Pick files', 'Files')
  lc('<Space>h', 'Pick help', 'Help')
  lc('<Space>m', 'Pick marks', 'Marks')
  lc('<Space>r', 'Pick registers', 'Registers')
  lk('v', '<C-w>t<CR><C-w>H', 'Split to vertical')
  lc('w', 'q', 'Quit')
end)

later(function() -- local leader key mappings
  local ll = function(suffix, command, desc) -- command
    vim.keymap.set(
    'n',
    '<LocalLeader>' .. suffix,
    '<Cmd>' .. command .. '<CR>',
    { desc = desc }
    )
  end
  ll('[', 'LspStart', 'Start client')
  ll(']', 'LspStop', 'Stop client')
  ll('d', 'Pick diagnostic', 'Diagnostic')
  ll('f', 'lua vim.lsp.buf.format()', 'Format file')
  ll('s', 'Pick lsp scope="document_symbol"', 'Document symbols')
  ll('t', 'Pick treesitter', 'Treesitter nodes')
  ll('m', 'TSJToggle', 'Toggle multiline')
  ll('w', 'Pick lsp scope="workspace_symbol"', 'Workspace symbols')
end)

later(function() -- use tab for completion
  local imap_expr = function(lhs, rhs)
    vim.keymap.set('i', lhs, rhs, { expr = true })
  end
  imap_expr('<Tab>',   [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
  imap_expr('<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
end)

later(function() -- more consistent behaviour of <CR>
  local keycode = vim.keycode or function(x)
    return vim.api.nvim_replace_termcodes(x, true, true, true)
  end
  local keys = {
    ['cr']        = keycode('<CR>'),
    ['ctrl-y']    = keycode('<C-y>'),
    ['ctrl-y_cr'] = keycode('<C-y><CR>'),
  }
  _G.cr_action = function()
    if vim.fn.pumvisible() ~= 0 then
      -- If popup is visible, confirm selected item or add new line otherwise
      local item_selected = vim.fn.complete_info()['selected'] ~= -1
      return item_selected and keys['ctrl-y'] or keys['ctrl-y_cr']
    else
      -- If popup is not visible, use plain `<CR>`. You might want to customize
      -- according to other plugins. For example, to use 'mini.pairs', replace
      -- next line with `return require('mini.pairs').cr()`
      return require('mini.pairs').cr()
    end
  end
  vim.keymap.set('i', '<CR>', 'v:lua._G.cr_action()', { expr = true })
end)

later(function() -- language server protocol (LSP)
  local lc = require('lspconfig')
  lc.html.setup {}
  lc.rust_analyzer.setup {}
  lc.sourcekit.setup {}
  lc.texlab.setup {}
  lc.lua_ls.setup {
    settings = {
      diagnostics = {
        globals = { 'vim', 'MiniDeps' },
      }
    }
  }
end)

later(function() -- vim diagnostic
  vim.diagnostic.config {
    virtual_text = false,
    severity_sort = true,
  }
end)

