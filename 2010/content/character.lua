local hasLoaded = false 
function character() 
local player = game.Workspace:FindFirstChild("FUNNYBLOX") 
if player~=nil and hasLoaded == false then 
wait(1) 
player.Head.BrickColor = BrickColor.new("2") 
player.Torso.BrickColor = BrickColor.new("3") 
player["Right Leg"].BrickColor = BrickColor.new("3") 
player["Right Arm"].BrickColor = BrickColor.new("1") 
player["Left Leg"].BrickColor = BrickColor.new("2") 
player["Left Arm"].BrickColor = BrickColor.new("5") 
local Shirt = Instance.new("Shirt", player) 
Shirt.ShirtTemplate = "6" 
local Pants = Instance.new("Pants", player) 
Pants.PantsTemplate = "4" 
player.Head.face.Texture = "3" 
local tshirt = Instance.new("ShirtGraphic", player) 
tshirt.Graphic = "5" 
game:Load('https://oldrobloxassets.000webhostapp.com/hats/theredcap.rbxm') 
local Accoutrement = Instance.new('Accoutrement', player) 
game.Handle.Parent = Accoutrement 
Accoutrement.AttachmentPos = Vector3.new(0,-0.05,0.1) 
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
