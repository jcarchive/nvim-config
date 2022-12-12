local nvim_tree = require 'nvim-tree'

local module = {}

function module.setup()
    nvim_tree.setup({
        sort_by = "case_sensitive",
        view = {
                adaptive_size = true,
                mappings = {
                        list = {
                                { key = "u", action = "dir_up" }
                        }
                }
        },
        renderer = {
                group_empty = true,
        },
        filters = {
                dotfiles = true
        }
    })
end

return module
