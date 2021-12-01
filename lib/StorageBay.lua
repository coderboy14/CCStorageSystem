--[[
    A wrapper for the whole storage system's chest collection.
    This manages ONLY the chests deticated for storing items
    NOT input, output, or interactive chests!

    This wrapper exists to essentially treat all the chests used
    for storage, as a single chest entity!

]]

local StorageBay = {}
local _mt = {__index = StorageBay}

-- Constructor
function StorageBay.new()
    return setmetatable({
        _containers = {}
    }, _mt)
end

-- Private methods


-- Public methods
function StorageBay:addContainer(container)
    local containers = rawget(self, "_containers")
    table.insert(containers, container)
    rawset(self, "_containers", containers)
end

function StorageBay:getInventory()
    local containers = rawget(self, "_containers")
    local inv = {}

    for _, container in pairs(containers) do
        for _, item in pairs(container:getInventory()) do
            if inv[item.name] == nil then
                inv[item.name] = {count=0}
            end
            inv[item.name] = inv[item.name] + item.count
        end
    end

    return inv
end

function StorageBay:storeItem(source, count)

end

function StorageBay:fetchItem(name, count, destination)

end

function StorageBay:storeItems(items)

end

function StorageBay:fetchItems(items)

end

return StorageBay