--[[
    Error Handler
]]

local ErrorHandler = {}

function ErrorHandler:ThrowError(message, level)
    local errorMessage = "Error: \"" ..message.. "\" Level " ..level.. " Error"
    if level == 0 then
        print(errorMessage..".")
    elseif level == 1 then
        print(errorMessage..".")
        os.exit()
    elseif level == 2 then
        print(string.upper(errorMessage.."!"))
        os.exit()
    end
end

ErrorHandler:ThrowError("test", 0)
ErrorHandler:ThrowError("test", 1)
ErrorHandler:ThrowError("test", 2)
