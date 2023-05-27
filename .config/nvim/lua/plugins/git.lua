local gs_attach = function(bufnr)
	local gs = package.loaded.gitsigns

	local function map(mode, l, r, opts)
		opts = opts or {}
		opts.buffer = bufnr
		vim.keymap.set(mode, l, r, opts)
	end

	-- Navigation
	map("n", "]c", function()
		if vim.wo.diff then
			return "]c"
		end
		vim.schedule(function()
			gs.next_hunk()
		end)
		return "<Ignore>"
	end, { expr = true })

	map("n", "[c", function()
		if vim.wo.diff then
			return "[c"
		end
		vim.schedule(function()
			gs.prev_hunk()
		end)
		return "<Ignore>"
	end, { expr = true })

	-- Actions
	map("n", "<leader>gp", gs.preview_hunk)
	map("n", "<leader>tb", gs.toggle_current_line_blame)

	map("n", "<leader>gs", gs.stage_hunk)
	map("n", "<leader>gu", gs.undo_stage_hunk)
	map("n", "<leader>gr", gs.reset_hunk)

	map("n", "<leader>gS", gs.stage_buffer)
	map("n", "<leader>gR", gs.reset_buffer)

	map("n", "<leader>gd", gs.diffthis)
	map("n", "<leader>gD", function()
		gs.diffthis("~")
	end)
end

return {
	{
		"lewis6991/gitsigns.nvim",
		config = true,
		opts = {
			on_attach = gs_attach,
		},
	},
}
