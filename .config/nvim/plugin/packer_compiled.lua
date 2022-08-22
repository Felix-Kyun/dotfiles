-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/felix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/felix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/felix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/felix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/felix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim.git"
  },
  ["FTerm.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16config.term\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim.git"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip.git"
  },
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.nav\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/Navigator.nvim",
    url = "https://github.com/numToStr/Navigator.nvim.git"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22config.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim.git"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer.git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp.git"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua.git"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path.git"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip.git"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim.git"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    load_after = {
      ["lualine.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim.git"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets.git"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim.git"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.hop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim.git"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim.git"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim.git"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.lsp\frequire\0" },
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim.git"
  },
  ["lualine.nvim"] = {
    after = { "fidget.nvim" },
    config = { "\27LJ\2\nZ\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\tnord\nsetup\flualine\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim.git"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim.git"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim.git"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16hide_cursor\1\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim.git"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nest.nvim",
    url = "https://github.com/LionC/nest.nvim.git"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim.git"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs.git"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp.git"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua.git"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig.git"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua.git"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter.git"
  },
  ["nvim-treesitter-refactor"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor.git"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git"
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag.git"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring.git"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons.git"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim.git"
  },
  playground = {
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground.git"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim.git"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim.git"
  },
  ["splitjoin.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim.git"
  },
  ["targets.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/targets.vim",
    url = "https://github.com/wellle/targets.vim.git"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim.git"
  },
  ["telescope-symbols.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/telescope-symbols.nvim",
    url = "https://github.com/nvim-telescope/telescope-symbols.nvim.git"
  },
  ["telescope.nvim"] = {
    after = { "telescope-symbols.nvim", "telescope-fzf-native.nvim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim.git"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim.git"
  },
  ["true-zen.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rtrue-zen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/true-zen.nvim",
    url = "https://github.com/Pocco81/true-zen.nvim.git"
  },
  ["vim-repeat"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat.git"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/felix/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround.git"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/felix/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim.git"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.lsp\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-ts-autotag ]]
vim.cmd [[ packadd playground ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
vim.cmd [[ packadd nvim-treesitter-refactor ]]
vim.cmd [[ packadd nvim-ts-context-commentstring ]]
time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'true-zen.nvim', 'vim-repeat', 'bufferline.nvim', 'Comment.nvim', 'gitsigns.nvim', 'trouble.nvim', 'hop.nvim', 'indent-blankline.nvim', 'vim-surround', 'targets.vim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'nvim-colorizer.lua', 'Navigator.nvim', 'FTerm.nvim', 'nvim-tree.lua', 'splitjoin.vim', 'telescope.nvim'}, { event = "CursorHold *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
