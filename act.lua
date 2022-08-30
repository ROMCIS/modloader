local aScriptActication = "There is Problem"

local isActive = true

local trueFiles = { 
	[ "act.lua" ] = true ,
	[ "client.lua" ] = true , 
	[ "cars.lua" ] = true ,
	--[ "اسم الملف الموجود.lua" ] = true ,
-- ^ لاتنسى تغير الصيغة بس تشفر الملفات
-- ضيفها  lua واذا فيه ملفات
 }

function getResourceScripts()
    local scripts = {}
    local resourceName = getResourceName(resource)
    local theMeta = xmlLoadFile(":"..resourceName.."/meta.xml")
    for i, node in ipairs (xmlNodeGetChildren(theMeta)) do
        if (xmlNodeGetName(node) == "script") then
            local script = xmlNodeGetAttribute(node, "src")
            if (script) then
                table.insert(scripts, script)
            end
        end
    end
    return scripts
end


addEvent("sc:onClientReady", true);
addEventHandler ( "sc:onClientReady" , root ,
function (	)
	triggerClientEvent ( source , getResourceName ( resource )..":canResourceStart" , source , isActive , "6tzK8yrOHeAAAAAAAAAACXNN_3Kt95TxRrEa65w3aAQW9pqlAgtwXKBnBYqBm8Ht" )
end)