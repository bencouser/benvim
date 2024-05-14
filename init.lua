require("benvim")

-- Say hello
local username = os.getenv("USER") or os.getenv("USERNAME")
print("Hello, " .. username .. "!")
