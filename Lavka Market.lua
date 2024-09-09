script_name('Lavka Market')
script_version('2.1')
script_author('Theopka')

local faicons = require('fAwesome6')
local sampev = require("samp.events")
local imgui = require ('mimgui')
local encoding = require ('encoding')
encoding.default = 'CP1251'


local filter = imgui.ImGuiTextFilter() 
local u8 = encoding.UTF8
local new = imgui.new
local ffi = require 'ffi'
local ltn12 = require("ltn12")
local http = require("socket.http")
local sf = require 'sampfuncs'
local gta = ffi.load("GTASA")

logfile = " "
local iniFile = 'Palatka(mobile)Config.ini'
local sw, sh = getScreenResolution()
local current_date = os.date("%d-%m-%Y")
local current_time = os.date("[%H:%M:%S]")
local file_path = "Palatka(mobile)Settings/ "..current_date..".log"
local CentralGlMenu = new.bool()
local LogMenu = new.bool()
local recMenu = new.bool()
local outhmenu = new.bool()
local SkupSellzxc = new.bool()
local inicfg = require 'inicfg'
 local ini = inicfg.load({
    cfg ={
		activation = "cent",	
i1 = "",
i2 = "",
i3 = "",
i4 = "",
i5 = "",
i6 = "",
i7 = "",
i8 = "",
i9 = "",
i10 = "",
i11 = "",
i12 = "",
i13 = "",
i14 = "",
i15 = "",
i16 = "",
i17 = "",
i18 = "",
i19 = "",
i20 = "",
i21 = "",
i22 = "",
i23 = "",
i24 = "",
i25 = "",
i26 = "",
i27 = "",
i28 = "",
i29 = "",
i30 = "",
i31 = "",
i32 = "",
i33 = "",
i34 = "",
i35 = "",
i36 = "",
i37 = "",
i38 = "",
i39 = "",
i40 = "",
i41 = "",
i42 = "",
i43 = "",
i44 = "",
i45 = "",
i46 = "",
i47 = "",
i48 = "",
i49 = "",
i50 = "",
i51 = "",
i52 = "",
i53 = "",
i54 = "",
i55 = "",
i56 = "",
i57 = "",
i58 = "",
i59 = "",
i60 = "",
i61 = "",
i62 = "",
i63 = "",
i64 = "",
i65 = "",
i66 = "",
i67 = "",
i68 = "",
i69 = "",
i70 = "",
i71 = "",
i62 = "",
i73 = "",
i74 = "",
i75 = "",
i76 = "",
i77 = "",
i78 = "",
i79 = "",
i80 = "",
i81 = "",
i82 = "",
i83 = "",
i84 = "",
i85 = "",
i86 = "",
i87 = "",
i88 = "",
i89 = "",
i90 = "",
i91 = "",
i92 = "",
i93 = "",
i94 = "",
i95 = "",
i96 = "",
i97 = "",
i98 = "",
i99 = "",
i100 = "",

se1 = "",
se2 = "",
se3 = "",
se4 = "",
se5 = "",
se6 = "",
se7 = "",
se8 = "",
se9 = "",
se10 = "",
se11 = "",
se12 = "",
se13 = "",
se14 = "",
se15 = "",
se16 = "",
se17 = "",
se18 = "",
se19 = "",
se20 = "",
se21 = "",
se22 = "",
se23 = "",
se24 = "",
se25 = "",
se26 = "",
se27 = "",
se28 = "",
se29 = "",
se30 = "",
se31 = "",
se32 = "",
se33 = "",
se34 = "",
se35 = "",
se36 = "",
se37 = "",
se38 = "",
se39 = "",
se40 = "",
se41 = "",
se42 = "",
se43 = "",
se44 = "",
se45 = "",
se46 = "",
se47 = "",
se48 = "",
se49 = "",
se50 = "",
se51 = "",
se52 = "",
se53 = "",
se54 = "",
se55 = "",
se56 = "",
se57 = "",
se58 = "",
se59 = "",
se60 = "",
se61 = "",
se62 = "",
se63 = "",
se64 = "",
se65 = "",
se66 = "",
se67 = "",
se68 = "",
se69 = "",
se70 = "",
se71 = "",
se62 = "",
se73 = "",
se74 = "",
se75 = "",
se76 = "",
se77 = "",
se78 = "",
se79 = "",
se80 = "",
se81 = "",
se82 = "",
se83 = "",
se84 = "",
se85 = "",
se86 = "",
se87 = "",
se88 = "",
se89 = "",
se90 = "",
se91 = "",
se92 = "",
se93 = "",
se94 = "",
se95 = "",
se96 = "",
se97 = "",
se98 = "",
se99 = "",
se100 = "",

BindArkt1 = false,
BindArkt2 = false,
BindArkt3 = false,
BindArkt4 = false,
BindArkt5 = false,
BindArkt6 = false,
BindArkt7 = false,
BindArkt8 = false,
BindArkt9 = false,
BindArkt10 = false,
BindArkt11 = false,
BindArkt12 = false,
BindArkt13 = false,
BindArkt14 = false,
BindArkt15 = false,
BindArkt16 = false,
BindArkt17 = false,
BindArkt18 = false,
BindArkt19 = false,
BindArkt20 = false,
BindArkt21 = false,
BindArkt22 = false,
BindArkt23 = false,
BindArkt24 = false,
BindArkt25 = false,
BindArkt26 = false,
BindArkt27 = false,
BindArkt28 = false,
BindArkt29 = false,
BindArkt30 = false,
BindArkt31 = false,
BindArkt32 = false,
BindArkt33 = false,
BindArkt34 = false,
BindArkt35 = false,
BindArkt36 = false,
BindArkt37 = false,
BindArkt38 = false,
BindArkt39 = false,
BindArkt40 = false,
BindArkt41 = false,
BindArkt42 = false,
BindArkt43 = false,
BindArkt44 = false,
BindArkt45 = false,
BindArkt46 = false,
BindArkt47 = false,
BindArkt48 = false,
BindArkt49 = false,
BindArkt50 = false,
BindArkt51 = false,
BindArkt52 = false,
BindArkt53 = false,
BindArkt54 = false,
BindArkt55 = false,
BindArkt56 = false,
BindArkt57 = false,
BindArkt58 = false,
BindArkt59 = false,
BindArkt60 = false,
BindArkt61 = false,
BindArkt62 = false,
BindArkt63 = false,
BindArkt64 = false,
BindArkt65 = false,
BindArkt66 = false,
BindArkt67 = false,
BindArkt68 = false,
BindArkt69 = false,
BindArkt70 = false,
BindArkt71 = false,
BindArkt62 = false,
BindArkt73 = false,
BindArkt74 = false,
BindArkt75 = false,
BindArkt76 = false,
BindArkt77 = false,
BindArkt78 = false,
BindArkt79 = false,
BindArkt80 = false,
BindArkt81 = false,
BindArkt82 = false,
BindArkt83 = false,
BindArkt84 = false,
BindArkt85 = false,
BindArkt86 = false,
BindArkt87 = false,
BindArkt88 = false,
BindArkt89 = false,
BindArkt90 = false,
BindArkt91 = false,
BindArkt92 = false,
BindArkt93 = false,
BindArkt94 = false,
BindArkt95 = false,
BindArkt96 = false,
BindArkt97 = false,
BindArkt98 = false,
BindArkt99 = false,
BindArkt100 = false,
Lavkaaiki34b = false,
Lavkaaikib = false,
AutoReconnect = false,      
},

eat = {
    autoeat = false,
    eatchoice = 0,
},
cfgtheme = {
    theme = 0
},
config = {  
        AutoLogin = false,
    }, 
autologin =
    {
        nickname = "Your_Nickname",
        password = "yourpassword",
        spawn = "[{\"id\": 0, \"spawn\": \"РџРѕСЃР»РµРґРЅРµРµ РјРµСЃС‚Рѕ РІС‹С…РѕРґР°\" },{\"id\": 1, \"spawn\": \"РЎС‚Р°РЅРґР°СЂС‚РЅС‹Р№ СЃРїР°РІРЅ\" }]", 
        spawn_use = 0,
    },  
    autoreconnect = {
         onBanned = false,
        onPassword = false,
        onKicked = false,
        onRejected = false,
        delay = 10.0
    },
}, "Palatka(mobile)Config")

if not doesDirectoryExist(getWorkingDirectory()..'\\config') then print('Creating the config directory') createDirectory(getWorkingDirectory()..'\\config') end
if not doesFileExist('monetloader/config/'..iniFile) then print('Creating/updating the .ini file') inicfg.save(ini, iniFile) end

local lmPath = "Lavka Market.lua"
local lmUrl = "https://raw.githubusercontent.com/Theopochka/test/main/Lavka%20Market.lua"

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
  
function check_update()
    msg(u8:decode'РџСЂРѕРІРµСЂРєР° РЅР°Р»РёС‡РёСЏ РѕР±РЅРѕРІР»РµРЅРёР№...')
    local currentVersionFile = io.open(lmPath, "r")
    local currentVersion = currentVersionFile:read("*a")
    currentVersionFile:close()
    local response = http.request(lmUrl)
    if response and response ~= currentVersion then
        msg(u8:decode"РЈ РІР°СЃ РЅРµ Р°РєС‚СѓР°Р»СЊРЅР°СЏ РІРµСЂСЃРёСЏ! Р”Р»СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ РїРµСЂРµР№РґРёС‚Рµ РІРѕ РІРєР»Р°РґРєСѓ: РќР°СЃС‚СЂРѕР№РєРё")
    else
        msg(u8:decode"РЈ РІР°СЃ Р°РєС‚СѓР°Р»СЊРЅР°СЏ РІРµСЂСЃРёСЏ СЃРєСЂРёРїС‚Р°.")
    end
end
local function updateScript(scriptUrl, scriptPath)
    msg(u8:decode"РџСЂРѕРІРµСЂРєР° РЅР°Р»РёС‡РёСЏ РѕР±РЅРѕРІР»РµРЅРёР№...")
    local response = http.request(scriptUrl)
    if response and response ~= currentVersion then
        msg(u8:decode"Р”РѕСЃС‚СѓРїРЅР° РЅРѕРІР°СЏ РІРµСЂСЃРёСЏ СЃРєСЂРёРїС‚Р°! РћР±РЅРѕРІР»РµРЅРёРµ...")
        
        local success = downloadFile(scriptUrl, scriptPath)
        if success then
            msg(u8:decode"РЎРєСЂРёРїС‚ СѓСЃРїРµС€РЅРѕ РѕР±РЅРѕРІР»РµРЅ.")
            thisScript():reload()
        else
            msg(u8:decode"РќРµ СѓРґР°Р»РѕСЃСЊ РѕР±РЅРѕРІРёС‚СЊ СЃРєСЂРёРїС‚.")
        end
    else
        msg(u8:decode"РЎРєСЂРёРїС‚ СѓР¶Рµ СЏРІР»СЏРµС‚СЃСЏ РїРѕСЃР»РµРґРЅРµР№ РІРµСЂСЃРёРµР№.")
    end
end

local new, str, sizeof = imgui.new, ffi.string, ffi.sizeof
local NickName, Password = new.char[256](ini.autologin.nickname), new.char[256](ini.autologin.password)
local sizeX, sizeY = getScreenResolution()
local item_spawn, items_spawn
local item_spawn = {} 
local current_item_spawn = new.int(ini.autologin.spawn_use)
local AutoLogin = new.bool(ini.config.AutoLogin)

local variables = {}
local boolVariables = {}

for i = 1, 1000 do
    variables[i] = {
        se = imgui.new.char[255](u8:decode(ini.cfg['se' .. i])),
        i = imgui.new.char[255](u8:decode(ini.cfg['i' .. i]))
    }


    local boolValue = ini.cfg['BindArkt' .. i]
    if boolValue ~= nil then
        boolVariables[i] = imgui.new.bool(boolValue)
    else
        boolVariables[i] = imgui.new.bool()
    end
end
-- РўРµРїРµСЂСЊ РїРµСЂРµРјРµРЅРЅС‹Рµ РґРѕСЃС‚СѓРїРЅС‹ РЅР°РїСЂСЏРјСѓСЋ РёР· РјР°СЃСЃРёРІРѕРІ Р±РµР· РіР»РѕР±Р°Р»СЊРЅРѕР№ РѕР±Р»Р°СЃС‚Рё РІРёРґРёРјРѕСЃС‚Рё
-- РќР°РїСЂРёРјРµСЂ, variables[1].se, variables[1].i, boolVariables[1]

local activation = new.char[255]((ini.cfg.activation))
local activated = false

local eat = new.bool(ini.eat.autoeat)
local eat_choice = new.int(ini.eat.eatchoice)
local method = {'Р§РёРїСЃС‹', 'РћР»РµРЅРёРЅР°', 'Р С‹Р±Р°'}
local items = imgui.new['const char*'][#method](method)

local theme = new.int(ini.cfgtheme.theme)
local themesList, stylesList = {}, {}

local VersionV = '2.1'

function iniSave()
	ini.cfgtheme.theme = theme[0]
	inicfg.save(ini, iniFile)
end
function cfg_save()
inicfg.save(ini, "Palatka(mobile)Config")
end

local AutoReconnect = new.bool(ini.cfg.AutoReconnect)
local Reconnect = {
  delay = new.float(ini.autoreconnect.delay),
  remaining = 0,
  active = new.bool(false)
}
local connects = 0 
local onBanned, onPassword, onKicked, onRejected = new.bool(ini.autoreconnect.onBanned), new.bool(ini.autoreconnect.onPassword), new.bool(ini.autoreconnect.onKicked), new.bool(ini.autoreconnect.onRejected)


local Lavkaaikib = imgui.new.bool(ini.cfg.Lavkaaikib)
local Lavkaaiki34b = imgui.new.bool(ini.cfg.Lavkaaiki34b)

function save_log(logtext, filename)
    
    -- РћС‚РєСЂС‹РІР°РµРј С„Р°Р№Р» РґР»СЏ РґРѕР±Р°РІР»РµРЅРёСЏ РЅРѕРІРѕРіРѕ Р»РѕРіР°
    local file = io.open(file_path, "a")

    if file then
        -- Р—Р°РїРёСЃС‹РІР°РµРј Р»РѕРі РІ С„Р°Р№Р» СЃ РґР°С‚РѕР№ Рё РІСЂРµРјРµРЅРµРј
        file:write(current_time .. " " .. logtext .. "\n")

        -- Р—Р°РєСЂС‹РІР°РµРј С„Р°Р№Р»
        file:close()
    end
end

local lfs = require("lfs")

if not lfs.attributes("Palatka(mobile)Settings") then
    lfs.mkdir("Palatka(mobile)Settings")
end

local logsFiles = {}

local filenew = io.open(file_path, "a")
filenew:close()
if not filenew then
    local filenew = io.open(file_path, "wb")
    filenew:close()
end

for file in lfs.dir("Palatka(mobile)Settings") do
    if file:match("%.log$") then
        local filepath = "Palatka(mobile)Settings/" .. file
        local attr = lfs.attributes(file_path)
        if attr.mode == "file" then
            table.insert(logsFiles, file)
        end
    end
end


table.sort(logsFiles)

function imgui.CenterText(text)
    local width = imgui.GetWindowWidth()
    local calc = imgui.CalcTextSize(text)
    imgui.SetCursorPosX( width / 2 - calc.x / 2 )
    imgui.Text(text)
end

local lovkanamed = "24/7"


function sampev.onServerMessage(color, text)
    if text:find('^%[РџРѕРґСЃРєР°Р·РєР°%] {FFFFFF}Р’С‹ СѓСЃРїРµС€РЅРѕ Р°СЂРµРЅРґРѕРІР°Р»Рё Р»Р°РІРєСѓ РґР»СЏ РїСЂРѕРґР°Р¶Рё') or text:find('^%[РџРѕРґСЃРєР°Р·РєР°%] {FFFFFF}Р’С‹ СѓСЃРїРµС€РЅРѕ РІС‹СЃС‚Р°РІРёР»Рё Р»Р°РІРєСѓ РґР»СЏ РїСЂРѕРґР°Р¶Рё.РїРѕРєСѓРїРєРё С‚РѕРІР°СЂР°.$') then
        save_log("Р’С‹ Р°СЂРµРЅРґРѕРІР°Р»Рё Р»Р°РІРєСѓ", logfile)
        msg(u8:decode'Р”Р»СЏ С‚РѕРіРѕ, С‡С‚РѕР±С‹ РѕС‚РєСЂС‹С‚СЊ РјРµРЅСЋ РІРІРµРґРёС‚Рµ РєРѕРјР°РЅРґСѓ: /cent')
    if Lavkaaikib[0] then
   CentralGlMenu[0] = not CentralGlMenu[0]
end
if Lavkaaiki34b[0] then
SkupSellzxc[0] = not SkupSellzxc[0]
end
    elseif  (text:find('^%[Р�РЅС„РѕСЂРјР°С†РёСЏ%] {FFFFFF}Р’С‹ РѕС‚РєР°Р·Р°Р»РёСЃСЊ РѕС‚ Р°СЂРµРЅРґС‹ Р»Р°РІРєРё') or text:find('^%[Р�РЅС„РѕСЂРјР°С†РёСЏ%] {FFFFFF}Р’С‹ СЃРЅСЏР»Рё Р»Р°РІРєСѓ') or text:find('^%[Р�РЅС„РѕСЂРјР°С†РёСЏ%] {FFFFFF}РЈ Р’Р°СЃ Р·Р°РєРѕРЅС‡РёР»РѕСЃСЊ РІСЂРµРјСЏ РґР»СЏ РЅР°СЃС‚СЂРѕР№РєРё С‚РѕРІР°СЂРѕРІ')) then
        save_log("Р’С‹ РїРѕРєРёРЅСѓР»Рё Р»Р°РІРєСѓ", logfile)
if Lavkaaikib[0] then
   CentralGlMenu[0] = false
end
if Lavkaaiki34b[0] then
SkupSellzxc[0] = false
end
    elseif (text:find('^%[Р�РЅС„РѕСЂРјР°С†РёСЏ%] {FFFFFF}Р’Р°С€Р° Р»Р°РІРєР° Р±С‹Р»Р° Р·Р°РєСЂС‹С‚Р°')) then
        save_log("Р’С‹ РїРѕС‚РµСЂСЏР»Рё Р»Р°РІРєСѓ", logfile)
if Lavkaaikib[0] then
   CentralGlMenu[0] = false
end
if Lavkaaiki34b[0] then
SkupSellzxc[0] = false
end
    end
    
    if text:find('^.+ РєСѓРїРёР» Сѓ РІР°СЃ .+, РІС‹ РїРѕР»СѓС‡РёР»Рё %$%d+ РѕС‚ РїСЂРѕРґР°Р¶Рё %(РєРѕРјРёСЃСЃРёСЏ %d РїСЂРѕС†РµРЅС‚%(Р°%)%)') then
        local name, product, money = text:match('^(.+) РєСѓРїРёР» Сѓ РІР°СЃ (.+), РІС‹ РїРѕР»СѓС‡РёР»Рё %$(%d+) РѕС‚ РїСЂРѕРґР°Р¶Рё %(РєРѕРјРёСЃСЃРёСЏ %d РїСЂРѕС†РµРЅС‚%(Р°%)%)')
        save_log(name.." РєСѓРїРёР» Сѓ РІР°СЃ "..product.." Р·Р° "..money.."$", logfile)
    elseif text:find('^Р’С‹ РєСѓРїРёР»Рё .+ Сѓ РёРіСЂРѕРєР° .+ Р·Р° %$%d+') then
        local product, name, money = text:match('^Р’С‹ РєСѓРїРёР»Рё (.+) Сѓ РёРіСЂРѕРєР° (.+) Р·Р° %$(%d+)')
        save_log(name.." РїСЂРѕРґР°Р» РІР°Рј "..product.." Р·Р° "..money.."$", logfile)
    end
end 
imgui.OnFrame(function() return LogMenu[0] end, function(player)
  
    imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.Begin('Central ADD Vip Version', LogMenu, imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoTitleBar)
  
  for i, CentralHelper in ipairs(logsFiles) do
    if imgui.Button(CentralHelper) then
        Param = CentralHelper
        local openlog = io.open("Palatka(mobile)Settings/"..Param, 'r')
        local textlog = openlog:read("*all")
        if not textlog then
            return
        end
        commands = {textlog}
        openlog:close()
    end
end
if imgui.Button('Р—Р°РєСЂС‹С‚СЊ', imgui.ImVec2(-1, 29)) then
LogMenu[0] = not LogMenu[0]
end
    imgui.End()
    end)
    
    imgui.OnFrame(function() return recMenu[0] end, function(player)
  
    imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.Begin('Central rrADD Vip Version', recMenu, imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoTitleBar)
         if imgui.Checkbox('РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё "You banned from this server"', onBanned) then
            if not ini.cfg.AutoReconnect then
                onBanned[0] = not onBanned[0]
                msg(u8:decode"РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РІС‹РєР»СЋС‡РµРЅ. Р РµРґР°РєС‚РёСЂРѕРІР°РЅРёРµ С‚Р°РєР¶Рµ РѕС‚РєР»СЋС‡РµРЅРѕ")
            else
                msg(u8:decode"Р’С‹ "..(onBanned[0] and "РІРєР»СЋС‡РёР»Рё" or "РІС‹РєР»СЋС‡РёР»Рё") .. " Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё Р·Р°Р±Р°РЅРµРЅРѕРј РїРѕРґРєР»СЋС‡РµРЅРёРё")      
                ini.autoreconnect.onBanned = onBanned[0]
                cfg_save()
            end
        end
        if imgui.Checkbox('РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё РїР°СЂРѕР»Рµ СЃРµСЂРІРµСЂР°', onPassword) then
            if not ini.cfg.AutoReconnect then
                onPassword[0] = not onPassword[0]
                msg(u8:decode"РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РІС‹РєР»СЋС‡РµРЅ. Р РµРґР°РєС‚РёСЂРѕРІР°РЅРёРµ С‚Р°РєР¶Рµ РѕС‚РєР»СЋС‡РµРЅРѕ")
            else
                msg(u8:decode"Р’С‹ "..(onPassword[0] and "РІРєР»СЋС‡РёР»Рё" or "РІС‹РєР»СЋС‡РёР»Рё") .. " Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё РїР°СЂРѕР»Рµ СЃРµСЂРІРµСЂР°")  
                ini.autoreconnect.onPassword = onPassword[0] 
                cfg_save()
            end
        end
        if imgui.Checkbox(u8:decode'РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё Р·Р°РєСЂС‹С‚РёРё СЃРѕРµРґРёРЅРµРЅРёСЏ СЃ СЃРµСЂРІРµСЂРѕРј', onKicked) then
            if not ini.cfg.AutoReconnect then
                onKicked[0] = not onKicked[0]
                msg(u8:decode"РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РІС‹РєР»СЋС‡РµРЅ. Р РµРґР°РєС‚РёСЂРѕРІР°РЅРёРµ С‚Р°РєР¶Рµ РѕС‚РєР»СЋС‡РµРЅРѕ")
            else
                msg(u8:decode"Р’С‹ "..(onKicked[0] and "РІРєР»СЋС‡РёР»Рё" or "РІС‹РєР»СЋС‡РёР»Рё") .. " Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё Р·Р°РєСЂС‹С‚РёРё СЃРѕРµРґРёРЅРµРЅРёСЏ")          
                ini.autoreconnect.onKicked = onKicked[0]
                cfg_save()
            end
        end
        if imgui.Checkbox('РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё Р·Р°РЅСЏС‚РѕРј/РЅРµРІРµСЂРЅРѕРј РЅРёРєРµ', onRejected) then
            if not ini.cfg.AutoReconnect then
                onRejected[0] = not onRejected[0]
                msg(u8:decode"РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РІС‹РєР»СЋС‡РµРЅ. Р РµРґР°РєС‚РёСЂРѕРІР°РЅРёРµ С‚Р°РєР¶Рµ РѕС‚РєР»СЋС‡РµРЅРѕ")
            else
                msg(u8:decode"Р’С‹ "..(onRejected[0] and "РІРєР»СЋС‡РёР»Рё" or "РІС‹РєР»СЋС‡РёР»Рё") .. " Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚ РїСЂРё Р·Р°РЅСЏС‚РѕРј/РЅРµРІРµСЂРЅРѕРј РЅРёРєРµ")
                ini.autoreconnect.onRejected = onRejected[0] 
                cfg_save()
            end
        end
        if imgui.SliderFloat('Р—Р°РґРµСЂР¶РєР°', Reconnect.delay, 0.0, 1000.0) then
            ini.autoreconnect.delay = Reconnect.delay[0]
            cfg_save()
        end 
if imgui.Button('Р—Р°РєСЂС‹С‚СЊ', imgui.ImVec2(-1, 29)) then
recMenu[0] = not recMenu[0]
end
    imgui.End()
    end)
    
    imgui.OnFrame(function() return outhmenu[0] end, function(player)
  
    imgui.SetNextWindowPos(imgui.ImVec2(sw / 2, sh / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.Begin('Cerrntral rrADD Vip Version', outhmenu, imgui.WindowFlags.AlwaysAutoResize + imgui.WindowFlags.NoTitleBar)
            if imgui.InputText("NickName", NickName, sizeof(NickName)) then
            ini.autologin.nickname = str(NickName)
            cfg_save()
        end
        if imgui.InputText("Password", Password, sizeof(Password)) then
            ini.autologin.password = str(Password)
            cfg_save()
        end
        if imgui.Button("РћС‡РёСЃС‚РёС‚СЊ РїРѕР»СЏ") then
            msg(u8:decode"РџРѕР»СЏ РѕС‡РёС‰РµРЅС‹")
            imgui.StrCopy(NickName, '')
            imgui.StrCopy(Password, '')
        end
        if imgui.Combo("РњРµСЃС‚Рѕ СЃРїР°РІРЅР°", current_item_spawn, items_spawn, #item_spawn) then
            ini.autologin.spawn_use = current_item_spawn[0]
            cfg_save()
        end  
if imgui.Button('Р—Р°РєСЂС‹С‚СЊ', imgui.ImVec2(-1, 29)) then
outhmenu[0] = not outhmenu[0]
end
    imgui.End()
    end)
   
local new = imgui.new
local str = ffi.string
local sizeof = ffi.sizeof
  
imgui.OnFrame(function() return CentralGlMenu[0] end,
  function(player)
    imgui.SetNextWindowPos(imgui.ImVec2(sizeX / 2, sizeY / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.SetNextWindowSize(imgui.ImVec2(700, 350), imgui.Cond.FirstUseEver)
    imgui.Begin('Lavka Market || 2.1', CentralGlMenu)

 
    if Param then
        local openlog = io.open("Palatka(mobile)Settings/"..Param, 'r')
        local textlog = openlog:read("*all")
        if not textlog then
            return
        end
        commands = {textlog}
        openlog:close()
    end
if imgui.Button(faicons("SERVER") .. ' Р›РѕРі РѕРїРµСЂР°С†РёР№', imgui.ImVec2(200, 50)) then tab = 1 end
if imgui.Button(faicons("SHOP") .. ' РЎРєСѓРї', imgui.ImVec2(200, 50)) then tab = 5 end
if imgui.Button(faicons("GEAR") .. ' РќР°СЃС‚СЂРѕР№РєРё', imgui.ImVec2(200, 50)) then tab = 2 end
if imgui.Button(faicons("USER") .. ' Р�РЅС„РѕСЂРјР°С†РёСЏ', imgui.ImVec2(200, 50)) then tab = 4 end

    imgui.SetCursorPos(imgui.ImVec2(215, 28))
if imgui.BeginChild('Name', imgui.ImVec2(), true) then

if tab == 1 then 
if imgui.Button(' Р’С‹Р±СЂР°С‚СЊ РґРµРЅСЊ РґР»СЏ РїСЂРѕСЃРјРѕС‚СЂР° Р»РѕРіР°', imgui.ImVec2(-1, 29)) then
LogMenu[0] = not LogMenu[0]
end
if Param then

imgui.CenterText('Р›РѕРі Р·Р°: ' ..Param)
   
    for i = 1, #commands do
        if filter:PassFilter((commands[i])) then
    imgui.Text((commands[i]))
end
    end
end

imgui.EndChild()

elseif tab == 2 then
		    		
if imgui.Checkbox('РђРІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚', AutoReconnect) then     
        msg(u8:decode"Р’С‹ "..(AutoReconnect[0] and "РІРєР»СЋС‡РёР»Рё" or "РІС‹РєР»СЋС‡РёР»Рё") .. " Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚") 
        if AutoReconnect[0] then msg(u8:decode"РџРѕРјРЅРёС‚Рµ, С‡С‚Рѕ РЅР° РЅРµРєРѕС‚РѕСЂС‹С… СЃРµСЂРІРµСЂР°С… Р·Р° СЌС‚Рѕ РІР°СЃ РјРѕРіСѓС‚ Р·Р°Р±Р»РѕРєРёСЂРѕРІР°С‚СЊ") end
        ini.cfg.AutoReconnect = AutoReconnect[0]
        cfg_save()
    end
imgui.SameLine()
if ini.cfg.AutoReconnect then 
    if imgui.Button('РќР°СЃС‚СЂРѕРёС‚СЊ Р°РІС‚РѕСЂРµРєРѕРЅРЅРµРєС‚', imgui.ImVec2(-1, 29)) then
    recMenu[0] = not recMenu[0]
    end
end
     if imgui.Checkbox('РђРІС‚РѕР»РѕРіРёРЅ', AutoLogin) then
         ini.config.AutoLogin = AutoLogin[0]
         cfg_save()
    end
if ini.config.AutoLogin then
    if imgui.Button('РќР°СЃС‚СЂРѕРёС‚СЊ Р°РІС‚РѕР»РѕРіРёРЅ', imgui.ImVec2(-1, 29)) then
    outhmenu[0] = not outhmenu[0]
    end
end 
imgui.Separator()
if imgui.Combo('Р’С‹Р±РѕСЂ С‚РµРјС‹', theme, new['const char*'][#themesList](themesList), #themesList) then 
    themes[theme[0]+1].func() 
    iniSave() 
end
imgui.Separator()
if imgui.Checkbox(' РћС‚РєСЂС‹С‚РёРµ РјРµРЅСЋ "Central Helper" РїСЂРё Р°СЂРµРЅРґРµ Р»Р°РІРєРё', Lavkaaikib) then
               ini.cfg.Lavkaaikib =  Lavkaaikib[0]
end
imgui.InputTextWithHint("РђРєС‚РёРІР°С†РёСЏ", "Р‘РµР· СЃР»РµС€Р°!", activation, 256)
imgui.SameLine()
	if imgui.Button(" РЎРѕС…СЂР°РЅРёС‚СЊ") then
		ini.cfg.activation = u8:decode(str(activation))
		cfg_save()
		msg(u8:decode"РЎРѕС…СЂР°РЅРµРЅРѕ! РђРєС‚РёРІР°С†РёСЏ - "..ini.cfg.activation, -1)
		script_reload()
	end
imgui.Separator()
if imgui.Checkbox("РђРІС‚РѕeРґР°", eat) then
    activated = not activated
end
if activated then
    if imgui.Combo("Р’С‹Р±РµСЂРёС‚Рµ РЅСѓР¶РЅСѓСЋ РµРґСѓ", eat_choice, items, #method) then
        ini.eat.eatchoice = eat_choice[0]
        cfg_save()
    end
end 
	imgui.Separator()
	if imgui.Button(" РџРµСЂРµР·Р°РіСЂСѓР·РёС‚СЊ") then script_reload() end
	imgui.SameLine()
	if imgui.Button(" Р’С‹РіСЂСѓР·РёС‚СЊ") then script_unload() end
    if imgui.Button('РћР±РЅРѕРІРёС‚СЊ(РІРѕР·РјРѕР¶РЅРѕ Р·Р°РІРёСЃР°РЅРёРµ РёРіСЂС‹ РЅР° 10-15 СЃРµРєСѓРЅРґ)') then
        updateScript(lmUrl, lmPath)
    end

	    elseif tab == 4 then
imgui.CenterText('Version: ' ..VersionV)
imgui.CenterText('Author: Theopka')
				if imgui.Button(faicons("BELL") .. " РџРµСЂРµР№С‚Рё РІ РўР“Рљ", imgui.ImVec2(-1, 25)) then openLink("https://t.me/TheopkaStudio") end
				imgui.Separator()
imgui.CenterText(' РљРѕРјР°РЅРґС‹')
imgui.Text('/cent - Р“Р».РњРµРЅСЋ')
imgui.Text('/recon - Р РµРєРѕРЅРµРєС‚')
imgui.Text('/calc - РљР°Р»СЊРєСѓР»СЏС‚РѕСЂ')

elseif tab == 5 then
    if imgui.Button(faicons("play") .. " РќР°С‡Р°С‚СЊ СЃРєСѓРї ", imgui.ImVec2(-1, 30)) then
        lua_thread.create(function()
            for i = 1, 100 do
                if boolVariables[i][0] then         
sampSendDialogResponse(3040, 1, 2, nil)
sampSendDialogResponse(25665, 1, 1, ini.cfg['se' .. i])
sampSendDialogResponse(25666, 1, 0,  ini.cfg['se' .. i])
sampSendDialogResponse (26552, 1, 0, nil)
sampSendDialogResponse (26555, 1, 0, ini.cfg['i' .. i])
sampSendDialogResponse(3060, 1, 0, ini.cfg['i' .. i])
                end
                wait(1111)
            end
        end)
end
imgui.Text('')
    imgui.BeginChild('##scrolling', imgui.ImVec2(-1, -1), true)
    for i = 1, 100 do
        imgui.BeginChild('##child_' .. i, imgui.ImVec2(-1, 125), true)
            if imgui.Checkbox('##toggle_' .. i, boolVariables[i]) then
                ini.cfg['BindArkt' .. i] = boolVariables[i][0]
            end 
            imgui.InputTextWithHint('##se_' .. i, 'РќР°РїСЂРёРјРµСЂ: РџР»Р°С‚РёРЅРѕРІР°СЏ СЂСѓР»РµС‚РєР°', variables[i].se, 255)
            ini.cfg['se' .. i] = u8:decode(str(variables[i].se))
            imgui.InputTextWithHint('##i_' .. i, 'РќР°РїСЂРёРјРµСЂ: "1, 500000"', variables[i].i, 255)
            ini.cfg['i' .. i] = u8:decode(str(variables[i].i))
        imgui.EndChild()
    end
    cfg_save() -- РЎРѕС…СЂР°РЅРµРЅРёРµ Р·РЅР°С‡РµРЅРёР№ РІС‹РЅРµСЃРµРЅРѕ Р·Р° РїСЂРµРґРµР»С‹ С†РёРєР»Р°
    imgui.EndChild()
end
    imgui.EndChild()

    imgui.EndChild()
end
    imgui.End()
end)

function main()
if not isSampfuncsLoaded() or not isSampLoaded() then return end
	while not isSampAvailable() do wait(100) end
	while not sampIsLocalPlayerSpawned() do wait(0) end
    msg(u8:decode'РЎРєСЂРёРїС‚ Р—Р°РіСЂСѓР¶РµРЅ!')
    msg(u8:decode'РђРєС‚РёРІР°С†РёСЏ: /'..ini.cfg.activation)
    msg(u8:decode'РђРІС‚РѕСЂ Theopka')
    check_update()
    sampRegisterChatCommand(ini.cfg.activation, ws_toggle)
sampRegisterChatCommand('recon', function() main_reconnect(0) end)
sampRegisterChatCommand('calc', function(arg) 
        if #arg == 0 or not arg:find('%d+') then return sampAddChatMessage(u8:decode'[РљР°Р»СЊРєСѓР»СЏС‚РѕСЂ]: {DE9F00}РћС€РёР±РєР°, РІРІРµРґРёС‚Рµ /calc [РїСЂРёРјРµСЂ]', 0x08A351) end
        sampAddChatMessage(u8:decode'[Lavka Market]: {DE9F00}'..arg..' = '..assert(load("return " .. arg))(), 0x08A351)
    end)
  Reconnect.active = false
  addEventHandler('onReceivePacket', function(id, bs, ...) 
    if id == 220 and ini.config.AutoLogin then
        raknetBitStreamIgnoreBits(bs, 8) 
        if(raknetBitStreamReadInt8(bs) == 84) then 
            if(raknetBitStreamReadInt8(bs) == 9) then 
                show_type = raknetBitStreamReadInt8(bs)
                if(show_type == 3) then
                    level_type = raknetBitStreamReadInt8(bs)
                    if(level_type == 5) then
                        lua_thread.create(function()
                            wait(200)
                            msg(u8:decode"Р’С‹Р±РёСЂР°РµРј РјРµСЃС‚Рѕ СЃРїР°РІРЅР° - "..u8:decode(item_spawn[ini.autologin.spawn_use+1]))                      
                            arzpacket({63, 9, 6, 0, 0, 0, 0, 0, 0, 0}, string.format('%i', ini.autologin.spawn_use)) 
                        end) 
                    end
                    if(level_type == 17) then
                        lua_thread.create(function()
                            wait(2000)
                            msg(u8:decode"РџСЂРѕР±СѓРµРј Р°РІС‚РѕСЂРёР·РѕРІР°С‚СЊСЃСЏ РїРѕРґ РЅРёРєРѕРј - " .. ini.autologin.nickname)
                            auth(ini.autologin.nickname, ini.autologin.password)
                        end) 
                    end
                end
                if(show_type == 0) then
                  lua_thread.create(function()
                        wait(200) 
                        msg(u8:decode"РџСЂРѕР±СѓРµРј Р°РІС‚РѕСЂРёР·РѕРІР°С‚СЊСЃСЏ РїРѕРґ РЅРёРєРѕРј - " .. ini.autologin.nickname)
                        auth(ini.autologin.nickname, ini.autologin.password)
                  end) 
                end
                if(show_type == 8) then
                    len = raknetBitStreamReadInt8(bs)
                    raknetBitStreamIgnoreBits(bs, 24) 
                    string = raknetBitStreamReadString(bs, len)
                    ini.autologin.spawn = string
                    cfg_save()
                end
            end 
        end 
    end 
  end) 
end


function openwindow()
  
    CentralGlMenu[0] = not CentralGlMenu[0] 
end
 
function auth(username, password) 
    if not ini.config.AutoLogin then return end
    arzpacket({63, 9, 0, 0, 0, 0, 0, 0, 0, 0}, string.format('{"password":"%s","username":"%s"}', password, username)) 
end 
function imgui.Hint(text)
    imgui.SameLine()
    imgui.TextDisabled("(?)")
    if imgui.IsItemHovered() then
        imgui.BeginTooltip()
        imgui.TextUnformatted((text))
        imgui.EndTooltip()
    end
end
function arzpacket(bytes, str) 
    local bs = raknetNewBitStream() 
    raknetBitStreamWriteInt8(bs, 220) 
    for i = 1, #bytes do raknetBitStreamWriteInt8(bs, bytes[i]) end 
    raknetBitStreamWriteInt32(bs, #str) 
    raknetBitStreamWriteString(bs, str) 
    raknetSendBitStreamEx(bs, 1, 7, 1) 
    raknetDeleteBitStream(bs) 
end


function script_reload()
lua_thread.create(function()
msg(u8:decode"РЎРєСЂРёРїС‚ Р±СѓРґРµС‚ РїРµСЂРµР·Р°РіСЂСѓР¶РµРЅ С‡РµСЂРµР· 2 СЃРµРєСѓРЅРґС‹!")
wait(2000)
msg(u8:decode"РџРµСЂРµР·Р°РіСЂСѓР·РєР°...")
thisScript():reload()
end)
end

function script_unload()
lua_thread.create(function()
msg(u8:decode"РЎРєСЂРёРїС‚ Р±СѓРґРµС‚ РІС‹РіСЂСѓР¶РµРЅ С‡РµСЂРµР· 2 СЃРµРєСѓРЅРґС‹!")
wait(2000)
msg(u8:decode"Р’С‹РіСЂСѓР·РєР°...")
thisScript():unload()
end)
end


   local toggled = true
EXPORTS = {
  canToggle = function() return true end,
  getToggle = function() return toggled end,
  toggle = function()
toggled = not toggled
CentralGlMenu[0] = not CentralGlMenu[0]
end
}

   function ws_toggle()
	if toggled then
		CentralGlMenu[0] = not CentralGlMenu[0]
	
	else
		msg(u8:decode"РЎРєСЂРёРїС‚ РІС‹РєР»СЋС‡РµРЅ")
	end
end

function msg(message)
    sampAddChatMessage("[Lavka Market]: {ffffff}".. message, 0x21D518)
end
function imgui.Hint(text)
    imgui.SameLine()
    imgui.TextDisabled("(?)")
    if imgui.IsItemHovered() then
        imgui.BeginTooltip()
        imgui.TextUnformatted((text))
        imgui.EndTooltip()
    end
end

function main_reconnect(type)
    if type == 0 then
      local bs = raknetNewBitStream()
      raknetBitStreamWriteInt8(bs, sf.PACKET_DISCONNECTION_NOTIFICATION)
      raknetSendBitStreamEx(bs, sf.SYSTEM_PRIORITY, sf.RELIABLE, 0)
      raknetDeleteBitStream(bs)

      bs = raknetNewBitStream()
      raknetEmulPacketReceiveBitStream(sf.PACKET_CONNECTION_LOST, bs)
      raknetDeleteBitStream(bs)
    end 
    if type == 1 then
        lua_thread.create(function()
            if Reconnect.active then 
                msg(u8:decode"РџРѕРїС‹С‚РєР° СЂРµРєРѕРЅРЅРµРєС‚Р° Р±С‹Р»Р° РѕС‚РјРµРЅРµРЅР° С‚.Рє. СѓР¶Рµ РµСЃС‚СЊ СЃСѓС‰РµСЃС‚РІСѓСЋС‰Р°СЏ")
                return
             end
            Reconnect.active = true
            local ms = 500 + Reconnect.delay[0] * 1000
            if ms <= 0 then
              ms = 100
            end

            while ms > 0 do
              if ms <= 500 then
                main_reconnect(0)
                printStringNow("~g~reconnect", 3000)
                ms = 0
                Reconnect.active = false
              end

              printStringNow(string.format('reconnect wait %.2f sec...', ms / 1000), 100)
              wait(100)
              ms = ms - 100
            end
        end)
    end
end
ffi.cdef[[
    void _Z12AND_OpenLinkPKc(const char* link);
]]

function openLink(link)
    gta._Z12AND_OpenLinkPKc(link)
end
function sampev.onAuthenticationRequest()
  msg(u8:decode"РџС‹С‚Р°РµРјСЃСЏ РїРѕРґРєР»СЋС‡РёС‚СЊСЃСЏ Рє СЃРµСЂРІРµСЂСѓ.. РџРѕРїС‹С‚РєР°: " .. connects)
end

function sampev.onConnectionRequestAccepted()
  msg(u8:decode"РџРѕРґРєР»СЋС‡РёР»РёСЃСЊ. Р’С…РѕРґРёРј РІ РёРіСЂСѓ.")
end

function sampev.onConnectionAttemptFailed()
  msg(u8:decode"РЎРµСЂРІРµСЂ РЅРµ РѕС‚РІРµС‡Р°РµС‚.. РџРѕРїС‹С‚РєР°: " .. connects)
  connects = connects + 1
end

function sampev.onConnectionNoFreeSlot()
  msg(u8:decode"РЎРµСЂРІРµСЂ РїРѕР»РѕРЅ.. РџРѕРїС‹С‚РєР°: " .. connects)
  connects = connects + 1
end

function sampev.onConnectionBanned()
    msg(u8:decode"Р’С‹ Р·Р°Р±Р°РЅРµРЅС‹ РЅР° РґР°РЅРЅРѕРј СЃРµСЂРІРµСЂРµ")
    if ini.autoreconnect.onBanned and ini.cfg.AutoReconnect then
      msg(u8:decode"Р РµРєРѕРЅРЅРµРєС‚РёРјСЃСЏ..")
      main_reconnect(1)
    end
end
 
function sampev.onConnectionPasswordInvalid()
    msg(u8:decode"РќРµРІРµСЂРЅС‹Р№ РїР°СЂРѕР»СЊ СЃРµСЂРІРµСЂР°")
    if ini.autoreconnect.onPassword and ini.cfg.AutoReconnect then
      msg(u8:decode"Р РµРєРѕРЅРЅРµРєС‚РёРјСЃСЏ..")
      main_reconnect(1)
    end
end

function sampev.onConnectionClosed()
    msg(u8:decode"РЎРµСЂРІРµСЂ Р·Р°РєСЂС‹Р» СЃРѕРµРґРёРЅРµРЅРёРµ")
    if ini.autoreconnect.onKicked and ini.cfg.AutoReconnect then
      msg(u8:decode"Р РµРєРѕРЅРЅРµРєС‚РёРјСЃСЏ..")
      main_reconnect(1)
    end
end

function sampev.onConnectionRejected()
    msg(u8:decode"РќРµРґРѕРїСѓСЃС‚РёРјС‹Р№ РЅРёРє РёР»Рё РЅРёРє Р·Р°РЅСЏС‚.")
    if ini.autoreconnect.onRejected and ini.cfg.AutoReconnect then
      msg(u8:decode"Р РµРєРѕРЅРЅРµРєС‚РёРјСЃСЏ..")
      main_reconnect(1)
    end
end

function sampev.onDisplayGameText(style, time, text)
    if text:find('You are hungry!') or text:find('You are very hungry!') then
        if ini.cfg.eatchoice == 0 then
            sampSendChat("/cheeps")
        elseif ini.cfg.eatchoice == 1 then
            sampSendChat("/jmeat")
        elseif ini.cfg.eatchoice == 2 then
            sampSendChat("/jfish")
        end
    end
end 
imgui.OnInitialize(function()
    decor()
	for i, v in ipairs(themes) do table.insert(themesList, v.name) end
	themes[theme[0]+1].func()

    imgui.GetIO().IniFilename = nil
    local config = imgui.ImFontConfig()
    config.MergeMode = true
    config.PixelSnapH = true
    iconRanges = imgui.new.ImWchar[3](faicons.min_range, faicons.max_range, 0)
    imgui.GetIO().Fonts:AddFontFromMemoryCompressedBase85TTF(faicons.get_font_data_base85('solid'), 14, config, iconRanges) -- solid - С‚РёРї РёРєРѕРЅРѕРє, С‚Р°Рє Р¶Рµ РµСЃС‚СЊ thin, regular, light Рё duotone
end)

function decor()
    -- == Р”РµРєРѕСЂ С‡Р°СЃС‚СЊ == --
    imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    imgui.GetStyle().WindowRounding = 10.0
    imgui.GetStyle().ChildRounding = 6.0
    imgui.GetStyle().FrameRounding = 8
    imgui.GetStyle().PopupRounding = 8
    imgui.GetStyle().ScrollbarRounding = 8
    imgui.GetStyle().ScrollbarSize = 13.0
    imgui.GetStyle().GrabRounding = 8.
end

themes = {
	{
		name = 'Р—РµР»С‘РЅР°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				   = ImVec4(0.90, 0.90, 0.90, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.08, 0.08, 0.08, 1.00)
			colors[clr.ChildBg]		  = ImVec4(0.10, 0.10, 0.10, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 1.00)
			colors[clr.Border]				 = ImVec4(0.70, 0.70, 0.70, 0.40)
			colors[clr.BorderShadow]		   = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]				= ImVec4(0.15, 0.15, 0.15, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.19, 0.19, 0.19, 0.71)
			colors[clr.FrameBgActive]		  = ImVec4(0.34, 0.34, 0.34, 0.79)
			colors[clr.TitleBg]				= ImVec4(0.00, 0.69, 0.33, 0.80)
			colors[clr.TitleBgActive]		  = ImVec4(0.00, 0.74, 0.36, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.69, 0.33, 0.50)
			colors[clr.MenuBarBg]			  = ImVec4(0.00, 0.80, 0.38, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.16, 0.16, 0.16, 1.00)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.00, 0.82, 0.39, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.00, 1.00, 0.48, 1.00)
			colors[clr.CheckMark]			  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(0.00, 0.77, 0.37, 1.00)
			colors[clr.Button]				 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(0.00, 0.82, 0.39, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(0.00, 0.87, 0.42, 1.00)
			colors[clr.Header]				 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(0.00, 0.76, 0.37, 0.57)
			colors[clr.HeaderActive]		   = ImVec4(0.00, 0.88, 0.42, 0.89)
			colors[clr.Separator]			  = ImVec4(1.00, 1.00, 1.00, 0.40)
			colors[clr.SeparatorHovered]	   = ImVec4(1.00, 1.00, 1.00, 0.60)
			colors[clr.SeparatorActive]		= ImVec4(1.00, 1.00, 1.00, 0.80)
			colors[clr.ResizeGrip]			 = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.ResizeGripHovered]	  = ImVec4(0.00, 0.76, 0.37, 1.00)
			colors[clr.ResizeGripActive]	   = ImVec4(0.00, 0.86, 0.41, 1.00)
			colors[clr.PlotLines]			  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.PlotLinesHovered]	   = ImVec4(0.00, 0.74, 0.36, 1.00)
			colors[clr.PlotHistogram]		  = ImVec4(0.00, 0.69, 0.33, 1.00)
			colors[clr.PlotHistogramHovered]   = ImVec4(0.00, 0.80, 0.38, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(0.00, 0.69, 0.33, 0.72)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.17, 0.17, 0.17, 0.48)
		end
	},
	{
		name = 'РљСЂР°СЃРЅР°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				   = ImVec4(0.95, 0.96, 0.98, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.ChildBg]		  = ImVec4(0.12, 0.12, 0.12, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]				 = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.BorderShadow]		   = ImVec4(1.00, 1.00, 1.00, 0.00)
			colors[clr.FrameBg]				= ImVec4(0.22, 0.22, 0.22, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.18, 0.18, 0.18, 1.00)
			colors[clr.FrameBgActive]		  = ImVec4(0.09, 0.12, 0.14, 1.00)
			colors[clr.TitleBg]				= ImVec4(0.14, 0.14, 0.14, 0.81)
			colors[clr.TitleBgActive]		  = ImVec4(0.14, 0.14, 0.14, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.MenuBarBg]			  = ImVec4(0.20, 0.20, 0.20, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.02, 0.02, 0.02, 0.39)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.36, 0.36, 0.36, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.18, 0.22, 0.25, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.24, 0.24, 0.24, 1.00)
			colors[clr.CheckMark]			  = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.Button]				 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.Header]				 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.HeaderActive]		   = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.ResizeGrip]			 = ImVec4(1.00, 0.28, 0.28, 1.00)
			colors[clr.ResizeGripHovered]	  = ImVec4(1.00, 0.39, 0.39, 1.00)
			colors[clr.PlotLines]			  = ImVec4(0.61, 0.61, 0.61, 1.00)
			colors[clr.PlotLinesHovered]	   = ImVec4(1.00, 0.43, 0.35, 1.00)
			colors[clr.PlotHistogram]		  = ImVec4(1.00, 0.21, 0.21, 1.00)
			colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.18, 0.18, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(1.00, 0.32, 0.32, 1.00)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.26, 0.26, 0.26, 0.60)
		end
	},
	{
		name = 'РџСѓСЂРїСѓСЂРЅР°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.FrameBg]				= ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.FrameBgHovered]		 = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.FrameBgActive]		  = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.TitleBg]				= ImVec4(0.00, 0.00, 0.00, 1.00)
			colors[clr.TitleBgActive]		  = ImVec4(0.61, 0.16, 0.39, 1.00)
			colors[clr.TitleBgCollapsed]	   = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.CheckMark]			  = ImVec4(0.94, 0.30, 0.63, 1.00)
			colors[clr.SliderGrab]			 = ImVec4(0.85, 0.11, 0.49, 1.00)
			colors[clr.SliderGrabActive]	   = ImVec4(0.89, 0.24, 0.58, 1.00)
			colors[clr.Button]				 = ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.ButtonHovered]		  = ImVec4(0.69, 0.17, 0.43, 1.00)
			colors[clr.ButtonActive]		   = ImVec4(0.59, 0.10, 0.35, 1.00)
			colors[clr.Header]				 = ImVec4(0.46, 0.11, 0.29, 1.00)
			colors[clr.HeaderHovered]		  = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.HeaderActive]		   = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.Separator]			  = ImVec4(0.69, 0.16, 0.43, 1.00)
			colors[clr.SeparatorHovered]	   = ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.SeparatorActive]		= ImVec4(0.58, 0.10, 0.35, 1.00)
			colors[clr.ResizeGrip]			 = ImVec4(0.46, 0.11, 0.29, 0.70)
			colors[clr.ResizeGripHovered]	  = ImVec4(0.69, 0.16, 0.43, 0.67)
			colors[clr.ResizeGripActive]	   = ImVec4(0.70, 0.13, 0.42, 1.00)
			colors[clr.TextSelectedBg]		 = ImVec4(1.00, 0.78, 0.90, 0.35)
			colors[clr.Text]				   = ImVec4(1.00, 1.00, 1.00, 1.00)
			colors[clr.TextDisabled]		   = ImVec4(0.60, 0.19, 0.40, 1.00)
			colors[clr.WindowBg]			   = ImVec4(0.06, 0.06, 0.06, 0.94)
			colors[clr.ChildBg]		  = ImVec4(0.00, 0.00, 0.00, 0.40)
			colors[clr.PopupBg]				= ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]				 = ImVec4(0.49, 0.14, 0.31, 1.00)
			colors[clr.BorderShadow]		   = ImVec4(0.49, 0.14, 0.31, 0.00)
			colors[clr.MenuBarBg]			  = ImVec4(0.15, 0.15, 0.15, 1.00)
			colors[clr.ScrollbarBg]			= ImVec4(0.02, 0.02, 0.02, 0.53)
			colors[clr.ScrollbarGrab]		  = ImVec4(0.31, 0.31, 0.31, 1.00)
			colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
			colors[clr.ScrollbarGrabActive]	= ImVec4(0.51, 0.51, 0.51, 1.00)
			colors[clr.ModalWindowDimBg]   = ImVec4(0.80, 0.80, 0.80, 0.35)
		end
	},
	{
		name = 'Р¤РёРѕР»РµС‚РѕРІР°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.WindowBg]			  = ImVec4(0.14, 0.12, 0.16, 1.00)
			colors[clr.ChildBg]		 = ImVec4(0.30, 0.20, 0.39, 0.40)
			colors[clr.PopupBg]			   = ImVec4(0.05, 0.05, 0.10, 0.90)
			colors[clr.Border]				= ImVec4(0.89, 0.85, 0.92, 0.30)
			colors[clr.BorderShadow]		  = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			   = ImVec4(0.30, 0.20, 0.39, 1.00)
			colors[clr.FrameBgHovered]		= ImVec4(0.41, 0.19, 0.63, 0.68)
			colors[clr.FrameBgActive]		 = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.TitleBg]			   = ImVec4(0.41, 0.19, 0.63, 0.45)
			colors[clr.TitleBgCollapsed]	  = ImVec4(0.41, 0.19, 0.63, 0.35)
			colors[clr.TitleBgActive]		 = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.MenuBarBg]			 = ImVec4(0.30, 0.20, 0.39, 0.57)
			colors[clr.ScrollbarBg]		   = ImVec4(0.30, 0.20, 0.39, 1.00)
			colors[clr.ScrollbarGrab]		 = ImVec4(0.41, 0.19, 0.63, 0.31)
			colors[clr.ScrollbarGrabHovered]  = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.ScrollbarGrabActive]   = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.CheckMark]			 = ImVec4(0.56, 0.61, 1.00, 1.00)
			colors[clr.SliderGrab]			= ImVec4(0.41, 0.19, 0.63, 0.24)
			colors[clr.SliderGrabActive]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.Button]				= ImVec4(0.41, 0.19, 0.63, 0.44)
			colors[clr.ButtonHovered]		 = ImVec4(0.41, 0.19, 0.63, 0.86)
			colors[clr.ButtonActive]		  = ImVec4(0.64, 0.33, 0.94, 1.00)
			colors[clr.Header]				= ImVec4(0.41, 0.19, 0.63, 0.76)
			colors[clr.HeaderHovered]		 = ImVec4(0.41, 0.19, 0.63, 0.86)
			colors[clr.HeaderActive]		  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.ResizeGrip]			= ImVec4(0.41, 0.19, 0.63, 0.20)
			colors[clr.ResizeGripHovered]	 = ImVec4(0.41, 0.19, 0.63, 0.78)
			colors[clr.ResizeGripActive]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.PlotLines]			 = ImVec4(0.89, 0.85, 0.92, 0.63)
			colors[clr.PlotLinesHovered]	  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.PlotHistogram]		 = ImVec4(0.89, 0.85, 0.92, 0.63)
			colors[clr.PlotHistogramHovered]  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.TextSelectedBg]		= ImVec4(0.41, 0.19, 0.63, 0.43)
			colors[clr.TextDisabled]		  = ImVec4(0.41, 0.19, 0.63, 1.00)
			colors[clr.ModalWindowDimBg]  = ImVec4(0.20, 0.20, 0.20, 0.35)
		end
	},
	{
		name = 'Р’РёС€РЅС‘РІР°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				  = ImVec4(0.86, 0.93, 0.89, 0.78)
			colors[clr.TextDisabled]		  = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.WindowBg]			  = ImVec4(0.13, 0.14, 0.17, 1.00)
			colors[clr.ChildBg]		 = ImVec4(0.20, 0.22, 0.27, 0.58)
			colors[clr.PopupBg]			   = ImVec4(0.20, 0.22, 0.27, 0.90)
			colors[clr.Border]				= ImVec4(0.31, 0.31, 1.00, 0.00)
			colors[clr.BorderShadow]		  = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			   = ImVec4(0.20, 0.22, 0.27, 1.00)
			colors[clr.FrameBgHovered]		= ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.FrameBgActive]		 = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.TitleBg]			   = ImVec4(0.23, 0.20, 0.27, 1.00)
			colors[clr.TitleBgActive]		 = ImVec4(0.50, 0.08, 0.26, 1.00)
			colors[clr.TitleBgCollapsed]	  = ImVec4(0.20, 0.20, 0.27, 0.75)
			colors[clr.MenuBarBg]			 = ImVec4(0.20, 0.22, 0.27, 0.47)
			colors[clr.ScrollbarBg]		   = ImVec4(0.20, 0.22, 0.27, 1.00)
			colors[clr.ScrollbarGrab]		 = ImVec4(0.09, 0.15, 0.10, 1.00)
			colors[clr.ScrollbarGrabHovered]  = ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.ScrollbarGrabActive]   = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.CheckMark]			 = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.SliderGrab]			= ImVec4(0.47, 0.77, 0.83, 0.14)
			colors[clr.SliderGrabActive]	  = ImVec4(0.71, 0.22, 0.27, 1.00)
			colors[clr.Button]				= ImVec4(0.47, 0.77, 0.83, 0.14)
			colors[clr.ButtonHovered]		 = ImVec4(0.46, 0.20, 0.30, 0.86)
			colors[clr.ButtonActive]		  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.Header]				= ImVec4(0.46, 0.20, 0.30, 0.76)
			colors[clr.HeaderHovered]		 = ImVec4(0.46, 0.20, 0.30, 0.86)
			colors[clr.HeaderActive]		  = ImVec4(0.50, 0.08, 0.26, 1.00)
			colors[clr.ResizeGrip]			= ImVec4(0.47, 0.77, 0.83, 0.04)
			colors[clr.ResizeGripHovered]	 = ImVec4(0.46, 0.20, 0.30, 0.78)
			colors[clr.ResizeGripActive]	  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.PlotLines]			 = ImVec4(0.86, 0.93, 0.89, 0.63)
			colors[clr.PlotLinesHovered]	  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.PlotHistogram]		 = ImVec4(0.86, 0.93, 0.89, 0.63)
			colors[clr.PlotHistogramHovered]  = ImVec4(0.46, 0.20, 0.30, 1.00)
			colors[clr.TextSelectedBg]		= ImVec4(0.46, 0.20, 0.30, 0.43)
			colors[clr.ModalWindowDimBg]  = ImVec4(0.20, 0.22, 0.27, 0.73)
		end
	},
	{
		name = 'Р–С‘Р»С‚Р°СЏ',
		func = function()
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			colors[clr.Text]				 = ImVec4(0.92, 0.92, 0.92, 1.00)
			colors[clr.TextDisabled]		 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.WindowBg]			 = ImVec4(0.06, 0.06, 0.06, 1.00)
			colors[clr.ChildBg]		= ImVec4(0.00, 0.00, 0.00, 0.40)
			colors[clr.PopupBg]			  = ImVec4(0.08, 0.08, 0.08, 0.94)
			colors[clr.Border]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.BorderShadow]		 = ImVec4(0.00, 0.00, 0.00, 0.00)
			colors[clr.FrameBg]			  = ImVec4(0.11, 0.11, 0.11, 1.00)
			colors[clr.FrameBgHovered]	   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.FrameBgActive]		= ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.TitleBg]			  = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.TitleBgActive]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.TitleBgCollapsed]	 = ImVec4(0.00, 0.00, 0.00, 0.51)
			colors[clr.MenuBarBg]			= ImVec4(0.11, 0.11, 0.11, 1.00)
			colors[clr.ScrollbarBg]		  = ImVec4(0.06, 0.06, 0.06, 0.53)
			colors[clr.ScrollbarGrab]		= ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.ScrollbarGrabHovered] = ImVec4(0.47, 0.47, 0.47, 1.00)
			colors[clr.ScrollbarGrabActive]  = ImVec4(0.81, 0.83, 0.81, 1.00)
			colors[clr.CheckMark]			= ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.SliderGrab]		   = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.SliderGrabActive]	 = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.Button]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.ButtonHovered]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.ButtonActive]		 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.Header]			   = ImVec4(0.51, 0.36, 0.15, 1.00)
			colors[clr.HeaderHovered]		= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.HeaderActive]		 = ImVec4(0.93, 0.65, 0.14, 1.00)
			colors[clr.Separator]			= ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.SeparatorHovered]	 = ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.SeparatorActive]	  = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.ResizeGrip]		   = ImVec4(0.21, 0.21, 0.21, 1.00)
			colors[clr.ResizeGripHovered]	= ImVec4(0.91, 0.64, 0.13, 1.00)
			colors[clr.ResizeGripActive]	 = ImVec4(0.78, 0.55, 0.21, 1.00)
			colors[clr.PlotLines]			= ImVec4(0.61, 0.61, 0.61, 1.00)
			colors[clr.PlotLinesHovered]	 = ImVec4(1.00, 0.43, 0.35, 1.00)
			colors[clr.PlotHistogram]		= ImVec4(0.90, 0.70, 0.00, 1.00)
			colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
			colors[clr.TextSelectedBg]	   = ImVec4(0.26, 0.59, 0.98, 0.35)
			colors[clr.ModalWindowDimBg] = ImVec4(0.80, 0.80, 0.80, 0.35)
		end
	},
    {
        name = 'РўС‘РјРЅР°-РЎРёРЅСЏСЏ',
		func = function ()
            imgui.SwitchContext()
            local style = imgui.GetStyle()
        
            style.Colors[imgui.Col.Text]                   = imgui.ImVec4(0.90, 0.90, 0.93, 1.00)
            style.Colors[imgui.Col.TextDisabled]           = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.WindowBg]               = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ChildBg]                = imgui.ImVec4(0.18, 0.20, 0.22, 0.30)
            style.Colors[imgui.Col.PopupBg]                = imgui.ImVec4(0.13, 0.13, 0.15, 1.00)
            style.Colors[imgui.Col.Border]                 = imgui.ImVec4(0.30, 0.30, 0.35, 1.00)
            style.Colors[imgui.Col.BorderShadow]           = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
            style.Colors[imgui.Col.FrameBg]                = imgui.ImVec4(0.18, 0.18, 0.20, 1.00)
            style.Colors[imgui.Col.FrameBgHovered]         = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.FrameBgActive]          = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.TitleBg]                = imgui.ImVec4(0.15, 0.15, 0.17, 1.00)
            style.Colors[imgui.Col.TitleBgCollapsed]       = imgui.ImVec4(0.10, 0.10, 0.12, 1.00)
            style.Colors[imgui.Col.TitleBgActive]          = imgui.ImVec4(0.15, 0.15, 0.17, 1.00)
            style.Colors[imgui.Col.MenuBarBg]              = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ScrollbarBg]            = imgui.ImVec4(0.12, 0.12, 0.14, 1.00)
            style.Colors[imgui.Col.ScrollbarGrab]          = imgui.ImVec4(0.30, 0.30, 0.35, 1.00)
            style.Colors[imgui.Col.ScrollbarGrabHovered]   = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.ScrollbarGrabActive]    = imgui.ImVec4(0.50, 0.50, 0.55, 1.00)
            style.Colors[imgui.Col.CheckMark]              = imgui.ImVec4(0.70, 0.70, 0.90, 1.00)
            style.Colors[imgui.Col.SliderGrab]             = imgui.ImVec4(0.70, 0.70, 0.90, 1.00)
            style.Colors[imgui.Col.SliderGrabActive]       = imgui.ImVec4(0.80, 0.80, 0.90, 1.00)
            style.Colors[imgui.Col.Button]                 = imgui.ImVec4(0.18, 0.18, 0.20, 1.00)
            style.Colors[imgui.Col.ButtonHovered]          = imgui.ImVec4(0.60, 0.60, 0.90, 1.00)
            style.Colors[imgui.Col.ButtonActive]           = imgui.ImVec4(0.28, 0.56, 0.96, 1.00)
            style.Colors[imgui.Col.Header]                 = imgui.ImVec4(0.20, 0.20, 0.23, 1.00)
            style.Colors[imgui.Col.HeaderHovered]          = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.HeaderActive]           = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.Separator]              = imgui.ImVec4(0.40, 0.40, 0.45, 1.00)
            style.Colors[imgui.Col.SeparatorHovered]       = imgui.ImVec4(0.50, 0.50, 0.55, 1.00)
            style.Colors[imgui.Col.SeparatorActive]        = imgui.ImVec4(0.60, 0.60, 0.65, 1.00)
            style.Colors[imgui.Col.ResizeGrip]             = imgui.ImVec4(0.20, 0.20, 0.23, 1.00)
            style.Colors[imgui.Col.ResizeGripHovered]      = imgui.ImVec4(0.25, 0.25, 0.28, 1.00)
            style.Colors[imgui.Col.ResizeGripActive]       = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.PlotLines]              = imgui.ImVec4(0.61, 0.61, 0.64, 1.00)
            style.Colors[imgui.Col.PlotLinesHovered]       = imgui.ImVec4(0.70, 0.70, 0.75, 1.00)
            style.Colors[imgui.Col.PlotHistogram]          = imgui.ImVec4(0.61, 0.61, 0.64, 1.00)
            style.Colors[imgui.Col.PlotHistogramHovered]   = imgui.ImVec4(0.70, 0.70, 0.75, 1.00)
            style.Colors[imgui.Col.TextSelectedBg]         = imgui.ImVec4(0.30, 0.30, 0.34, 1.00)
            style.Colors[imgui.Col.ModalWindowDimBg]       = imgui.ImVec4(0.10, 0.10, 0.12, 0.80)
            style.Colors[imgui.Col.Tab]                    = imgui.ImVec4(0.18, 0.20, 0.22, 1.00)
            style.Colors[imgui.Col.TabHovered]             = imgui.ImVec4(0.60, 0.60, 0.90, 1.00)
            style.Colors[imgui.Col.TabActive]              = imgui.ImVec4(0.28, 0.56, 0.96, 1.00)
        end
    },
    {
        name = 'РўС‘РјРЅР°СЏ',
		func = function()
            imgui.SwitchContext()
            
            --==[ COLORS ]==--
            imgui.GetStyle().Colors[imgui.Col.Text]                   = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TextDisabled]           = imgui.ImVec4(0.50, 0.50, 0.50, 1.00)
            imgui.GetStyle().Colors[imgui.Col.WindowBg]               = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ChildBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PopupBg]                = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Border]                 = imgui.ImVec4(0.25, 0.25, 0.26, 0.54)
            imgui.GetStyle().Colors[imgui.Col.BorderShadow]           = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBgHovered]         = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
            imgui.GetStyle().Colors[imgui.Col.FrameBgActive]          = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBg]                = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBgActive]          = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.MenuBarBg]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarBg]            = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab]          = imgui.ImVec4(0.00, 0.00, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered]   = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive]    = imgui.ImVec4(0.51, 0.51, 0.51, 1.00)
            imgui.GetStyle().Colors[imgui.Col.CheckMark]              = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SliderGrab]             = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SliderGrabActive]       = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Button]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ButtonHovered]          = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ButtonActive]           = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Header]                 = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.HeaderHovered]          = imgui.ImVec4(0.20, 0.20, 0.20, 1.00)
            imgui.GetStyle().Colors[imgui.Col.HeaderActive]           = imgui.ImVec4(0.47, 0.47, 0.47, 1.00)
            imgui.GetStyle().Colors[imgui.Col.Separator]              = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SeparatorHovered]       = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.SeparatorActive]        = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.ResizeGrip]             = imgui.ImVec4(1.00, 1.00, 1.00, 0.25)
            imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered]      = imgui.ImVec4(1.00, 1.00, 1.00, 0.67)
            imgui.GetStyle().Colors[imgui.Col.ResizeGripActive]       = imgui.ImVec4(1.00, 1.00, 1.00, 0.95)
            imgui.GetStyle().Colors[imgui.Col.Tab]                    = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabHovered]             = imgui.ImVec4(0.28, 0.28, 0.28, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabActive]              = imgui.ImVec4(0.30, 0.30, 0.30, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TabUnfocused]           = imgui.ImVec4(0.07, 0.10, 0.15, 0.97)
            imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive]     = imgui.ImVec4(0.14, 0.26, 0.42, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotLines]              = imgui.ImVec4(0.61, 0.61, 0.61, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered]       = imgui.ImVec4(1.00, 0.43, 0.35, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotHistogram]          = imgui.ImVec4(0.90, 0.70, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered]   = imgui.ImVec4(1.00, 0.60, 0.00, 1.00)
            imgui.GetStyle().Colors[imgui.Col.TextSelectedBg]         = imgui.ImVec4(1.00, 0.00, 0.00, 0.35)
            imgui.GetStyle().Colors[imgui.Col.DragDropTarget]         = imgui.ImVec4(1.00, 1.00, 0.00, 0.90)
            imgui.GetStyle().Colors[imgui.Col.NavHighlight]           = imgui.ImVec4(0.26, 0.59, 0.98, 1.00)
            imgui.GetStyle().Colors[imgui.Col.NavWindowingHighlight]  = imgui.ImVec4(1.00, 1.00, 1.00, 0.70)
            imgui.GetStyle().Colors[imgui.Col.NavWindowingDimBg]      = imgui.ImVec4(0.80, 0.80, 0.80, 0.20)
            imgui.GetStyle().Colors[imgui.Col.ModalWindowDimBg]       = imgui.ImVec4(0.00, 0.00, 0.00, 0.70)
        end
    }
}
