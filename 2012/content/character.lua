local hasLoaded = false 
function character() 
local player = game.Workspace:FindFirstChild("Player") 
if player~=nil and hasLoaded == false then 
wait(1) 
player.Head.BrickColor = BrickColor.new("3") 
player.Torso.BrickColor = BrickColor.new("4") 
player["Right Leg"].BrickColor = BrickColor.new("2") 
player["Right Arm"].BrickColor = BrickColor.new("3") 
player["Left Leg"].BrickColor = BrickColor.new("2") 
player["Left Arm"].BrickColor = BrickColor.new("3") 
local Shirt = Instance.new("Shirt", player) 
Shirt.ShirtTemplate = "" 
local Pants = Instance.new("Pants", player) 
Pants.PantsTemplate = "" 
player.Head.face.Texture = "" 
game:Load('https://oldrobloxassets.000webhostapp.com/hats/redbaseballcapa.rbxm') 
local Accoutrement = Instance.new('Accoutrement', player) 
game.Handle.Parent = Accoutrement 
Accoutrement.AttachmentPos = Vector3.new(0, -0.2, 0.15) 
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
