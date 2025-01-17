local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING
local RANGE_FORMATTING = methods.internal.RANGE_FORMATTING

return h.make_builtin({
    name = "autopep8",
    method = { FORMATTING, RANGE_FORMATTING },
    filetypes = { "python" },
    generator_opts = {
        command = "autopep8",
        args = h.range_formatting_args_factory({
            "-",
        }, "--line-range", nil, { use_rows = true }),
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
