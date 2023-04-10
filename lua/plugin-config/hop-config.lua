local M = {}

function M.config()
	local hop = require("hop")
	local directions = require("hop.hint").HintDirection
	vim.keymap.set("n", "f", function()
		hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
	end, { remap = true })
	vim.keymap.set("n", "F", function()
		hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
	end, { remap = true })
	vim.keymap.set("n", "t", function()
		hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
	end, { remap = true })
	vim.keymap.set("n", "T", function()
		hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
	end, { remap = true })
	vim.keymap.set("n", "s", function()
		hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
	end, { remap = true })
	vim.keymap.set("n", "S", function()
		hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
	end, { remap = true })
	vim.keymap.set("n", "_", function()
		hop.hint_lines_skip_whitespace({ direction = directions.AFTER_CURSOR, current_line_only = false })
	end, { remap = true })
end

return M
