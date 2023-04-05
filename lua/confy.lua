local confy = {}

confy.setup = function()
	vim.keymap.set("n", ",e", function()
		confy.edit()
	end)

	vim.keymap.set("n", ",r", function()
		confy.reload()
	end)

	vim.keymap.set("n", ",t", function()
		confy.thank_you()
	end)
end

confy.edit = function()
	vim.cmd("edit ~/.config2/nvim/init.lua")
end

confy.reload = function()
	vim.cmd("source ~/.config2/nvim/init.lua")
end

confy.thank_you = function()
	print("Thank you for using confy!")
end

return confy
