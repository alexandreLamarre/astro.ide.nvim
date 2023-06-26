return {
   "nvim-telescope/telescope.nvim",
   opts = function(_, opts) 
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
    })
    opts.pickers = {
      find_files = {
        hidden = true,
      }
    }
    end,
}
