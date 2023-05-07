-- local hint = [[
--  ^^^                    Debug
--  ^^^--------------------------------------------------
--  _c_: Continue                  _p_: Toggle breakpoint
--  _i_: Step in                   _o_: Step over
--  _u_: Step out                  _b_: Step back
--  _s_: Start debug               _q_: Stop debug
-- ]]
local hint = [[
Debug:
 _K_: Step Back    _H_: Step Out
 _J_: Step Over    _L_: Step Into

 _b_: Toggle Breakpoint
 _s_: Start
 _<CR>_: Continue
 [_<Esc>_ | _q_]: Close
]]
local diagnostic = {
    name = 'Diagnostic',
    hint = hint,
    config = {
        color = 'pink',
        timeout = 1000,
        invoke_on_body = true,
        hint = {
            position = 'middle-right',
            border = 'rounded',
        },
    },
    mode = { 'n' },
    body = '<leader>d',
    heads = {
        {
            's',
            function()
                require 'dap'.continue()
                require 'dapui'.open()
            end,
            { nowait = true },
        },
        { 'J',    function() require 'dap'.step_over() end,         { nowait = true } },
        { 'K',    function() require 'dap'.step_back() end,         { nowait = true } },
        { 'H',    function() require 'dap'.step_out() end,          { nowait = true } },
        { 'L',    function() require 'dap'.step_into() end,         { nowait = true } },
        { '<CR>', function() require 'dap'.continue() end,          { nowait = true } },
        { 'b',    function() require 'dap'.toggle_breakpoint() end, { nowait = true } },
        {
            'q',
            function()
                require 'dap'.close()
                require 'dapui'.close()
            end,
            { nowait = true },
        },
    },
}
return diagnostic