local builtin = require('telescope.builtin')

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
	 { "<leader>ff", builtin.find_files, desc = "Fuzzy find file" },
	 { "<C-p>gf", builtin.git_files, desc = "git files" },
	 { "<leader>fs",
	   function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })	
	   end,
	   desc = "git files" },

      }
    }
