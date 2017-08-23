feld1=D2Editor:newRichText()
feld1:newRichText()
feld1:resize(90,45)
feld1:move(10,10)
feld1:setBorderColor(2222222)
feld1:setBorder(1)

feld2=D2Editor:newRichText()
feld2:newRichText()
feld2:resize(90,45)
feld2:move(105,10)
feld2:setBorderColor(2222222)
feld2:setBorder(1)

feld3=D2Editor:newRichText()
feld3:newRichText()
feld3:resize(90,45)
feld3:move(10,60)
feld3:setBorderColor(2222222)
feld3:setBorder(1)

feld4=D2Editor:newRichText()
feld4:newRichText()
feld4:resize(90,45)
feld4:move(105,60)
feld4:setBorderColor(2222222)
feld4:setBorder(1)

feld5=D2Editor:newRichText()
feld5:newRichText()
feld5:resize(90,45)
feld5:move(200,60)
feld5:setBorderColor(0000000)
feld5:setBorder(1)

feld6=D2Editor:newRichText()
feld6:newRichText()
feld6:resize(90,45)
feld6:move(200,10)
feld6:setBorderColor(0000000)
feld6:setBorder(1)

feld7=D2Editor:newRichText()
feld7:newRichText()
feld7:resize(90,45)
feld7:move(10,110)
feld7:setBorderColor(0000000)
feld7:setBorder(1)

feld8=D2Editor:newRichText()
feld8:newRichText()
feld8:resize(90,45)
feld8:move(105,110)
feld8:setBorderColor(0000000)
feld8:setBorder(1)

feld9=D2Editor:newRichText()
feld9:newRichText()
feld9:resize(90,45)
feld9:move(200,110)
feld9:setBorderColor(9111111)
feld9:setBorder(1)

function on.tabKey()

    v1=tonumber(feld1:getText())
    v2=tonumber(feld2:getText())
    v3=tonumber(feld3:getText())
    v4=tonumber(feld4:getText())
    v5=tonumber(feld5:getText())
    v6=tonumber(feld6:getText())
    v7=tonumber(feld7:getText())
    v8=tonumber(feld8:getText())
    v9=tonumber(feld9:getText())

    if v1~=nil and v2~=nil then
        if v6==nil or v6~=v1+v2 then
            feld6:setText(tostring(v1+v2))
        end
    end
    
    if v3~=nil and v4~=nil then
        if v5==nil or v5~=v3+v4 then
            feld5:setText(tostring(v3+v4))
        end
    end
    
    if v1~=nil and v3~=nil then
        if v7==nil or v7~=v1+v3 then
            feld7:setText(tostring(v1+v3))
        end
    end
    
    if v2~=nil and v4~=nil then
        if v8==nil or v8~=v2+v4 then
            feld8:setText(tostring(v2+v4))
        end
    end
    
    if v6~=nil and v5~=nil then
        if v9==nil or v9~=v6+v5 then
            sixfive=v6+v5
            feld9:setText(tostring(v6+v5))
            if seveneight~=v6+v5 and seveneight~=nil then
                feld9:setText("!")
            end
        else
            sixfive=nil
        end
    end
    
    if v7~=nil and v8~=nil then
        if v9==nil or v9~=v7+v8 then
            seveneight=v7+v8
            feld9:setText(tostring(v7+v8))
            if sixfive~=v7+v8 and sixfive~=nil then
                feld9:setText("!")
            end
        else
            seveneight=nil
        end
    end
    
    if v6~=nil then
        if v1~=nil then
            feld2:setText(tostring(v6-v1))
        elseif v2~=nil then
            feld1:setText(tostring(v6-v2))
        end
    end
    
    if v5~=nil then
        if v3~=nil then
            feld4:setText(tostring(v5-v3))
        elseif v4~=nil then
            feld3:setText(tostring(v5-v4))
        end
    end
    
    if v7~=nil then
        if v1~=nil then
            feld3:setText(tostring(v7-v1))
        elseif v3~=nil then
            feld1:setText(tostring(v7-v3))
        end
    end
    
    if v8~=nil then
        if v2~=nil then
            feld4:setText(tostring(v8-v2))
        elseif v4~=nil then
            feld2:setText(tostring(v8-v4))
        end
    end
    
    if v9~=nil then
        if v6~=nil then
            feld5:setText(tostring(v9-v6))
        elseif v5~=nil then
            feld6:setText(tostring(v9-v5))
        end
        
        if v7~=nil then
            feld8:setText(tostring(v9-v7))
        elseif v8~=nil then
            feld7:setText(tostring(v9-v8))
        end
    end

end

function on.escapeKey()
    feld1:setText("")
    feld2:setText("")
    feld3:setText("")
    feld4:setText("")
    feld5:setText("")
    feld6:setText("")
    feld7:setText("")
    feld8:setText("")
    feld9:setText("")
end

function on.arrowDown()
    v1=tonumber(feld1:getText())
    v2=tonumber(feld2:getText())
    v3=tonumber(feld3:getText())
    v4=tonumber(feld4:getText())
    v5=tonumber(feld5:getText())
    v6=tonumber(feld6:getText())
    v7=tonumber(feld7:getText())
    v8=tonumber(feld8:getText())
    v9=tonumber(feld9:getText())
    
    values = {v1,v2,v3,v4,v5,v6,v7,v8}
    fields = {feld1,feld2,feld3,feld4,feld5,feld6,feld7,feld8}
    for i=1, 8 do
        if values[i]~=nil then
            fields[i]:setText(tostring(values[i] * v9 /100))
        end
    end
end

function on.arrowUp()
    v1=tonumber(feld1:getText())
    v2=tonumber(feld2:getText())
    v3=tonumber(feld3:getText())
    v4=tonumber(feld4:getText())
    v5=tonumber(feld5:getText())
    v6=tonumber(feld6:getText())
    v7=tonumber(feld7:getText())
    v8=tonumber(feld8:getText())
    v9=tonumber(feld9:getText())
    
    values = {v1,v2,v3,v4,v5,v6,v7,v8}
    fields = {feld1,feld2,feld3,feld4,feld5,feld6,feld7,feld8}
    for i=1, 8 do
        if values[i]~=nil then
            fields[i]:setText(tostring(values[i] / v9 *100))
        end
    end
    feld9:setText("100")
end

function on.paint(gc)
gc:setFont("sansserif", "b", 10)
gc:drawString("arrowkey up: convert to %", 3,160)
gc:drawString("arrowkey down: convert to absolute frequencies", 3,175)
gc:setFont("sansserif", "i", 9)
gc:drawString("-> for the second, put the total value into the red field", 5,193)

end