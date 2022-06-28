local util = require 'lspconfig.util'

local bin_name = 'ruby-lsp'
local cmd = { bin_name }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name }
end

return {
  default_config = {
    cmd = cmd,
    settings = {
      ruby_lsp = {
        diagnostics = true,
      },
    },
    init_options = { formatting = true },
    filetypes = { 'ruby' },
    root_dir = util.root_pattern('Gemfile', '.git'),
  },
  docs = {
    description = [[
https://github.com/Shopify/ruby-lsp

Ruby-LSP, an opinionated language server for Ruby.

You can install ruby-lsp via gem install.

```sh
gem install --user-install ruby-lsp
```
    ]],
    default_config = {
      root_dir = [[root_pattern("Gemfile", ".git")]],
    },
  },
}
