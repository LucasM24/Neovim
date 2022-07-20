local actions = require("telescope.actions")

require('telescope').setup{
  defaults = {
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top"
    },
    selection_caret = "  ",
    entry_prefix = "  ",
    color_devicons = true,
    use_less = true,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<S-Tab>"] = actions.move_selection_previous,
        ["<Tab>"] = actions.move_selection_next,
        ["<C-n>"] = actions.select_vertical
      }
    },
  },
}
