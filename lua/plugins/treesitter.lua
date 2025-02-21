return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "sql", "lua", "typescript", "javascript", "html", "svelte", "swift", "php", 
				"arduino", "astro", "bash", "c_sharp", "css", "csv", "dockerfile", "dot", "gitignore", "go",
				"json", "kotlin", "nginx", "python", "regex", "ssh_config", "vue" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }}
