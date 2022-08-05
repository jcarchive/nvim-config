local module = {}

local lspconfig = require 'lspconfig'
local lsputil = require 'lspconfig/util'

function module.setup()
    -- C#, Omnisharp *************************************************************************************
    lspconfig.omnisharp.setup{}
    -- bicep *********************************************************************************************
    lspconfig.bicep.setup{}
    -- lua ***********************************************************************************************
    lspconfig['lua-lsp-server'].setup{}
end

return module
