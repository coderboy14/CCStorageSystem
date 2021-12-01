--[[
    The CLI tool for working with the system.
]]

-- Get the args
local args = {...}

-- Define targets
function launch_interactive()

end

function start_server()

end

function stop_server()

end

function open_config()
    
end

-- Check what we should do!
if #args == 0 then
    -- Default action; Run the interactive edition!
elseif args[1] == "interactive" then
    -- Interactive mode!
elseif args[1] == "start" then
    -- Start the server!
elseif args[1] == "stop" then
    -- Stop the server!
elseif args[1] == "configure" then
    -- Configure!
end