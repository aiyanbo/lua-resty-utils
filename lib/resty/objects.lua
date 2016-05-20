local _M = {
    _VERSION = "1.0.0",
    _AUTHOR = "Andy Ai"
}

local mt = { __index = _M }

function _M.get_or_else(value, default)
    if not value then
        return default
    end
    return value
end

return _M
