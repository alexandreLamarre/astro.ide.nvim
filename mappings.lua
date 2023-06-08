-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- Rust commands
    ["<leader>rc"] = {
      function()
        vim.cmd("RustOpenCargo")
      end,
      desc = "open Cargo.toml",
    },
    ["<leader>rG"] = {
      function()
        vim.cmd("RustViewCrateGraph")
      end,
      desc = "View Crate Graph"
    },
    ["<leader>rt"] = {
      function()
        --TODO: FIXME: figure out how to call rust-tools here
      end,
      desc = "Cargo test"
    },
    ["<leader>rg"] = {
      function()
        vim.cmd("RustRunnables")
      end,
      desc = "Rust Runnables"
    },
    ["<leader>rr"] = {
      function()
        -- TODO: FIXME: figure ot how to call rust-tools here
        -- require("rust-tools")._reload_worspace_from_cargo_toml()
      end,
      desc = "Reload workspace from Cargo.toml"
    },
    ["<leader>rv"] = {
      function()
        require("crates").show_versions_popup()
      end,
      desc = "Show crate versions"
    },
    ["<leader>rf"] = {
      function()
        require("crates").show_features_popup()
      end,
      desc = "Show crate features"
    },
    ["<leader>rd"] = {
      function()
        require("crates").show_dependencies_popup()
      end,
      desc = "Show crate dependencies"
    },
    ["<leader>ru"] = {
      function()
        require("crates").update_crate()
      end,
      desc = "Update crate"
    },
    ["<leader>rU"] = {
      function()
        require("crates").update_all_crates()
      end,
    },
    ["<leader>rC"] = {
      function()
        require("crates").open_crates_io()
      end,
      desc = "open crates.io"
    },
    ["<leader>rD"] = {
      function()
        require("crates").open_documentation()
      end,
      desc = "open crate documentation"
    },
    ["<leader>rR"] = {
      function()
        require("crates").open_repository()
      end,
      desc = "open crate repository"
    },
    ["<leader>H"] = {
      function()
        require("crates").open_homepage()
      end
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>r"] = { name = "Rust" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
