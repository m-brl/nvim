function switchTheme()
    background = vim.api.nvim_get_option("background")
    if background == "light" then
        vim.api.nvim_set_option("background", "dark")
    else
        vim.api.nvim_set_option("background", "light")
    end
end

local function contains(list, element)
    for _, value in pairs(list) do
        if (value == element) then
            return true
        end
    end
    return false
end

local function writeBuffer(content)
    file = io.open("/tmp/format_buf", "w")
    for _, line in pairs(content) do
        file:write(line .. "\n")
    end
    file:close()
end

local function readBuffer()
    file = io.open("/tmp/format_buf", "r")
    content = {}
    for line in file:lines() do
        print(line)
        table.insert(content, line)
    end
    file:close()
    return content
end

--vim.api.nvim_create_autocmd("ModeChanged", {
--    callback = function()
--        local mode = vim.api.nvim_get_mode().mode
--        if (mode == "n") then
--            extensions = {"c", "cpp", "h", "hpp", "inl"}
--            currentFileExtension = vim.fn.expand("%:e")
--            if (contains(extensions, currentFileExtension)) then
--                local buffer_id = vim.api.nvim_get_current_buf()
--                local buffer_content = vim.api.nvim_buf_get_lines(buffer_id, 0, -1, false)
--                writeBuffer(buffer_content)
--                vim.cmd("silent !clang-format -i /tmp/format_buf")
--                buffer_content = readBuffer()
--                vim.api.nvim_buf_set_lines(buffer_id, 0, -1, false, buffer_content)
--            end
--        end
--    end
--})
