--[[
    Just a nice wrapper for storage container slots.
]]

local Slot = {}
local _mt = { 
    _index = function(self, key)
        if Slot[key] ~= nil then
            return Slot[key]
        elseif key == "container" then
            return rawget(self, "_container")
        elseif key == "index" then
            return rawget(self, "_index")
        end
    end
}

function Slot.new(container, index)
    return setmetatable({
        _container = container,
        _index = index
    }, _mt)
end

function Slot:getContainer()
    return rawget(self, "_container")
end

function Slot:getIndex()
    return rawget(self, "_index")
end

return Slot