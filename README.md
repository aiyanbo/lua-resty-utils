# Name

lua-resty-utils - OpenResty Lua Utils, include `collections`, `objects`.

# Table of Contents

* [Synopsis](#synopsis)
  * [Collections](#collections)
  * [Objects](#objects)

# Synopsis

## Collections

```lua

    # import moudle

    local collections = require("collections")

    local expressions = {
    	"^/users/\\w+$",
    	"^/users/\\w+/trades/\\d+$"
    }

    local matched = collections.key_matched(expressions, "/users/W1234567")

    print(matched) -- print true
```
