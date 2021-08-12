@echo off
color 2
set version=1.0.2
title join a game [v%version%]
echo Write the server ip (Radmin Vpn Ip)
set /p server_ip="Enter the server ip here "
echo Write the server port (It's mostly 53640)
set /p server_port="Enter the server port here "
echo What will be your username?
set /p username="Enter your username here "
echo What will be your id?
set /p id="Enter you id here "
echo What will be your Membership?  List of the memberships None BuildersClub TurboBuildersClub OutrageousBuildersClub. 
echo Please check your writing and remember write exactly like written
set /p membership="enter your membership "


cls

echo --This is a joinscript that works in 2013 and back, etc. >content/join.lua
echo -- functions -------------------------- >>content/join.lua
echo function onPlayerAdded(player) >>content/join.lua
echo 	-- override >>content/join.lua
echo end >>content/join.lua
echo pcall(function() game:SetPlaceID(-1, false) end) >>content/join.lua
echo local startTime = tick() >>content/join.lua
echo local connectResolved = false >>content/join.lua
echo local loadResolved = false >>content/join.lua
echo local joinResolved = false >>content/join.lua
echo local playResolved = true >>content/join.lua
echo local playStartTime = 0 >>content/join.lua
echo local cdnSuccess = 0 >>content/join.lua
echo local cdnFailure = 0 >>content/join.lua
echo settings()["Game Options"].CollisionSoundEnabled = true >>content/join.lua
echo pcall(function() settings().Rendering.EnableFRM = true end) >>content/join.lua
echo pcall(function() settings().Physics.Is30FpsThrottleEnabled = false end) >>content/join.lua
echo pcall(function() settings()["Task Scheduler"].PriorityMethod = Enum.PriorityMethod.AccumulatedError end) >>content/join.lua
echo pcall(function() settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.DefaultAuto end) >>content/join.lua
echo local threadSleepTime = ...  >>content/join.lua
echo if threadSleepTime==nil then  >>content/join.lua
echo 	threadSleepTime = 15  >>content/join.lua
echo end  >>content/join.lua
echo local test = true  >>content/join.lua
echo local closeConnection = game.Close:connect(function()   >>content/join.lua
echo 	if 0 then  >>content/join.lua
echo 		if not connectResolved then  >>content/join.lua
echo 			local duration = tick() - startTime;  >>content/join.lua
echo 		elseif (not loadResolved) or (not joinResolved) then  >>content/join.lua
echo 			local duration = tick() - startTime;  >>content/join.lua
echo 			if not loadResolved then  >>content/join.lua
echo 				loadResolved = true  >>content/join.lua
echo 			end  >>content/join.lua
echo 			if not joinResolved then  >>content/join.lua
echo 				joinResolved = true  >>content/join.lua
echo 			end  >>content/join.lua
echo 		elseif not playResolved then  >>content/join.lua
echo 			playResolved = true  >>content/join.lua
echo 		end  >>content/join.lua
echo 	end  >>content/join.lua
echo end)  >>content/join.lua
echo game:GetService("ChangeHistoryService"):SetEnabled(false)  >>content/join.lua
echo game:GetService("ContentProvider"):SetThreadPool(16)  >>content/join.lua
echo game:GetService("InsertService"):SetBaseSetsUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=10&type=base")  >>content/join.lua
echo game:GetService("InsertService"):SetUserSetsUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?nsets=20&type=user&userid=d")  >>content/join.lua
echo game:GetService("InsertService"):SetCollectionUrl("http://www.roblox.com/Game/Tools/InsertAsset.ashx?sid=d")  >>content/join.lua
echo game:GetService("InsertService"):SetAssetUrl("http://www.roblox.com/Asset/?id=d")  >>content/join.lua
echo game:GetService("InsertService"):SetAssetVersionUrl("http://www.roblox.com/Asset/?assetversionid=d")  >>content/join.lua
echo pcall(function() game:GetService("SocialService"):SetFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsFriendsWith&playerid=d") end)  >>content/join.lua
echo pcall(function() game:GetService("SocialService"):SetBestFriendUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsBestFriendsWith&playerid=d") end)  >>content/join.lua
echo pcall(function() game:GetService("SocialService"):SetGroupUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsInGroup&playerid=d") end)  >>content/join.lua
echo pcall(function() game:GetService("SocialService"):SetGroupRankUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=GetGroupRank&playerid=d") end)  >>content/join.lua
echo pcall(function() game:GetService("SocialService"):SetGroupRoleUrl("http://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=GetGroupRole&playerid=d") end)  >>content/join.lua
echo pcall(function() game:GetService("GamePassService"):SetPlayerHasPassUrl("http://www.roblox.com/Game/GamePass/GamePassHandler.ashx?Action=HasPass&UserID=d") end)  >>content/join.lua
echo pcall(function() game:GetService("MarketplaceService"):SetProductInfoUrl("https://api.roblox.com/marketplace/productinfo?assetId=d") end)  >>content/join.lua
echo pcall(function() game:GetService("MarketplaceService"):SetPlayerOwnsAssetUrl("https://api.roblox.com/ownership/hasasset?userId=d") end)  >>content/join.lua
echo pcall(function() game:SetCreatorID(0, Enum.CreatorType.User) end)  >>content/join.lua
echo pcall(function() game:GetService("Players"):SetChatStyle(Enum.ChatStyle.ClassicAndBubble)  >>content/join.lua
echo end)  >>content/join.lua
echo local waitingForCharacter = false  >>content/join.lua
echo pcall( function()  >>content/join.lua
echo 	if settings().Network.MtuOverride == 0 then  >>content/join.lua
echo 	  settings().Network.MtuOverride = 1400  >>content/join.lua
echo 	end  >>content/join.lua
echo end)  >>content/join.lua
echo client = game:GetService("NetworkClient")  >>content/join.lua
echo visit = game:GetService("Visit")  >>content/join.lua
echo function setMessage(message)  >>content/join.lua
echo 	-- todo: animated "..."  >>content/join.lua
echo 	if not false then  >>content/join.lua
echo 		game:SetMessage(message)  >>content/join.lua
echo 	else  >>content/join.lua
echo 		-- hack, good enought for now  >>content/join.lua
echo 		game:SetMessage("Teleporting ...")  >>content/join.lua
echo 	end  >>content/join.lua
echo end  >>content/join.lua
echo function showErrorWindow(message, errorType, errorCategory)  >>content/join.lua
echo 	game:SetMessage(message)  >>content/join.lua
echo end  >>content/join.lua
echo -- called when the client connection closes  >>content/join.lua
echo function onDisconnection(peer, lostConnection)  >>content/join.lua
echo 	if lostConnection then  >>content/join.lua
echo 		showErrorWindow("You have lost connection", "LostConnection", "LostConnection")  >>content/join.lua
echo 	else  >>content/join.lua
echo 		showErrorWindow("This game has been shutdown", "Kick", "Kick")  >>content/join.lua
echo 	end  >>content/join.lua
echo end  >>content/join.lua
echo function requestCharacter(replicator) >>content/join.lua 	
echo 	-- prepare code for when the Character appears  >>content/join.lua
echo 	local connection  >>content/join.lua
echo 	connection = player.Changed:connect(function (property)  >>content/join.lua
echo 		if property=="Character" then  >>content/join.lua
echo 			game:ClearMessage()  >>content/join.lua
echo 			waitingForCharacter = false  >>content/join.lua			
echo 			connection:disconnect() 	 >>content/join.lua	
echo 			if 0 then  >>content/join.lua
echo 				if not joinResolved then  >>content/join.lua
echo 					local duration = tick() - startTime;  >>content/join.lua
echo 					joinResolved = true  >>content/join.lua
echo 					playStartTime = tick()  >>content/join.lua
echo 					playResolved = false  >>content/join.lua
echo 				end  >>content/join.lua
echo 			end  >>content/join.lua
echo 		end  >>content/join.lua
echo 	end) 	 >>content/join.lua
echo 	setMessage("Requesting character")  >>content/join.lua	
echo 	local success, err = pcall(function()  >>content/join.lua
echo 		replicator:RequestCharacter()  >>content/join.lua
echo 		setMessage("Waiting for character")  >>content/join.lua
echo 		waitingForCharacter = true  >>content/join.lua
echo 	end)  >>content/join.lua
echo end  >>content/join.lua
echo function onConnectionAccepted(url, replicator)  >>content/join.lua
echo 	connectResolved = true  >>content/join.lua
echo 	local waitingForMarker = true 	 >>content/join.lua
echo 	local success, err = pcall(function()  >>content/join.lua
echo 		if not test then  >>content/join.lua
echo 		    visit:SetPing("", 300)  >>content/join.lua
echo 		end 	 >>content/join.lua
echo 		if not false then  >>content/join.lua
echo 			game:SetMessageBrickCount()  >>content/join.lua
echo 		else  >>content/join.lua
echo 			setMessage("Teleporting ...")  >>content/join.lua
echo 		end  >>content/join.lua
echo 		replicator.Disconnection:connect(onDisconnection) >>content/join.lua 		
echo 		local marker = replicator:SendMarker() >>content/join.lua 		
echo 		marker.Received:connect(function()  >>content/join.lua
echo 			waitingForMarker = false  >>content/join.lua
echo 			requestCharacter(replicator)  >>content/join.lua
echo 		end)  >>content/join.lua
echo 	end) 	 >>content/join.lua
echo 	if not success then  >>content/join.lua
echo 		return  >>content/join.lua
echo 	end 	 >>content/join.lua
echo 	while waitingForMarker do  >>content/join.lua
echo 		workspace:ZoomToExtents()  >>content/join.lua
echo 		wait(0.5)  >>content/join.lua
echo 	end  >>content/join.lua
echo end  >>content/join.lua
echo -- called when the client connection fails  >>content/join.lua
echo function onConnectionFailed(_, error)  >>content/join.lua
echo 	showErrorWindow("Failed to connect to the Game. (ID=" .. error .. ")", "ID" .. error, "Other")  >>content/join.lua
echo end  >>content/join.lua
echo -- called when the client connection is rejected  >>content/join.lua
echo function onConnectionRejected()  >>content/join.lua
echo 	connectionFailed:disconnect()  >>content/join.lua
echo 	showErrorWindow("This game is not available. Please try another", "WrongVersion", "WrongVersion")  >>content/join.lua
echo end  >>content/join.lua
echo pcall(function() settings().Diagnostics:LegacyScriptMode() end)  >>content/join.lua
echo local success, err = pcall(function()	  >>content/join.lua
echo 	game:SetRemoteBuildMode(true) 	 >>content/join.lua
echo 	setMessage("Connecting to Server")  >>content/join.lua
echo 	client.ConnectionAccepted:connect(onConnectionAccepted)  >>content/join.lua
echo 	client.ConnectionRejected:connect(onConnectionRejected)  >>content/join.lua
echo 	connectionFailed = client.ConnectionFailed:connect(onConnectionFailed)  >>content/join.lua
echo 	client.Ticket = "" 	 >>content/join.lua
echo 	playerConnectSucces, player = pcall(function() return client:PlayerConnect(%id%, "%server_ip%", %server_port%, 0, threadSleepTime) end)  >>content/join.lua
echo 	player.Name = "%username%"  >>content/join.lua
echo           game.Players.LocalPlayer.userId = %id% >>content/join.lua
echo 	player:SetSuperSafeChat(false)  >>content/join.lua
echo 	pcall(function() player:SetUnder13(false) end)  >>content/join.lua
echo 	pcall(function() player:SetMembershipType(Enum.MembershipType.%membership%) end)  >>content/join.lua
echo 	pcall(function() player:SetAccountAge(365) end)  >>content/join.lua
echo 	player.Idled:connect(onPlayerIdled)  >>content/join.lua
echo 	-- Overriden  >>content/join.lua
echo 	onPlayerAdded(player)  >>content/join.lua
echo 	--player.CharacterAppearance = ""  >>content/join.lua
echo 	if not test then visit:SetUploadUrl("")end  >>content/join.lua	
echo end)  >>content/join.lua
echo pcall(function() game:SetScreenshotInfo("") end)  >>content/join.lua

echo dofile("rbxasset://character.lua") >content/play.lua
echo dofile("rbxasset://join.lua") >>content/play.lua

echo Joining server %server_ip%, port %server_port% as %username% %id% %membership%
start FunnyBlox.exe -script "wait(); dofile('rbxasset://2011ECorescripts.lua') dofile('rbxasset://play.lua')"
echo Client launched.
pause >NUL
