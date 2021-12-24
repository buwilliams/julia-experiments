using Genie, Genie.Router

route("/hello") do
    "Hello - Welcome to Genie, Buddy!"
end

up(8000, async = false)