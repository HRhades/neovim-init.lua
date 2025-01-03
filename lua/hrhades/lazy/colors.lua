return {
  {
    'hrhades/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        compile = true,
        functionStyle = { bold = true },
        dimInactive = true,
        -- vim.cmd.hi '@module guisp=#A3D4D5',
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
        override = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },
            -- NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
            -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            -- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            -- Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
            -- PmenuSel = { fg = 'NONE', bg = theme.ui.bg_p2 },
            -- PmenuSbar = { bg = theme.ui.bg_m1 },
            -- PmenuThumb = { bg = theme.ui.bg_p2 },
          }
        end,
      }
      vim.cmd.colorscheme 'kanagawa-wave'
      -- vim.cmd.hi 'Module guisp=#A3D4D5'
      -- vim.cmd.colorscheme 'kanagawa-dragon'
      -- vim.cmd.colorscheme 'kanagawa-lotus'
    end,
  },
  -- { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  --   'folke/tokyonight.nvim',
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- Load the colorscheme here.
  --     -- Like many other themes, this one has different styles, and you could load
  --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --     vim.cmd.colorscheme 'tokyonight-night'

  --     -- You can configure highlights by doing something like
  --     -- vim.cmd.hi 'Comment gui=none'
  --   end,
  -- },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
