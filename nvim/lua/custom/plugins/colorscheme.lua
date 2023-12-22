return {
    { "Mofiqul/dracula.nvim" },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            require("rose-pine").setup({
                disable_background = true
            })
        end
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "rose-pine-moon",
        },
    },
}
