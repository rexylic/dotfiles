-- local minibase16 = require('mini.base16')
-- local light_palette = minibase16.mini_palette(
-- 	'#eeeeee',
-- 	'#111111',
-- 	70
-- )
-- local dark_palette = minibase16.mini_palette(
-- 	'#1c1c1c',
-- 	'#808080',
-- 	61
-- )
-- require('mini.base16').setup {
-- 	palette = os.getenv("BG"):sub(1, 1) == 'l' and light_palette or dark_palette
-- }

if os.getenv("BG"):sub(1, 1) == 'l' then
	require('mini.hues').setup {
		background = "#eeeeee",
		foreground = "#156b56",
		saturation = 'mediumhigh',
	}
else
	require('mini.hues').setup {
		background = "#1c1c1c",
		foreground = "#61b8a3",
		saturation = 'mediumhigh',
	}
end
