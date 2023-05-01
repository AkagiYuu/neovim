return {
    'catppuccin/nvim',
    name = 'catppuccin',
    build = ':CatppuccinCompile',
    lazy = false,
    enabled = true,
    priority = 1000,
    opts = {
        flavour = 'mocha',
        transparent_background = true,
        styles = {
            comments = { 'italic' },
            properties = { 'italic' },
            functions = { 'bold' },
            keywords = { 'italic' },
            operators = { 'bold' },
            conditionals = { 'bold' },
            loops = { 'bold' },
            booleans = { 'bold', 'italic' },
            numbers = {},
            types = {},
            strings = {},
            variables = {},
        },
        integrations = {
            alpha = false,
            semantic_tokens = true,
            cmp = true,
            dashboard = false,
            gitsigns = true,
            leap = true,
            lsp_trouble = true,
            markdown = true,
            notify = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            treesitter_context = false,
            which_key = true,
            dap = {
                enabled = true,
                enable_ui = true,
            },
            indent_blankline = {
                enabled = true,
                colored_indent_levels = false,
            },
            native_lsp = {
                underlines = {
                    errors      = { 'undercurl' },
                    hints       = { 'undercurl' },
                    warnings    = { 'undercurl' },
                    information = { 'undercurl' },
                },
            },
            noice = true,
            navic = {
                enabled = true,
                custom_bg = 'NONE',
            },
            lsp_saga = true,
            mason = true,
            ts_rainbow2 = true
        },
        color_overrides = {
            -- mocha = {
            --     rosewater = '#F5E0DC',
            --     flamingo = '#F2CDCD',
            --     mauve = '#DDB6F2',
            --     pink = '#F5C2E7',
            --     red = '#F28FAD',
            --     maroon = '#E8A2AF',
            --     peach = '#F8BD96',
            --     yellow = '#FAE3B0',
            --     green = '#ABE9B3',
            --     blue = '#96CDFB',
            --     sky = '#89DCEB',
            --     teal = '#B5E8E0',
            --     lavender = '#C9CBFF',
            --     text = '#D9E0EE',
            --     subtext1 = '#BAC2DE',
            --     subtext0 = '#A6ADC8',
            --     overlay2 = '#C3BAC6',
            --     overlay1 = '#988BA2',
            --     overlay0 = '#6E6C7E',
            --     surface2 = '#6E6C7E',
            --     surface1 = '#575268',
            --     surface0 = '#302D41',
            --     base = '#1E1E2E',
            --     mantle = '#1A1826',
            --     crust = '#161320',
            -- },
            mocha = {
                rosewater = '#EA6962',
                flamingo = '#EA6962',
                pink = '#D3869B',
                mauve = '#D3869B',
                red = '#EA6962',
                maroon = '#EA6962',
                peach = '#BD6F3E',
                yellow = '#D8A657',
                green = '#A9B665',
                teal = '#89B482',
                sky = '#89B482',
                sapphire = '#89B482',
                blue = '#7DAEA3',
                lavender = '#7DAEA3',
                text = '#D4BE98',
                subtext1 = '#BDAE8B',
                subtext0 = '#A69372',
                overlay2 = '#8C7A58',
                overlay1 = '#735F3F',
                overlay0 = '#5A4525',
                surface2 = '#4B4F51',
                surface1 = '#2A2D2E',
                surface0 = '#232728',
                base = '#1D2021',
                mantle = '#191C1D',
                crust = '#151819',
            },
        },
        highlight_overrides = {
            mocha = function(cp)
                return {
                    LspFloatWinNormal          = { bg = 'NONE' },
                    NormalFloat                = { fg = cp.text, bg = cp.none },
                    NvimTreeNormal             = { bg = cp.none },
                    CmpBorder                  = { fg = cp.surface2 },
                    Pmenu                      = { bg = cp.none },
                    NoiceCmdlineIcon           = { fg = cp.sky, style = { 'bold' } },
                    -- TelescopeBorder = { link = "FloatBorder" },

                    Keyword                    = { fg = cp.pink },
                    Type                       = { fg = cp.blue },
                    Typedef                    = { fg = cp.yellow },
                    StorageClass               = { fg = cp.red, style = { 'italic' } },
                    TroubleNormal              = { bg = cp.base },
                    -- For treesitter.
                    ['@field']                 = { fg = cp.rosewater },
                    ['@property']              = { fg = cp.yellow },
                    ['@include']               = { fg = cp.teal },
                    -- ["@operator"] = { fg = cp.sky },
                    ['@keyword.operator']      = { fg = cp.sky },
                    ['@punctuation.special']   = { fg = cp.maroon },
                    -- ["@float"] = { fg = cp.peach },
                    -- ["@number"] = { fg = cp.peach },
                    -- ["@boolean"] = { fg = cp.peach },

                    ['@constructor']           = { fg = cp.lavender },
                    -- ["@constant"] = { fg = cp.peach },
                    -- ["@conditional"] = { fg = cp.mauve },
                    -- ["@repeat"] = { fg = cp.mauve },
                    ['@exception']             = { fg = cp.peach },
                    ['@constant.builtin']      = { fg = cp.lavender },
                    -- ["@function.builtin"] = { fg = cp.peach, style = { "italic" } },
                    -- ["@type.builtin"] = { fg = cp.yellow, style = { "italic" } },
                    ['@type.qualifier']        = { link = '@keyword' },
                    ['@variable.builtin']      = { fg = cp.red, style = { 'italic' } },
                    -- ["@function"] = { fg = cp.blue },
                    ['@function.macro']        = { fg = cp.red, style = {} },
                    ['@parameter']             = { fg = cp.rosewater },
                    ['@keyword']               = { fg = cp.red, style = { 'italic' } },
                    ['@keyword.function']      = { fg = cp.maroon },
                    ['@keyword.return']        = { fg = cp.pink, style = {} },
                    -- ["@text.note"] = { fg = cp.base, bg = cp.blue },
                    -- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
                    -- ["@text.danger"] = { fg = cp.base, bg = cp.red },
                    -- ["@constant.macro"] = { fg = cp.mauve },

                    -- ["@label"] = { fg = cp.blue },
                    ['@method']                = { fg = cp.blue, style = { 'italic' } },
                    ['@namespace']             = { fg = cp.rosewater, style = {} },
                    ['@punctuation.delimiter'] = { fg = cp.teal },
                    ['@punctuation.bracket']   = { fg = cp.overlay2 },
                    -- ["@string"] = { fg = cp.green },
                    -- ["@string.regex"] = { fg = cp.peach },
                    ['@type']                  = { fg = cp.yellow },
                    ['@variable']              = { fg = cp.text },
                    ['@tag.attribute']         = { fg = cp.mauve, style = { 'italic' } },
                    ['@tag']                   = { fg = cp.peach },
                    ['@tag.delimiter']         = { fg = cp.maroon },
                    ['@text']                  = { fg = cp.text },
                    -- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
                    -- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
                    -- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
                    -- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
                    -- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
                    -- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
                    -- ["@string.escape"] = { fg = cp.pink },

                    -- ["@property.toml"] = { fg = cp.blue },
                    -- ["@field.yaml"] = { fg = cp.blue },

                    -- ["@label.json"] = { fg = cp.blue },

                    ['@function.builtin.bash'] = { fg = cp.red, style = { 'italic' } },
                    ['@parameter.bash']        = { fg = cp.yellow, style = { 'italic' } },
                    ['@field.lua']             = { fg = cp.lavender },
                    ['@constructor.lua']       = { fg = cp.flamingo },
                    ['@variable.builtin.lua']  = { fg = cp.teal },
                    ['@constant.java']         = { fg = cp.teal },
                    ['@property.typescript']   = { fg = cp.lavender, style = { 'italic' } },
                    -- ["@constructor.typescript"] = { fg = cp.lavender },

                    -- ["@constructor.tsx"] = { fg = cp.lavender },
                    -- ["@tag.attribute.tsx"] = { fg = cp.mauve },

                    ['@type.css']              = { fg = cp.lavender },
                    ['@property.css']          = { fg = cp.yellow, style = { 'italic' } },
                    ['@type.builtin.c']        = { fg = cp.yellow, style = {} },
                    ['@property.cpp']          = { fg = cp.text },
                    ['@type.builtin.cpp']      = { fg = cp.yellow, style = {} },
                    -- ["@symbol"] = { fg = cp.flamingo },
                }
            end,
        },
    },
    config = function(_, opts)
        require('catppuccin').setup(opts)
        vim.cmd.colorscheme('catppuccin')
    end
}
