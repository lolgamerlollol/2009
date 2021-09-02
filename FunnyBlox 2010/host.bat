@echo off
set version=3.0
title FunnyBlox Hosting [%version%]
echo.
echo write the map file location here
set /p Map=
echo write the server port here (Please use the most common one 53640)
set /p Port=

cd content
cls
title creating a server get ready to game
echo creating hosting scripts
ping localhost -n 1 >NUL
echo dofile('rbxasset://host.lua') >server.lua
ping localhost -n 1 >NUL
echo game:Load('rbxasset://gui.rbxm') >>server.lua
echo game:FindFirstChild("Health-GUI").Parent = game.StarterGui >>server.lua
ping localhost -n 1 >NUL
echo Setting server port...

echo Port = 53640 >host.lua
echo Server =  game:GetService("NetworkServer") >>host.lua
echo HostService = game:GetService("RunService")Server:Start(Port,20) >>host.lua
echo game:GetService("RunService"):Run() >>host.lua
echo print("Rowritten server started!") >>host.lua
echo function onJoined(NewPlayer) >>host.lua
echo print("New player found: "..NewPlayer.Name.."") >>host.lua
echo NewPlayer:LoadCharacter(true) >>host.lua
echo while wait() do >>host.lua
echo if NewPlayer.Character.Humanoid.Health == 0 then >>host.lua
echo wait(5) >>host.lua
echo NewPlayer:LoadCharacter(true)>>host.lua
echo elseif NewPlayer.Character.Parent  == nil then >>host.lua
echo wait(5) >>host.lua
echo NewPlayer:LoadCharacter(true) >>host.lua
echo end >>host.lua
echo end >>host.lua
echo end >>host.lua
echo game.Players.PlayerAdded:connect(onJoined) >>host.lua
cd ..
start FunnyBlox.exe %map% -script  "wait(); dofile('rbxasset://server.lua') dofile('rbxasset://fixassetlinks.lua')" 
exit