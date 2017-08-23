x = 40

feld1=D2Editor:newRichText()
feld1:newRichText()
feld1:resize(60,27)
feld1:move(20+x,50)
feld1:setBorderColor(11117899)
feld1:setBorder(1)

feld2=D2Editor:newRichText()
feld2:newRichText()
feld2:resize(60,27)
feld2:move(20+x,130)
feld2:setBorderColor(11117899)
feld2:setBorder(1)

feld3=D2Editor:newRichText()
feld3:newRichText()
feld3:resize(60,27)
feld3:move(110+x,20)
feld3:setBorderColor(0000000)
feld3:setBorder(1)

feld4=D2Editor:newRichText()
feld4:newRichText()
feld4:resize(60,27)
feld4:move(110+x,70)
feld4:setBorderColor(0000000)
feld4:setBorder(1)

feld5=D2Editor:newRichText()
feld5:newRichText()
feld5:resize(60,27)
feld5:move(110+x,110)
feld5:setBorderColor(0000000)
feld5:setBorder(1)

feld6=D2Editor:newRichText()
feld6:newRichText()
feld6:resize(60,27)
feld6:move(110+x,160)
feld6:setBorderColor(0000000)
feld6:setBorder(1)

feld7=D2Editor:newRichText()
feld7:newRichText()
feld7:resize(70,27)
feld7:move(200+x,20)
feld7:setBorderColor(2222222)
feld7:setBorder(1)

feld8=D2Editor:newRichText()
feld8:newRichText()
feld8:resize(70,27)
feld8:move(200+x,70)
feld8:setBorderColor(2222222)
feld8:setBorder(1)

feld9=D2Editor:newRichText()
feld9:newRichText()
feld9:resize(70,27)
feld9:move(200+x,110)
feld9:setBorderColor(2222222)
feld9:setBorder(1)

feld10=D2Editor:newRichText()
feld10:newRichText()
feld10:resize(70,27)
feld10:move(200+x,160)
feld10:setBorderColor(2222222)
feld10:setBorder(1)

feld11=D2Editor:newRichText()
feld11:newRichText()
feld11:resize(40,27)
feld11:move(0,90)
feld11:setBorderColor(9111111)
feld11:setBorder(1)

feld12=D2Editor:newRichText()
feld12:newRichText()
feld12:resize(40,27)
feld12:move(3,180)
feld12:setBorderColor(0000000)
feld12:setBorder(1)

feld11:setText("100")
fields = {feld1,feld2,feld3,feld4,feld5,feld6,feld7,feld8,feld9,feld10,feld11}

if feld12:getText()~=nil then
    ndp = tonumber(feld12:getText())
else
    ndp = 3
    feld12:setText(tostring(ndp))
end

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function on.paint(gc)
    gc:drawString("All values in %.", 5,5)
    
    gc:setPen("medium","smooth")
    gc:setColorRGB(0,0,0)
    
    gc:drawLine(0+x,100, 120+x,60)
    gc:drawLine(0+x,100, 120+x,150)
    
    gc:drawLine(120+x,60, 190+x,30)
    gc:drawLine(120+x,60, 190+x,90)
    
    gc:drawLine(120+x,150, 190+x,120)
    gc:drawLine(120+x,150, 190+x,180)
    
    gc:setFont("sansserif", "r", 9)
    gc:drawString("<- decimal places; arrowkey down to round", 45, 190)
end

function on.tabKey()
    --ndp = tonumber(feld12:getText())
    
    values = {}
    for v=1,11 do
        values[v] = tonumber(fields[v]:getText())
        --if values[v]~=nil then
        --    values[v] = round(values[v], ndp) -- for rounding (doesn't work)
        --end
    end
    
    if values[11]~=nil then
        if values[1]~=nil then
            feld2:setText(tostring(values[11]-values[1]))
        elseif values[2]~=nil then
            feld1:setText(tostring(values[11]-values[2]))
        end
    end
    
    --if values[1]~=nil then
        if values[3]~=nil then
            feld4:setText(tostring(100-values[3]))
        elseif values[4]~=nil then
            feld3:setText(tostring(100-values[4]))
        end
    --end
    
    --if values[2]~=nil then
        if values[5]~=nil then
            feld6:setText(tostring(100-values[5]))
        elseif values[6]~=nil then
            feld5:setText(tostring(100-values[6]))
        end
    --end
    
    if values[1]~=nil then
        if values[3]~=nil then
            feld7:setText(tostring(values[1]*values[3]/100))
        end
        if values[4]~=nil then
            feld8:setText(tostring(values[1]*values[4]/100))
        end
        
        if values[7]~=nil then
            feld3:setText(tostring(values[7]/values[1]*100))
        end
        if values[8]~=nil then
            feld4:setText(tostring(values[8]/values[1]*100))
        end
    end
    
    if values[2]~=nil then
        if values[5]~=nil then
            feld9:setText(tostring(values[2]*values[5]/100))
        end
        if values[6]~=nil then
            feld10:setText(tostring(values[2]*values[6]/100))
        end
        
        if values[9]~=nil then
            feld5:setText(tostring(values[9]/values[2]*100))
        end
        if values[10]~=nil then
            feld6:setText(tostring(values[10]/values[2]*100))
        end
    end
    
    if values[3]~=nil and values[7]~=nil then
        feld1:setText(tostring(values[7]/values[3]*100))
    end
    
    if values[4]~=nil and values[8]~=nil then
        feld1:setText(tostring(values[8]/values[4]*100))
    end
    
    if values[5]~=nil and values[9]~=nil then
        feld2:setText(tostring(values[9]/values[5]*100))
    end
    
    if values[6]~=nil and values[10]~=nil then
        feld2:setText(tostring(values[10]/values[6]*100))
    end
    
    countlist = {}
    for i=7, 10 do
        if values[i]~=nil then
            table.insert(countlist, values[i])
        else
            withoutvalue = fields[i]
        end
    end
    
    if table.getn(countlist)==3 then
        result = 0
        for i=1, 3 do
            result = result + countlist[i]
        end
        print(result)
        withoutvalue:setText(tostring(100-result))
    end

end

function on.arrowDown()
    ndp = tonumber(feld12:getText())
    for i=1, 10 do
        if fields[i]:getText()~=nil then
            fields[i]:setText(tostring(round(tonumber(fields[i]:getText()), ndp)))
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
    feld10:setText("")
    --feld11:setText("")
end