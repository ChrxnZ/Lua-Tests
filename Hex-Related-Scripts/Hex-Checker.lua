local a = gg.alert
local t = gg.toast
local sn = gg.searchNumber
local r = gg.refineNumber
local cr = gg.clearResults
local cl = gg.clearList
local e = gg.editAll
local rr = gg.removeResults
local p = gg.prompt
local iv = gg.isVisible
local sv = gg.setVisible
local gr = gg.getResults
local sr = gg.setRanges
local c = gg.choice
local mc = gg.multiChoice
local s = gg.sleep
local tpa = gg.TYPE_AUTO
local tpd = gg.TYPE_DWORD
local tpf = gg.TYPE_FLOAT
local tpq = gg.TYPE_QWORD
local tpw = gg.TYPE_WORD 
local tpb = gg.TYPE_BYTE
local rca = gg.REGION_CODE_APP
local grc = gg.getResultCount
local ali = gg.addListItems



-- Made By Pulsed#1874

menu = c({
    "Check If Hex Is Valid In Current Game Version"
}, nil, "Random Tool Made By Pulsed#1874")

if menu==1 then
sr(rca)
cr()
sv(false)
s(2000)
sv(true)
hex = p({"Enter Your Hex:","Scan","Smart Scan"},
    {[1] = "h ", [2] = false, [3] = true},
    {[1] = "number", [2] = "checkbox", [3] = "checkbox"}
    )
    if hex then
    if hex[2] then
        sv(false)
        sn(hex[1] ,tpb)
        a = gr(32)
        sv(true)
    end
if hex[3] then
    sv(false)
    sn(hex[1] ,tpb)
    a = gr(32)
    sv(true)
    if grc(a) == 0 then
        sv(true)
        print("Hex Is Invalid.")
    end
    if grc(a) == 32 then
    	ali(a)
    	cr()
        print("Results Found.")
        print("Valid Hex.")
end
end
end
end
