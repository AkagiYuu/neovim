local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out,                            'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    spec = {
        { import = 'plugins' },
        { import = 'plugins.colorschemes' },
    },
    defaults = {
        lazy = true,
        rocks = {
            hererocks = true
        }
    },
    checker = {
        enabled = false,
        notify = false,
        frequency = 86400,
    },
    install = { missing = true },
    change_detection = {
        enabled = false,
        notify = false, -- get a notification when changes are found
    },
    ui = {
        border = 'rounded',
    },
    performance = {
        rtp = {
            disabled_plugins = {
                'gzip',
                'matchit',
                'matchparen',
                'netrwPlugin',
                'tarPlugin',
                'tutor',
                'zipPlugin',
                'rplugin',
                'editorconfig',
                'shada',
                'tohtml'
            },
        },
    },
    rocks = {
        hererocks = true, -- recommended if you do not have global installation of Lua 5.1.
    },
    profiling = {
        -- Enables extra stats on the debug tab related to the loader cache.
        -- Additionally gathers stats about all package.loaders
        loader = true,
        -- Track each new require in the Lazy profiling tab
        require = true,
    },
}
