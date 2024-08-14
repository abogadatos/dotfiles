return {
	"rcarriga/nvim-notify",

	config = function()
		local notify = vim.notify
		vim.notify = function(msg, ...)
			if msg:match("warning: multiple different client offset_encodings") then
				return
			end

			notify(msg, ...)
		end

		require("notify")("Hello, Xandrick!")
	end,
}
