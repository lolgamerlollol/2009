@echo off
cd content
Title avatar editor 
echo welcome to the avatar editor lets get started! Press any key to continue.

pause >NUL
cls
title Set username
set /p Username="Set name: "
echo.
title Head Color
set /p Head="Head Color: "
echo.
title Torso Color
set /p Torso="Torso Color": "
echo
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
echo

cls
echo Generating avatar
echo function character() >>character.lua
echo local player = workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil then >>character.lua
echo wait(0.5) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo end >>character.lua
echo end >>character.lua

echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL