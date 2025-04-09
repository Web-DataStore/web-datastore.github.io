--[[
    New data language | Dela
    By PreModor Alpha
]]

local DELA = {}

function DELA:indexOf(tab, value)
    for i, v in ipairs(tab) do
        if v == value then
            return i
        end
    end
    return nil
end

local function removeLastCharacter(str)
    if #str > 0 then
        return str:sub(1, -2)
    else
        return ""
    end
end

local alphabet = {
        'a',
        'b',
        'c',
        'd',
        'e',
        'f',
        'g',
        'h',
        'i',
        'j',
        'k',
        'l',
        'm',
        'n',
        'o',
        'p',
        'q',
        'r',
        's',
        't',
        'u',
        'v',
        'w',
        'x',
        'y',
        'z'
}

function DELA:parseDela(value)
    local dela = "dela:\\/"
    for char in string.gmatch(value, ".") do
        dela = dela ..indexOf(alphabet, char).."-"
    end
    return removeLastCharacter(dela)
end
function DELA:toString(value)
    local returnValue = ""
    for number in string.gmatch(value, "%d+") do
        returnValue = returnValue ..alphabet[tonumber(number)]
    end
    return returnValue
end

return DELA
