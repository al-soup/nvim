require('telescope').setup({
  defaults = {
    -- Set reasonable defaults
    path_display = { "truncate" },
    file_ignore_patterns = {},
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
  },
  pickers = {
    find_files = {
      -- Don't restrict to tracked files
      hidden = false,
      follow = true,
    }
  }
})