local hasLoaded = false 
function character() 
local player = game.Workspace:FindFirstChild("FUNNYBLOX") 
if player~=nil and hasLoaded == false then 
wait(1) 
player.Head.BrickColor = BrickColor.new("44") 
player.Torso.BrickColor = BrickColor.new("43") 
player["Right Leg"].BrickColor = BrickColor.new("43") 
player["Right Arm"].BrickColor = BrickColor.new("50") 
player["Left Leg"].BrickColor = BrickColor.new("43") 
player["Left Arm"].BrickColor = BrickColor.new("50") 
local Shirt = Instance.new("Shirt", player) 
Shirt.ShirtTemplate = "" 
local Pants = Instance.new("Pants", player) 
Pants.PantsTemplate = "" 
player.Head.face.Texture = "https://oldrobloxassets.000webhostapp.com/clothes/faces/tix%20vision.png" 
local tshirt = Instance.new("ShirtGraphic", player) 
tshirt.Graphic = "https://oldrobloxassets.000webhostapp.com/clothes/Tshirts/Windows95.png" 
game:Load('https://oldrobloxassets.000webhostapp.com/hats/strawhat.rbxm') 
local Accoutrement = Instance.new('Accoutrement', player) 
game.Handle.Parent = Accoutrement 
Accoutrement.AttachmentPos = Vector3.new(0, -0.35, 0) 
Accoutrement.Name = 'Viking Helm' 
player.Humanoid.Died:connect(function() 
   if hasLoaded == true then 
       wait(5) 
       hasLoaded = false 
   end 
end) 
hasLoaded = true 
end 
end 
workspace.ChildAdded:connect(character) 
