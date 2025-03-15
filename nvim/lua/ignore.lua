local function addLine(line)
    if (string.sub(line, 1, 1) == '#' or string.sub(line, 1, 1) == '!' or string.len(line) == 0) then
        return
    end
    wildignore = vim.api.nvim_get_option("wildignore")
    vim.api.nvim_set_option("wildignore", wildignore .. "," .. line)
end

local function gitignoreWildignore()
    file = io.open(".gitignore", "r")
    if (not file) then
        print("Cannot find gitignore")
        return
    end
    for line in file:lines() do
        addLine(line)
    end
    file:close()
end

local function setDefault()
    default = "*.d,*.o,*.so,*.a,*.gcno,*.gcda"
    wildignore = vim.api.nvim_get_option("wildignore")
    vim.api.nvim_set_option("wildignore", default)
end

setDefault()
gitignoreWildignore()
