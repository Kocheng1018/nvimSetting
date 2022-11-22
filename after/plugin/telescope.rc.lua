local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    initial_mode = "insert",
    file_ignore_patterns = {
      ".git/",
      "node_modules/*",
      ".github/",
      "node_modules/"
    },
    mappings = {
      n = {
        -- your custom normal mode mappings
        ["N"] = fb_actions.create,
        ["r"] = fb_actions.rename,
        ["<space>"] = actions.toggle_selection,

        ["h"] = fb_actions.goto_parent_dir,
        ["l"] = actions.select_default,
        ["q"] = actions.close
      },
      i = {
        -- your custom insert mode mappings
        ["<C-w>"] = function() vim.cmd('normal vbd') end,

        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,


        ["<CR>"] = actions.select_default,
        ["<C-s>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,


        ["<esc>"] = actions.close,
      },
    },
  },
  pickers = {
    oldfiles = {
      initial_mode = "normal",
      themes = "cursor"
    }
  },
  extensions = {
    file_browser = {
      path = "%:p:h",
      initial_mode = "normal",
      cwd = telescope_buffer_dir(),
      respect_gitignore = false,
      hidden = true,
      previewer = false,
      theme = "dropdown",
      -- file sort by filetype
      grouped = true,
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      layout_config = { height = 40 },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<space>f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)
vim.keymap.set('n', '<space>r', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '<space>o', function()
  builtin.oldfiles()
end)
vim.keymap.set('n', '<space>b', function()
  builtin.buffers()
end)
vim.keymap.set('n', '<space>t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', '<space>;', function()
  builtin.resume()
end)
vim.keymap.set('n', '<space>e', function()
  builtin.diagnostics()
end)
vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser()
end)
