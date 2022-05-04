-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  --auto_reload_on_write = true, --NEW
  disable_netrw = true, --OK
  hijack_netrw = true, --OK
  --hijack_unnamed_buffer_when_opening = false, --New
  --ignore_buffer_on_setup = false, --New
  open_on_setup = false, --OK
  --open_on_setup_file = false, --New
  --sort_by = "name" --New
  ignore_ft_on_setup = { --OK
    "startify", --OK
    "dashboard", --OK
    "alpha", --OK
  }, --OK
  auto_close = true,
  open_on_tab = false, --OK
  hijack_cursor = false, --OK
  update_cwd = true, --OK -> default is false
  update_to_buf_dir = { -- DOES NOT EXIST
    enable = true, -- DOES NOT EXIST
    auto_open = true, -- DOES NOT EXIST
  }, -- DOES NOT EXIST
  diagnostics = {
    enable = true,
    --show_on_dirs = false, --NEW
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = { --OK
    enable = true, -- OK -> default false
    update_cwd = true, -- OK default false
    ignore_list = {}, --OK
  }, --OK
  -- filters = {
  --   dotfiles = false,
  --   custom = {},
  --   exclude = {},
  -- },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = { --OK
    width = 30, --OK
    height = 30, --OK
    hide_root_folder = false, --OK
    side = "left", --OK
    auto_resize = true, -- DOES NOT EXIST
    preserve_window_proportions = false,
    number = false, --OK
    relativenumber = false, --OK
    --signcolumn = "yes", --NEW
    mappings = { --OK
      custom_only = false, --OK
      list = { --OK
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" }, --OK
        { key = "h", cb = tree_cb "close_node" }, --OK
        { key = "v", cb = tree_cb "vsplit" }, --OK
      }, --OK
    }, --OK
  }, --OK
  -- renderer = {
  --   indent_markers = { --NEW
  --     enable = false,
  --     icons = {
  --       corner = "└ ",
  --       edge = "│ ",
  --       none = "  ",
  --     },
  --   },
  --   icons = {
  --     webdev_colors = true,
  --   },
  -- },
  -- hijack_directories = {
  --   enable = true,
  --   auto_open = true,
  -- },
  -- system_open = {
  --   cmd = "",
  --   args = {},
  -- },
  -- actions = {
  --   use_system_clipboard = true,
  --   change_dir = {
  --     enable = true,
  --     global = false,
  --     restrict_above_cwd = false,
  --   },
  --   open_file = {
  --     quit_on_open = false,
  --     resize_window = false,
  --     window_picker = {
  --       enable = true,
  --       chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
  --       exclude = {
  --         filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
  --         buftype = { "nofile", "terminal", "help" },
  --       },
  --     },
  --   },
  -- },
  -- trash = {
  --   cmd = "trash",
  --   require_confirm = true,
  -- },
  -- log = {
  --   enable = false,
  --   truncate = false,
  --   types = {
  --     all = false,
  --     config = false,
  --     copy_paste = false,
  --     diagnostics = false,
  --     git = false,
  --     profile = false,
  --   },
  -- },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":t",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
}

