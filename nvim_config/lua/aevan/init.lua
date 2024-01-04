-- require("aevan/remap")
require("aevan/remap_cmdh")
require("aevan/set")

require("toggleterm").setup{
    open_mapping = "<c-/>",
    hide_numbers = true,
    start_in_insert = true,
}
require("command-completion").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.comment").setup()
