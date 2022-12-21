return {
    'williamboman/mason.nvim',
    event = 'VeryLazy',
    config = function()
        require('mason').setup {
            ui = {
                border = 'single',
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗'
                }
            }
        }
    end,
}
