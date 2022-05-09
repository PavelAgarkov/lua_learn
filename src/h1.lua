--require("mobdebug").start()

local status, err = pcall(function () error({code=121}) end)
print(err.code)

function myfunction (n)
    assert(false, "iIII")
    n = n / nil
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

