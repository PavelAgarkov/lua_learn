require("src/helper")
require("src/objects")


local status, err = pcall(function()
    error({ code = 121 })
end)

local status, err = pcall(function () error({code=121}) end)
print(err.code)

function myfunction (n)
    assert(false, "iIII")
    n = n / 4
    return n
end

n = 3
local status1, err1 = pcall(
        function()
            return myfunction(n)
        end
)

if status1 then
    print(status1, err1)
else
    print(err1)
end

print(2222)


obj = Object:new()
obj.deposit(obj, 4).deposit(obj, 5)
--obj:deposit(4):deposit(5)
print(obj.balance)


ext = Extend:new()
ext:deposit(5)
print(ext.balance)


