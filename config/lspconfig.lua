local status, nvim_lsp = pcall(require,'lspconfig')
if(not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach= function(client,buffer)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[ augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end 
end 

nvim_lsp.tsserver.setup{
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd ={ "C:\\Program Files\\nodejs\\typescript-language-server.cmd", "--stdio" },
  init_options={
  hostInfo = "neovim"}
}
