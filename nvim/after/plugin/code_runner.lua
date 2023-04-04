require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
	},
})
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
