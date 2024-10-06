
function lua_check()

	e:tag{"dialog", title="", message="Lua injection success!" .. "\n" .. "Lua version : " .. _VERSION}

end

function luasocket_check()
	local success, socket = pcall(require, "socket")

	if success then
		e:tag{"dialog", title="", message="Luasocket is available!" }
	else
		-- yes we have no luasocket access
		-- artemis windows binary have luasocket access but not at ps4
		e:tag{"dialog", title="", message="Error: Luasocket is not available!" }
	end
end

function file_write()

	local content = "Hello, this is some content to write to the file."
	local filename = e:var("s.savepath").."/filetest.txt"

	local file = io.open(filename, "wb")
	if file then
		file:write(content)
		file:close()
		e:tag{"dialog", title="", message=("Successfully wrote to " .. filename) }
	else
		-- we can't write files?
		e:tag{"dialog", title="", message=("Error : Unable to open file " .. filename) }
	end
	
end