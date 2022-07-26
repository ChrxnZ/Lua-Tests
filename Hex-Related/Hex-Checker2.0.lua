local ch = gg.choice
local pr = gg.prompt
local sr = gg.setRanges
local rca = gg.REGION_CODE_APP
local cr = gg.clearResults
local sn = gg.searchNumber
local tpb = gg.TYPE_BYTE
local gr = gg.getResults
local grc = gg.getResultCount

menu = ch({
    "Hex Checker 2.0"
}, nil, "Made By Pulsed#1874")

if menu == 1 then
    local hex = pr({"Hex:", "Bytes", "Select This To Scan"},
                {[1] = "Enter Hex Here", [2] = "32", [3] = true},
                {[1] = "Number", [2] = "Number", [3] = "Checkbox"}
            )

            if hex then
                if hex[3] then
                    sr(rca)
                    cr()
                    sn("h" .. hex[1] ,tpb)
                    s1 = gr(hex[2])
                    if grc(s1) >= 1 then
                        s2 = gr(500)
                        if grc(s2) == hex[2] then
                            print("Inputs:")
                            print("Hex:" .. #hex[1] .. "")
                            print("Bytes:" .. #hex[2] .. "")
                            print("Hex Is Valid And Matches Amount Of Bytes Entered: (" .. #hex[2] .. ")")
                        end
                        if grc(s2) <= hex[2] then
                            print("Inputs:")
                            print("Hex:" .. #hex[1] .. "")
                            print("Bytes:" .. #hex[2] .. "")
                            print("Hex Is Valid But Has A Lower Amounts Of Bytes Rather Than The Bytes Entered: (" .. #hex[2] .. ")")
                        end
                        if grc(s2) >= hex[2] then
                            print("Inputs:")
                            print("Hex:" .. #hex[1] .. "")
                            print("Bytes:" .. #hex[2] .. "")
                            print("Hex Is Valid But Has A Higher Amounts Of Bytes Rather Than The Bytes Entered: (" .. #hex[2] .. ")")
                        end
                    end
                    if grc(s1) == 0 then
                        print("Inputs:")
                        print("Hex:" .. #hex[1] .. "")
                        print("Bytes:" .. #hex[2] .. "")
                        print("Hex Isnt Valid.")
                    end
                end
            end
end
