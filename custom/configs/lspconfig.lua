local on_attach = require("plugins.configs.lspconfig").on_attach 
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte" },
  root_dir = lspconfig.util.root_pattern('tailwind.config.js', 'tailwind.config.cjs', 'tailwind.config.mjs', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.cjs', 'postcss.config.mjs', 'postcss.config.ts', 'package.json', 'node_modules', '.git')
})

lspconfig.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
  root_dir = lspconfig.util.root_pattern("see source file")
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html"},
  root_dir = lspconfig.util.root_pattern("see source file")
})
