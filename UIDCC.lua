script_author('s1nlef')
script_description('ShitCode Prodakshen')
require('lib.moonloader')
local sampv = require('lib.samp.events')
local uid = ''
local nickname = ''


function main()
    while not isSampAvailable() do wait(100) end
    sampRegisterChatCommand('idc', uid1)
    sampRegisterChatCommand('idn', name1)
end

function sampv.onServerMessage(color, text)
    if string.find(text, "[%d+]] (.-) | �������: (%d+) | UID: (%d+)") then
        var, lvl, setuid = string.match(text, '[%d+]] (.-) | �������: (%d+) | UID: (%d+) ')
        uid = setuid
        nickname = var
    end
end

function uid1(id)
    if tonumber(id) then
        lua_thread.create(function()
            sampSendChat('/id ' .. id .. '')
            wait(100)
            setClipboardText(uid)
        end)
    else
        sampAddChatMessage("������� ���� ������", -1)
    end
end

function name1(id)
    if tonumber(id) then
        lua_thread.create(function()
            sampSendChat('/id ' .. id .. '')
            wait(100)
            setClipboardText(nickname)
        end)
    else
        sampAddChatMessage("������� ���� ������", -1)
    end
end
