local nmap_leader = function(suffix, rhs, desc)
	vim.keymap.set(
		'n',
		'<Leader>' .. suffix,
		'<Cmd>' .. rhs .. '<CR>',
		{ desc = desc }
	)
end

nmap_leader('b',  "Pick buffers",                      'Buffers')
nmap_leader('c',  "Pick commands",                     'Commands')
nmap_leader('d',  "Pick diagnostic",                   'Diagnostic')
nmap_leader('e',  'lua MiniFiles.open()',              'Explorer')
nmap_leader('f',  "Pick files",                        'Files')
nmap_leader('h',  "Pick help",                         'Help')
nmap_leader('j',  "TSJToggle",                         'Split/Join')
nmap_leader('k',  "Pick keymaps",                      'Keymaps')
nmap_leader('m',  "Pick marks",                        'Marks')
nmap_leader('p',  "Lazy",                              'Plugins')
nmap_leader('r',  "Pick registers",                    'Registers')
nmap_leader('s',  "VsnipOpenEdit -format snipmate",    'Snippets')
nmap_leader('t',  "Telescope treesitter",              'Treesitter')
nmap_leader('z',  "ZenMode",                           'Zen')

nmap_leader('lc', "Pick lsp scope='declaration'",      'Declaration')
nmap_leader('ld', "Pick lsp scope='definition'",       'Definition')
nmap_leader('lf', 'lua vim.lsp.buf.format()',          'Format')
nmap_leader('li', "Pick lsp scope='implementation'",   'Implementation')
nmap_leader('ln', 'lua vim.lsp.buf.rename()',          'Rename')
nmap_leader('lr', "Pick lsp scope='references'",       'References')
nmap_leader('ls', "Pick lsp scope='document_symbol'",  'Document Symbols')
nmap_leader('lt', "Pick lsp scope='type_definition'",  'Type Definition')
nmap_leader('lw', "Pick lsp scope='workspace_symbol'", 'Workspace Symbols')

nmap_leader('qc', "Pick list scope='change'",          'Changes')
nmap_leader('qj', "Pick list scope='jump'",            'Jumps')
nmap_leader('ql', "Pick list scope='location'",        'Locations')
nmap_leader('qq', "Pick list scope='quickfix'",        'Quickfixes')

local mc = require('mini.clue')
mc.setup {
	triggers = {
		-- Leader triggers
		{ mode = 'n', keys = '<Leader>' },
		{ mode = 'x', keys = '<Leader>' },

		-- Local Leader triggers
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

		-- Window commands
		{ mode = 'n', keys = '<C-w>' },

		-- `z` key
		{ mode = 'n', keys = 'z' },
		{ mode = 'x', keys = 'z' },
	},
	clues = {
		-- Enhance this by adding descriptions for <Leader> mapping groups
		mc.gen_clues.builtin_completion(),
		mc.gen_clues.g(),
		mc.gen_clues.marks(),
		mc.gen_clues.registers(),
		mc.gen_clues.windows(),
		mc.gen_clues.z(),
		-- Extra clues
		{ mode = 'n', keys = '<Leader>l', desc = '+LSP' },
		{ mode = 'n', keys = '<Leader>q', desc = '+Lists' },
		{ mode = 'n', keys = '<Leader>_', desc = '+TComments' },
	},
	window = {
		config = {
			width = 'auto',
		}
	}
}
