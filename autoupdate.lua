script_name("autoupdate")
script_version("1.2")


local http = require("socket.http")
local ltn12 = require("ltn12")
local ffi = require 'ffi'
local request = require("requests")

local encoding = require 'encoding'
encoding.default = 'CP1251'
local u8 = encoding.UTF8

local mvdPath = "autoupdate.lua"
local mvdUrl = "https://raw.githubusercontent.com/Theopochka/test/main/autoupdate.lua"

local function downloadFile(url, path)

  local response = {}
  local _, status_code, _ = http.request{
    url = url,
    method = "GET",
    sink = ltn12.sink.file(io.open(path, "w")),
    headers = {
      ["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0;Win64) AppleWebkit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36",

  },
}

if status_code == 200 then
  return true
else
  return false
end
end

sampAddChatMessage("[Lavka Market]: Helper]: {FFFFFF} Проверка наличия обновлений...", 0x21D518)
  local currentVersionFile = io.open(mvdPath, "r")
  local currentVersion = currentVersionFile:read("*a")
  currentVersionFile:close()
  local response = http.request(mvdUrl)
  if response and response ~= currentVersion then
    sampAddChatMessage("[Lavka Market]: {FFFFFF} У вас не актуальная версия! Для обновления перейдите во вкладку Инфо", 0x21D518)
  else
    sampAddChatMessage("[Lavka Market]: {FFFFFF} Ó âàñ àêòóàëüíàÿ âåðñèÿ ñêðèïòà.", 0x21D518)
  end
  
local function updateScript(scriptUrl, scriptPath)
  sampAddChatMessage("[Lavka Market]: {FFFFFF} Ïðîâåðêà íàëè÷èÿ îáíîâëåíèé...", 0x21D518)
local response = http.request(scriptUrl)
  if response and response ~= currentVersion then
      sampAddChatMessage("[Lavka Market]: {FFFFFF} Äîñòóïíà íîâàÿ âåðñèÿ ñêðèïòà! Îáíîâëåíèå...", 0x21D518)
      
      local success = downloadFile(scriptUrl, scriptPath)
      if success then
          sampAddChatMessage("[Lavka Market]: {FFFFFF} Ñêðèïò óñïåøíî îáíîâëåí.", 0x21D518)
          thisScript():reload()
      else
          sampAddChatMessage("[Lavka Market]: {FFFFFF} Íå óäàëîñü îáíîâèòü ñêðèïò.", 0x21D518)
      end
  else
      sampAddChatMessage("[Lavka Market]: {FFFFFF} Ñêðèïò óæå ÿâëÿåòñÿ ïîñëåäíåé âåðñèåé.", 0x21D518)
  end
end
function main()
    while not isSampAvailable() do wait(0) end
    while not sampIsLocalPlayerSpawned() do wait(0) end
    sampAddChatMessage(u8:decode('РЎРєСЂРёРїС‚ Р·Р°РіСЂСѓР¶РµРЅ'), -1)
    
    sampRegisterChatCommand("up", updateScript)
    while true do
        wait(-1)
    end
end
