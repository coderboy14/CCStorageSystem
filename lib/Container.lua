--[[
    Metatable wrapper for storage containers
]]

local Container = {}
local _mt = {__index = Container}

function Container.new(address)
    local wrapper = peripheral.find(address)

    return setmetatable({
        _address = address,
        _wrapper = wrapper
    }, _mt)
end

function Container:getSize()
    return rawget(self, "_wrapper"):size()
end

function Container:getInventory()
    local list = rawget(self, "_wrapper"):list()
    
end

function Container:transferTo(target, slot, count)

end

return Container