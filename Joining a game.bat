
@echo off
set version=1.0.2
title Join a Server [v%version%]
echo Type the server ip here (You have to type the radmin vpn ip)
set /p server_ip="Enter the server ip here "
echo Type the server port here (It's mostly 53640)
set /p server_port="Enter the server port here "
echo Type your username here
set /p username="Write it here "

cls

echo local server = "%server_ip%" >content/join.lua
echo local serverport = %server_port% >>content/join.lua
echo local clientport = 0 >>content/join.lua
echo local playername = "%username%" >>content/join.lua
echo game:SetMessage("Connecting to server...") >>content/join.lua
echo function dieerror(errmsg) >>content/join.lua
echo game:SetMessage(errmsg) >>content/join.lua
echo wait(math.huge) >>content/join.lua
echo end >>content/join.lua
echo local suc, err = pcall(function() >>content/join.lua
echo client = game:GetService("NetworkClient") >>content/join.lua
echo local player = game:GetService("Players"):CreateLocalPlayer(0) >>content/join.lua
echo player:SetSuperSafeChat(false) >>content/join.lua
echo game:GetService("Visit") >>content/join.lua
echo player.Name = playername >>content/join.lua
echo game:ClearMessage() >>content/join.lua
echo end) >>content/join.lua
echo if not suc then >>content/join.lua
echo dieerror(err) >>content/join.lua
echo end >>content/join.lua
echo function connected(url, replicator) >>content/join.lua
echo local suc, err = pcall(function() >>content/join.lua
echo local marker = replicator:SendMarker() >>content/join.lua
echo end) >>content/join.lua
echo if not suc then >>content/join.lua
echo dieerror(err) >>content/join.lua
echo end >>content/join.lua
echo marker.Recieved:wait() >>content/join.lua
echo local suc, err = pcall(function() >>content/join.lua
echo game:ClearMessage() >>content/join.lua
echo end) >>content/join.lua
echo if not suc then >>content/join.lua
echo dieerror(err) >>content/join.lua
echo end >>content/join.lua
echo end >>content/join.lua
echo function rejected() >>content/join.lua
echo dieerror("Connection failed: Rejected by server.") >>content/join.lua
echo end >>content/join.lua
echo function failed(peer, errcode, why) >>content/join.lua
echo dieerror("Failed [".. peer.. "], ".. errcode.. ": ".. why) >>content/join.lua
echo end >>content/join.lua
echo local suc, err = pcall(function() >>content/join.lua
echo client.ConnectionAccepted:connect(connected) >>content/join.lua
echo client.ConnectionRejected:connect(rejected) >>content/join.lua
echo client.ConnectionFailed:connect(failed) >>content/join.lua
echo client:Connect(server, serverport, clientport, 20) >>content/join.lua
echo end) >>content/join.lua
echo if not suc then >>content/join.lua
echo local x = Instance.new("Message") >>content/join.lua
echo x.Text = err >>content/join.lua
echo x.Parent = workspace >>content/join.lua
echo wait(math.huge) >>content/join.lua
echo end >>content/join.lua
echo while true do >>content/join.lua
echo wait(0.001) >>content/join.lua
echo replicator:SendMarker() >>content/join.lua
echo end >>content/join.lua

echo dofile("rbxasset://character.lua") >content/play.lua
echo dofile("rbxasset://join.lua") >>content/play.lua

cls
echo Joining server %server_ip%, port %server_port% as %username%
start FunnyBlox.exe -script "wait(); dofile('rbxasset://character.lua') dofile('rbxasset://play.lua')"
echo Client launched.
exit
