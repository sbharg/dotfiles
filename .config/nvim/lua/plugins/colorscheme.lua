return {
  {
    "aktersnurra/no-clown-fiesta.nvim",
    priority = 1000,
    lazy = false,
    name = "no-clown-fiesta",
    commit = "2f57d11",
    config = function()
      require("no-clown-fiesta").setup({
        theme = "dark",
        styles = {
          ["@type.cpp"] = { fg = "#7E97AB" },
        },
      })
      require("no-clown-fiesta").load()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "no-clown-fiesta",
    },
  },
}

-- Could not load your colorscheme

-- ...ocal/share/nvim/lazy/LazyVim/lua/lazyvim/config/init.lua:253: Vim:E5113: Error while calling lua chunk: ...are/nvim/lazy/no-clown-fiesta/colors/no-clown-fiesta.lua:1: module 'lua.lualine.themes.no-clown-fiesta-low-contrast' not found:
-- 	no field package.preload['lua.lualine.themes.no-clown-fiesta-low-contrast']
-- 	cache_loader: module 'lua.lualine.themes.no-clown-fiesta-low-contrast' not found
-- 	cache_loader_lib: module 'lua.lualine.themes.no-clown-fiesta-low-contrast' not found
-- 	no file './lua/lualine/themes/no-clown-fiesta-low-contrast.lua'
-- 	no file '/opt/homebrew/share/luajit-2.1/lua/lualine/themes/no-clown-fiesta-low-contrast.lua'
-- 	no file '/usr/local/share/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast.lua'
-- 	no file '/usr/local/share/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast/init.lua'
-- 	no file '/opt/homebrew/share/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast.lua'
-- 	no file '/opt/homebrew/share/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast/init.lua'
-- 	no file './lua/lualine/themes/no-clown-fiesta-low-contrast.so'
-- 	no file '/usr/local/lib/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast.so'
-- 	no file '/opt/homebrew/lib/lua/5.1/lua/lualine/themes/no-clown-fiesta-low-contrast.so'
-- 	no file '/usr/local/lib/lua/5.1/loadall.so'
-- 	no file './lua.so'
-- 	no file '/usr/local/lib/lua/5.1/lua.so'
-- 	no file '/opt/homebrew/lib/lua/5.1/lua.so'
-- 	no file '/usr/local/lib/lua/5.1/loadall.so'
-- stack traceback:
-- 	[C]: in function 'require'
-- 	...are/nvim/lazy/no-clown-fiesta/colors/no-clown-fiesta.lua:1: in main chunk
-- 	[C]: in function 'colorscheme'
-- 	...ocal/share/nvim/lazy/LazyVim/lua/lazyvim/config/init.lua:253: in function <...ocal/share/nvim/lazy/LazyVim/lua/lazyvim/config/init.lua:249>
-- 	[C]: in function 'xpcall'
-- 	.../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:135: in function 'try'
-- 	...ocal/share/nvim/lazy/LazyVim/lua/lazyvim/config/init.lua:249: in function 'setup'
-- 	...harg/.local/share/nvim/lazy/LazyVim/lua/lazyvim/init.lua:7: in function 'setup'
-- 	...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:387: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:385>
-- 	[C]: in function 'xpcall'
-- 	.../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:135: in function 'try'
-- 	...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:395: in function 'config'
-- 	...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:362: in function '_load'
-- 	...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:197: in function 'load'
-- 	...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:127: in function 'startup'
-- 	...bharg/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:112: