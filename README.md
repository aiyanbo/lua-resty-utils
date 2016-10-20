# Name

lua-resty-utils - OpenResty Lua Utils, include `collections`, `redis`.

# Table of Contents

* [Synopsis](#synopsis)
  * [Collections](#collections)
  * [Redis](#redis)

# Synopsis

## Collections

```lua

    # import module

    local collections = require("resty.collections")

    local expressions = {
    	"^/users/\\w+$",
    	"^/users/\\w+/trades/\\d+$"
    }

    local matched = collections.key_matched(expressions, "/users/W1234567")

    print(matched) -- print true
```

## Redis

```lua

    # import module

    local redis = require("resty.rediscli")

    local red = redis.new({host = "127.0.0.1", ...})

    local res, err = red:exec(
        function(red)
            return red:get(key)
        end
    )
```
