local module = {}

local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'

function module.setup()
    mason.setup{}
    mason_lspconfig.setup{}
end

return module
