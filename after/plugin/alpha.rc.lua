local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")
local cdir = vim.fn.getcwd()


math.randomseed(os.time())

local function pick_color()
    local colors = {"String", "Identifier", "Keyword", "Number"}
    return colors[math.random(#colors)]
end

local function footer()
    local total_plugins = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))
    local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
    local version = vim.version()
    local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

    return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
end

local logo = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

dashboard.section.header.val = logo
dashboard.section.header.opts.hl = pick_color()

dashboard.section.buttons.val = {
  -- dashboard.button("n", "📝 New File",     " :ene <BAR> startinsert <CR> "),
  dashboard.button("r", "  Recent Files", " :Telescope oldfiles <CR> "),
  dashboard.button("b", "🌳 File Browser", " :Telescope file_browser <CR> "),
  dashboard.button("f", "🔎 Find Files",   " :Telescope find_files <CR> "),
  dashboard.button("p", "✅ PackerSync",   " :PackerSync <CR>"),
  dashboard.button("c", "✨ Change Theme", " :Telescope colorscheme <CR>"),
  dashboard.button("s", "⚙️  Settings",     " :e $MYVIMRC | :cd %:p:h | :Telescope file_browser <CR> "),
  dashboard.button("q", "🛑 Quit NVIM",    " :qa<CR> "),
}

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "Constant"

alpha.setup(dashboard.opts)

vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
