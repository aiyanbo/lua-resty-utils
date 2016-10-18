local match = ngx.re.match

local _M = {
    _VERSION = "1.0.0",
    _AUTHOR = "Andy Ai"
}

function _M.contains_key(table, key)
    if not table then
        return false
    end
    for k, _ in pairs(table) do
        if key == k then
            return true
        end
    end
    return false
end

function _M.contains_value(table, value)
    if not table then
        return false
    end
    for _, v in pairs(table) do
        if (v == value) then
            return true
        end
    end
    return false
end

function _M.key_matched(table, value)
    if not table then
        return false
    end
    for k, _ in pairs(table) do
        if match(value, k, "o") then
            return true
        end
    end
    return false
end

function _M.value_matched(table, value)
    if not table then
        return false
    end
    for _, v in pairs(table) do
        if match(value, v, "o") then
            return true
        end
    end
    return false
end

return _M
