@echo off

color 2

title Avatar editor

ECHO == Setup mode options: [ 1 = Viking Hat, 2 = Redcap, 3 = Quit Avatar editor 4 = NormalHair 5 = BlueWinter Hat 6 = Teapot 7 = Police Hat 8 = Straw hat 9 = 2008 visor 10 = Bighead 11 = BiggerHead 12 = Gorilla 13 = Erik.cassel hat 14 = DominoCrown 15 = Bc hat 16 = Tbc hat 17 = obc hat 18 = PartyHat 19 = Shaggy 20 = White Dominus 21 = TelamonChickenSuit 22 = 2009RRsummerHat 23 = Business Fedora 24 = FireNinjaMask 25 = WhiteNinjaMask 26 = RedBaseballCap 27 = TrafficCone 28 = Beautifull hair for beautifull people 29 = BloxxerCap 30 = Doge 31 = Knight Of The Blood Moon 32 = Verified 33 = Last egg of 2012 34 = ZombieDoge 35 = PirateHat 36 = ClassicGift 37 = Verified Gift 38 = GoldGift 39 = 2009 visor 40 = 2012 visor 41 = 2007 visor 42 = 2014 visor 45 = 2015 visor 46 = 2013 visor]
SET /P LaunchId="Setup mode: "
IF %LaunchId%==2 GOTO RedcapSetup
IF %LaunchId%==1 GOTO Viking HatSetup
IF %LaunchId%==3 GOTO ExitSetup
IF %LaunchId%==4 GOTO NormalHairSetup
IF %LaunchId%==5 GOTO BlueWinSetup
IF %LaunchId%==6 GOTO TeaSetup
IF %LaunchId%==7 GOTO PSetup
IF %LaunchId%==8 GOTO StSetup
IF %LaunchId%==9 GOTO VSetup
IF %LaunchId%==10 GOTO BSetup
IF %LaunchId%==11 GOTO B2Setup
IF %LaunchId%==12 GOTO GSetup
IF %LaunchId%==13 GOTO erSetup
IF %LaunchId%==14 GOTO DCSetup
IF %LaunchId%==15 GOTO BCSetup
IF %LaunchId%==16 GOTO TBCSetup
IF %LaunchId%==17 GOTO OBCSetup
IF %LaunchId%==18 GOTO PSetup
IF %LaunchId%==19 GOTO SSetup
IF %LaunchId%==20 GOTO DSetup
IF %LaunchId%==21 GOTO TeSetup
IF %LaunchId%==22 GOTO 09Setup
IF %LaunchId%==23 GOTO BeSetup
IF %LaunchId%==24 GOTO FnSetup
IF %LaunchId%==25 GOTO WnSetup
IF %LaunchId%==26 GOTO BaseSetup
IF %LaunchId%==27 GOTO ConeSetup
IF %LaunchId%==28 GOTO BhSetup
IF %LaunchId%==29 GOTO BlSetup
IF %LaunchId%==30 GOTO DogSetup
IF %LaunchId%==31 GOTO KmSetup
IF %LaunchId%==32 GOTO VerSetup
IF %LaunchId%==33 GOTO eg12Setup
IF %LaunchId%==34 GOTO zdSetup
IF %LaunchId%==35 GOTO phSetup
IF %LaunchId%==36 GOTO cgSetup
IF %LaunchId%==37 GOTO vghSetup
IF %LaunchId%==38 GOTO ggSetup
IF %LaunchId%==39 GOTO 09Setup
IF %LaunchId%==40 GOTO 12Setup
IF %LaunchId%==41 GOTO 07Setup
IF %LaunchId%==42 GOTO 14Setup
IF %LaunchId%==45 GOTO 15Setup
IF %LaunchId%==46 GOTO 13Setup
SET ErrorMessage=Invalid option.
GOTO CancelSetup

:Viking HatSetup
ECHO == Mode: Editor
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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('http://retronium.ml/Hats/VikingHelm.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0,-0.3,0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua


cls

echo Generating avatar.
pause >NUL

:RedcapSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua
echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/theredcap.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0,-0.05,0.1) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua

cls

echo Generating avatar.
pause >NUL

:NormalHairSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/NormalHair.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0,0.05,-0.002) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BlueWinSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/bluewintercap1.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0,-0.25,-0.05) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua

cls

echo Generating avatar.
pause >NUL

:TeaSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo if player~=nil then >>character.lua
echo wait(0.5) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/teapot.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.25, 0.1) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua

cls

echo Generating avatar.
pause >NUL


:PSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua


echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/policecap.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.15, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua

cls

echo Generating avatar.
pause >NUL



:StSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/strawhat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.35, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:VSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/visor2008.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/bighead.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:B2Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/biggerhead.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.1, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:GSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/gorilllaaaa.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.2, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:erSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/erikhat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.1, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:DCSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/Dcrown.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.45, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:BcSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/bchat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.25, 0.15) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:TBcSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "	
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/tbchardhat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.25, 0.15) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:OBcSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/Obchat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.25, 0.15) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:SHSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/partyhat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.75, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:PSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/shaggy.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0.12, 0.3, -0.07) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:TeSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/chickensuit.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.1, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:DSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/dominus.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.4, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:09Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2009RR.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.17, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BeSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/buissnessfedora.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.25, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:WnSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/whiteninjamask.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.4, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:FnSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/fireninjamask.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.4, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BaseSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/redbaseballcapa.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.2, 0.15) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar

:ConeSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/trafficcone.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.9, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BhSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/blackbeauhair.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:BlSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/bloxxercap.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:DogSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/memedog.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.35, 0.3) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:KmSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/kmoon.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.65, 0.05) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:VerSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/verifiedp.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.75, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:eg12Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/lasteggof2012.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.1, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:zdSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/zombiedoge.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.35, 0.3) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:phSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/piratehat.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.25, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:cgSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/giftbox.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.75, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:vghSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/verifiedgift.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.75, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:ggSetup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/goldgift.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, -0.75, 0) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:09Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2009visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:12Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2012visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:07Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2007visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL

:14Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2014visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:15Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2015visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL


:15Setup
ECHO == Mode: Editor

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
echo.
title Arms Color
set /p RArm="Right Arm Color: "
set /p LArm="Left Arm Color: "
echo.
title Legs Color
set /p RLeg="Right Leg Color: "
set /p LLeg="Left Leg Color: "
title Shirt
set /p ShirtID="Shirt Asset (must be full url): "
echo.
title Pants
set /p PantsID="Pants Asset (must be full url): "
echo.
title Face
set /p FaceID="Face Asset (must be full url): "
echo.
title TShirt
set /p Graphic="Tshirt Asset (must be full url): "
echo.
echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua

echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "%ShirtID%" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "%PantsID%" >>character.lua
echo player.Head.face.Texture = "%FaceID%" >>character.lua
echo local tshirt = Instance.new("ShirtGraphic", player) >>character.lua
echo tshirt.Graphic = "%Graphic%" >>character.lua

echo game:Load('https://oldrobloxassets.000webhostapp.com/hats/2013visor.rbxm') >>character.lua
echo wait()
echo local Accoutrement = Instance.new('Accoutrement', player) >>character.lua
echo game.Handle.Parent = Accoutrement >>character.lua
echo Accoutrement.AttachmentPos = Vector3.new(0, 0.09, 0.18) >>character.lua
echo Accoutrement.Name = 'Viking Helm' >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
cls

echo Generating avatar.
pause >NUL