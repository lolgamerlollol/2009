@echo off
title Host
echo Drag your map file here:
set /p map=
echo server port
set /p port=

cd content
cls
echo game:Load('rbxasset://gui.rbxm') >>server.lua
echo game:FindFirstChild("HealthGui").Parent = game.StarterGui >>server.lua

cd ..
FunnyBlox.exe %map% -script "dofile('rbxasset://2011ECorescripts.lua') dofile('http://robukcs.ml/game/host.php?port=%port%') dofile('rbxasset://FixAssetLinks.lua')"