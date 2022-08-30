DGS = exports.dgs

local canOpenPanel = false
local screenW, screenH = DGS:dgsGetScreenSize()

--setTimer ( triggerServerEvent , 500 , 1 , getResourceName ( resource )..":getAct" , localPlayer , "6tzK8yrOHeAAAAAAAAAACXNN_3Kt95TxRrEa65w3aAQW9pqlAgtwXKBnBYqBm8Ht" )
 
addEvent ( getResourceName ( resource )..":canResourceStart" , true )

addEventHandler ( getResourceName ( resource )..":canResourceStart" , root , 

	function ( theState , thisState )

	canOpenPanel = theState
	
	if ( canOpenPanel == false ) then
	
	if GridList then
	
	DGS:dgsSetVisible ( GridList , false )
	
	destroyElement ( GridList )
	
	end
	
	if WindowCar then
	
	DGS:dgsSetVisible ( WindowCar , false )
	
	destroyElement ( WindowCar )
	
	end
	
	elseif ( canOpenPanel == true and thisState == "6tzK8yrOHeAAAAAAAAAACXNN_3Kt95TxRrEa65w3aAQW9pqlAgtwXKBnBYqBm8Ht" ) then
	
	for k, v in pairs( MODEL ) do
	--outputChatBox(tostring(v[2]))
		if ( fileExists(v[2]) ) then
		outputDebugString("")
		else
		downloadFile ( v[2] )
		end
		if ( fileExists(v[3]) ) then
		outputDebugString("")
		else
			downloadFile ( v[3] )
		end
	end

function centerWindow(center_window, x, y)
    local screenW,screenH=DGS:dgsGetScreenSize()
    local windowW,windowH=DGS:dgsGetSize(center_window,false)
    local x,y = (screenW-windowW)/x,(screenH-windowH)/y
    DGS:dgsSetPosition(center_window,x,y,false)
end





	WindowCar = DGS:dgsCreateWindow(0.34, 0.37, 0.33, 0.31, "=> For Close Window Car : Press F5 || By ROMCIS !", true,_,_,_, tocolor(0, 0, 0, 255))
	DGS:dgsSetVisible(WindowCar, false)
	DGS:dgsSetFont ( WindowCar, "default-bold" )
        lbl = DGS:dgsCreateLabel(0.73, 0.70, 0.28, 0.12, "This Panel Made By Boyka\n \n      And Edit By Romcis", true, WindowCar)  
	DGS:dgsSetFont ( lbl, "default-bold" )
        centerWindow ( WindowCar, 2, 2 )
	DGS:dgsWindowSetSizable(WindowCar, false)
	DGS:dgsWindowSetCloseButtonEnabled(WindowCar, false)

	-- X = DGS:dgsCreateStaticImage(0.00, 0.00, 0.08, 0.08, "3.png", true, WindowCar)
	GridList = DGS:dgsCreateGridList(0.02, 0.05, 0.66, 0.81, true, WindowCar, _, tocolor(0, 0, 0, 70), tocolor(255, 255, 255, 255), tocolor(0, 0, 0, 70), tocolor(0, 0, 0, 70), tocolor(255, 255, 255, 200), tocolor(255, 255, 255, 200))
	DGS:dgsGridListAddColumn(GridList, "المركبه", 0.5)
	DGS:dgsGridListAddColumn(GridList, "حالة التحميل", 0.25)
	DGS:dgsGridListAddColumn(GridList, "الحالة", 0.2)
	BTN1 = DGS:dgsCreateButton(0.70, 0.05, 0.28, 0.12, "تفعيل الكل", true, WindowCar)
	BTN2 = DGS:dgsCreateButton(0.70, 0.20, 0.28, 0.12, "تفعيل", true, WindowCar)
	BTN3 = DGS:dgsCreateButton(0.70, 0.35, 0.28, 0.12, "تعطيل الكل", true, WindowCar)
	BTN4 = DGS:dgsCreateButton(0.70, 0.50, 0.28, 0.12, "تعطيل", true, WindowCar)
	DGS:dgsSetFont ( BTN1, "default-bold" )
	DGS:dgsSetFont ( BTN2, "default-bold" )
	DGS:dgsSetFont ( BTN3, "default-bold" )
	DGS:dgsSetFont ( BTN4, "default-bold" )
	REFRESH()

		end
	end
	)



addEventHandler("onDgsMouseEnter", resourceRoot,
function ()
	if ( source == X ) then
		playSoundFrontEnd(3);
		DGS:dgsSetAlpha(source, 0.8);
	elseif ( source == BTN1 ) then
		playSoundFrontEnd(2);
		DGS:dgsSetAlpha(source, 0.8);
	elseif ( source == BTN2 ) then
		playSoundFrontEnd(2);
		DGS:dgsSetAlpha(source, 0.8);
	elseif ( source == BTN3 ) then
		playSoundFrontEnd(2);
		DGS:dgsSetAlpha(source, 0.8);
	elseif ( source == BTN4 ) then
		playSoundFrontEnd(2);
		DGS:dgsSetAlpha(source, 0.8);
	end
end )

addEventHandler ( "onDgsMouseLeave", root,
function () 
	if ( source == BTN1 ) then
		DGS:dgsSetAlpha(source, 1);
	elseif ( source == X ) then
		DGS:dgsSetAlpha(source, 1);
	elseif ( source == BTN2 ) then
		DGS:dgsSetAlpha(source, 1);
	elseif ( source == BTN3 ) then
		DGS:dgsSetAlpha(source, 1);
	elseif ( source == BTN4 ) then
		DGS:dgsSetAlpha(source, 1);
	end
end )


local password = "331519773322812633131805"
ID_TXD = {}
function replaceTheDff(dff, NumberCar, key)
	local encryptedFile = fileOpen(dff, true)
	if encryptedFile then
		local fileContent = fileRead(encryptedFile, 1777788)
		local fileContent2 = fileRead(encryptedFile, fileGetSize(encryptedFile))
		fileClose(encryptedFile)
		local fileContent = base64Decode( teaDecode(fileContent, key) )
		if fileContent then
                dff1 = engineLoadDFF("".. fileContent .."".. fileContent2 .."",NumberCar)
                engineReplaceModel(dff1,NumberCar)
			--	outputChatBox(key)
				return true
		end
	end
	return false
end
function replaceTheTxd(dff, NumberCar, key)
	local encryptedFile = fileOpen(dff, true)
	if encryptedFile then
		local fileContent = fileRead(encryptedFile, 1777788)
		local fileContent2 = fileRead(encryptedFile, fileGetSize(encryptedFile))
		fileClose(encryptedFile)
		local fileContent = base64Decode( teaDecode(fileContent, key) )
		if fileContent then
                ID_TXD[NumberCar] = engineLoadTXD("".. fileContent .."".. fileContent2 .."")
                engineImportTXD(ID_TXD[NumberCar],NumberCar)
			--	outputChatBox(key)
				return true
				
		end
	end
	return false
end


function ENABLE_FILE( ID ,TXD_FILE ,DFF_FILE, STATE , STATESecurity )
	if ( type(ID) == "number" ) and ( type(TXD_FILE) == "string" ) and ( type(DFF_FILE) == "string" ) then
		if ( STATE ) then 
			if ( fileExists(TXD_FILE) and fileExists(DFF_FILE) ) then
				if ( STATESecurity == "yes" ) then 
					replaceTheTxd ( TXD_FILE , ID , password )
					replaceTheDff ( DFF_FILE , ID , password )
				else
					ID_TXD [ ID ] = engineLoadTXD ( TXD_FILE )
					engineImportTXD ( ID_TXD [ ID ], ID )
					
					local dff = engineLoadDFF ( DFF_FILE , 0 )
					engineReplaceModel ( dff, ID )
				end
				
				MODEL[ID][4] = true
				REFRESH()
			end
		else
			if ( isElement(ID_TXD[ID]) ) then
				destroyElement(ID_TXD[ID])
				ID_TXD[ID] = nil
			end
			engineRestoreModel ( ID )
			MODEL[ID][4] = false
			REFRESH()
		end
	end
end
 
    
function REFRESH()
if canOpenPanel == false then return false end
	local ROW, COL = DGS:dgsGridListGetSelectedItem ( GridList ) 
	DGS:dgsGridListClear ( GridList )
	for k, v in pairs( MODEL ) do
		DOWNLOADE_STATE = false
		if fileExists(v[2]) and fileExists(v[3]) then
			DOWNLOADE_STATE = true
		end
		local row =  DGS:dgsGridListAddRow ( GridList )
		DGS:dgsGridListSetItemText ( GridList, row, 1, v[1], false, false )
		DGS:dgsGridListSetItemText ( GridList, row, 2, DOWNLOADE_STATE and "تم التحميل" or "لم يتم التحميل" , false, false )
		DGS:dgsGridListSetItemText ( GridList, row, 3, v[4] and "مفعل" or "غير مفعل" , false, false )
		SCOLOR = v[4] and { 0, 255, 0 } or { 255, 0, 0 }
		DCOLOR = DOWNLOADE_STATE and { 0, 255, 0 } or { 255, 0, 0 }
		DGS:dgsGridListSetItemColor( GridList, row, 2, DCOLOR[1], DCOLOR[2], DCOLOR[3], 255 )
		DGS:dgsGridListSetItemColor( GridList, row, 3, SCOLOR[1], SCOLOR[2], SCOLOR[3], 255 )
		DGS:dgsGridListSetItemData(GridList, row, 1, k)
		DGS:dgsGridListSetItemData(GridList,row,2,v[5])
		DGS:dgsSetFont ( GridList, "default-bold" )


	end
	DGS:dgsGridListSetSelectedItem ( GridList, ROW, COL )
end


addEventHandler ( "onClientFileDownloadComplete", resourceRoot,
function ( FILE, SUCCESS )
	if ( SUCCESS ) then
		REFRESH()
    end
end )


addEventHandler ( "onDgsMouseClick", root,
function  (  )
if canOpenPanel == false then return false end
	if source == BTN1 then
		for k, v in pairs( MODEL ) do
			ENABLE_FILE( k ,v[2], v[3], true ,v[5])
		end
	elseif source == BTN3 then
		for k, v in pairs( MODEL ) do
			ENABLE_FILE( k ,v[2] ,v[3], false ,v[5])
		end
	elseif source == BTN2 then
		if ( DGS:dgsGridListGetSelectedItem(GridList) ~= -1 ) then
			local ID = DGS:dgsGridListGetItemData(GridList, DGS:dgsGridListGetSelectedItem(GridList), 1 )
			if ( MODEL[ID] ) then
				ENABLE_FILE( ID ,MODEL[ID][2] ,MODEL[ID][3], true , DGS:dgsGridListGetItemData ( GridList , DGS:dgsGridListGetSelectedItem(GridList) , 2 ) )
			end
		end
	elseif source == BTN4 then
		if ( DGS:dgsGridListGetSelectedItem(GridList) ~= -1 ) then
			local ID = DGS:dgsGridListGetItemData(GridList, DGS:dgsGridListGetSelectedItem(GridList), 1 )
			if ( MODEL[ID] ) then
				ENABLE_FILE( ID ,MODEL[ID][2] ,MODEL[ID][3], false , DGS:dgsGridListGetItemData ( GridList , DGS:dgsGridListGetSelectedItem(GridList) , 2 ) )
			end
		end
    end
end )


addEventHandler("onDgsMouseClick",root,
	function ()
		if ( source == X ) then
		DGS:dgsSetVisible(WindowCar, false)
		showCursor(false)
		end
	end
)

TimeGuiSetTopC = { }

function guiMoveTopToCenter(gui)
if getElementData(gui,"HelhGui") == false then
	setElementData(gui,"HelhGui",true)
    local s1,s2=DGS:dgsGetScreenSize()
    local w1,w2=DGS:dgsGetSize(gui,false)
    local x,y = (s1-w1)/2,(s2-w2)/2
	DGS:dgsSetPosition(gui,x,-w2,false) 

TimeGuiSetTopC[gui] = setTimer(guiMoveTopToCenter,50,0,gui)
end
    local a,b=DGS:dgsGetScreenSize()
    local w1,w2=DGS:dgsGetSize(gui,false)
    local x,y = (a-w1)/2,(b-w2)/2
    local x1,y1 = DGS:dgsGetPosition ( gui, false)
if (y1 >= y) then
    killTimer(TimeGuiSetTopC[gui])
	setElementData(gui,"HelhGui",false)
    else
    DGS:dgsSetPosition(gui,x1,(y1+10),false)
end
end


local key = "F5"
function Show_Hide()
if DGS:dgsGetVisible(WindowCar) == false then
DGS:dgsSetVisible(WindowCar, true)
showCursor(true)
	REFRESH()
else 
DGS:dgsSetVisible(WindowCar, false)
showCursor(false)
	REFRESH()
end end
bindKey(key,"down",Show_Hide)


TimeGuiSetTopC = { }

function guiMoveTopToCenter(gui)
if getElementData(gui,"HelhGui") == false then
	setElementData(gui,"HelhGui",true)
    local s1,s2=DGS:dgsGetScreenSize()
    local w1,w2=DGS:dgsGetSize(gui,false)
    local x,y = (s1-w1)/2,(s2-w2)/2
	DGS:dgsSetPosition(gui,x,-w2,false) 

TimeGuiSetTopC[gui] = setTimer(guiMoveTopToCenter,50,0,gui)
end
    local a,b=DGS:dgsGetScreenSize()
    local w1,w2=DGS:dgsGetSize(gui,false)
    local x,y = (a-w1)/2,(b-w2)/2
    local x1,y1 = DGS:dgsGetPosition ( gui, false)
if (y1 >= y) then
    killTimer(TimeGuiSetTopC[gui])
	setElementData(gui,"HelhGui",false)
    else
    DGS:dgsSetPosition(gui,x1,(y1+10),false)
end
end

--setTimer( function()
--guiMoveTopToCenter(WindowCar)
--DGS:dgsSetVisible(WindowCar,true)
--showCursor(true)
--end,3000,1)


addEvent('opengui',true)
addEventHandler('opengui',root,function()
if canOpenPanel == false then return false end
guiMoveTopToCenter(WindowCar)
DGS:dgsSetVisible(WindowCar,true)
showCursor(true)
end)


addEventHandler("onClientResourceStart", resourceRoot,
function()
	triggerServerEvent("sc:onClientReady", localPlayer);
end)