local orig = vim.lsp.handlers and vim.lsp.handlers["client/registerCapability"]
if orig then
  vim.lsp.handlers["client/registerCapability"] = function(err, params, ctx)
    if not params or not params.registrations then
      return vim.NIL
    end
    return orig(err, params, ctx)
  end
end
