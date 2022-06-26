local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    file_ignore_patterns = {"vendor", "cypress"},
    path_display = { "truncate" },
    selection_caret = "  ",
    entry_prefix = "  ",
    color_devicons = true,
    use_less = true,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<Tab>"] = actions.move_selection_previous,
        ["<S-Tab>"] = actions.move_selection_next,
        ["<C-s>"] = actions.select_vertical
      }
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    find_files = {
      -- theme = "dropdown",
      -- theme = "cursor",
      -- theme = "ivy",
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
