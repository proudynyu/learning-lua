--- @param x boolean
--- @param msg string
function Assert(x, msg)
    if not x then
        error(msg)
    end
end

--- @param filePath string
function File_exists(filePath)
    local f = io.open(filePath)
    if f then f:close() end
    return f ~= nil
end

--- @param filePath string
function Read_file(filePath)
    local exists = File_exists(filePath)

    if not exists then
        Assert(false, "File do not exists")
    end

    local file = io.open(filePath, "rb")

    if not file then
        return Assert(false, "No file")
    end

    return file
end

function Write_file(filePath, data) 
    if not filePath then
        return Assert(false, "No filepath was passed")
    end

    local file = Read_file(filePath)

    if not file then
        return Assert(false, "No file")
    end

    io.output(file)

    file.write(data)

    io.close(file)
end

--- @param filePath string
--- @param outputPath string
function Copy_file(filePath, outputPath)
    if not filePath then
        return Assert(false, "No filepath was passed")
    elseif not outputPath then
        return Assert(false, "No outputpath was passed")
    end

    local file = Read_file(filePath)

    if not file then
        return Assert(false, "No file")
    end
end
