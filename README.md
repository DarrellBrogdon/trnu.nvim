# trnu.nvim - Toggle number and relative number quickly

This plugin allows you to quickly toggle `number` and `relativenumber` on or off using either `:Trnu` or `<Leader>tn`.

## Installation

Add this code to `~/.config/nvim/lua/plugins/trnu.lua` and restart Neovim:
```lua
return {
    'DarrellBrogdon/trnu.nvim',
    lazy = false,
    config = function()
      require("trnu").setup()
    end,
}
```
