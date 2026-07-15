-- oil.nvim — a file explorer that lets you edit your filesystem like a
-- normal Neovim buffer: rename by editing a line, delete with `dd`,
-- create by adding a line, then `:w` to apply (with a confirmation prompt).
-- https://github.com/stevearc/oil.nvim
return {
  'stevearc/oil.nvim',

  -- oil's README recommends against lazy-loading — it's tricky to make it
  -- work correctly in every situation (e.g. `nvim <directory>` at startup).
  lazy = false,

  -- File-type icons in the listing. Requires a Nerd Font in the terminal:
  -- SpaceMono Nerd Font is installed by dotfiles/.macos and selected by the
  -- kevin-main iTerm2 dynamic profile (see vim.g.have_nerd_font in init.lua).
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  opts = {
    -- Replace netrw entirely, so `nvim <dir>` and `:e <dir>` open oil.
    default_file_explorer = true,

    -- Columns shown for each entry. 'icon' (the default) is the devicons
    -- file-type glyph; other options: 'size', 'permissions', 'mtime'.
    columns = { 'icon' },

    view_options = {
      -- Show dotfiles by default (handy for dotfiles work).
      -- `g.` inside an oil buffer toggles this at any time.
      show_hidden = true,
    },
  },

  keys = {
    -- Open the parent directory of the current file (vim-vinegar style).
    -- Inside oil, `-` keeps going up, <CR> opens, `g?` shows all mappings.
    { '-', '<CMD>Oil<CR>', desc = 'Open parent directory (Oil)' },
  },
}
