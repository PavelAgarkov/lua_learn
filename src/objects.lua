Object = { balance = 0 }

Extend = {}

function Object:new()
    local o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Object:deposit (v)
    self.balance = self.balance + v
    return self
end

function Extend:new()
    local o = Object
    setmetatable(o, self)
    self.__index = self
    return o
end



