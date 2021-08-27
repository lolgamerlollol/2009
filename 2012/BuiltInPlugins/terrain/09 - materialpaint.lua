-----------------------------
--LOCAL FUNCTION DEFINITIONS-
-----------------------------
local c = game.Workspace.Terrain
local SetCell = c.SetCell
local SetWaterCell = c.SetWaterCell
local GetCell = c.GetCell
local WorldToCellPreferSolid = c.WorldToCellPreferSolid
local CellCenterToWorld = c.CellCenterToWorld
local waterMaterial = 17

local brushTypes = {"Circular", "Square"}
local waterForceDirections = {"NegX","X","NegY","Y","NegZ","Z"}
local waterForces = {"None", "Small", "Medium", "Strong", "Max"}

-----------------
--DEFAULT VALUES-
-----------------
loaded = false
on = false

local terrainSelectorGui, terrainSelected, radiusLabel, dragBar, closeEvent, helpFrame, currSelectionUpdate, currSelectionDestroy, lastCell, waterPanel = nil

local debounce = false
local dragging = false

--- exposed values to user via gui
local currentMaterial = Enum.CellMaterial.Grass
local radius = 2
local brushType = "Circular"
local currWaterForceDirection = "NegX"
local currWaterForce = "None"

---------------
--PLUGIN SETUP-
---------------
self = PluginManager():CreatePlugin()
mouse = self:GetMouse()
mouse.Button1Down:connect(function() mouseDown(mouse) end)
mouse.Button1Up:connect(function() mouseUp(mouse) end)
mouse.Move:connect(function() mouseMove(mouse) end)

self.Deactivation:connect(function()
	Off()
end)
toolbar = self:CreateToolbar("Terrain")
toolbarbutton = toolbar:CreateButton("", "Material Brush", "materialBrush.png")
toolbarbutton.Click:connect(function()
	if on then
		Off()
	elseif loaded then
		On()
	end
end)

-- lua library load
local RbxGui = LoadLibrary("RbxGui")
local RbxUtil = LoadLibrary("RbxUtility")

-----------------------
--FUNCTION DEFINITIONS-
-----------------------

function doSetCell(x, y, z, oldType, oldOrientation)
	if currentMaterial == waterMaterial then
		SetWaterCell(c, x, y, z, currWaterForce, currWaterForceDirection)
	else
		SetCell(c, x, y, z, currentMaterial, oldType, oldOrientation)
	end
end

function paintCircular(cellPos)
	local radiusSquared = radius * radius
	
	local finalX = cellPos.x + radius
	local finalZ = cellPos.z + radius
	local finalY = cellPos.y + radius

	for x = cellPos.x - radius, finalX do
		for y = cellPos.y - radius, finalY do
			for z = cellPos.z - radius, finalZ do
				local tempCellPos = Vector3.new(x, y, z)
				local holdDist = tempCellPos - cellPos
				local distSq = (holdDist):Dot(holdDist)
				if (distSq < radiusSquared) then
					local oldMaterial, oldType, oldOrientation = GetCell(c, x, y, z)
					if oldMaterial.Value > 0 then 
						if currentMaterial == waterMaterial then
							SetWaterCell(c, x, y, z, currWaterForce, currWaterForceDirection)
						else
							SetCell(c, x, y, z, currentMaterial, oldType, oldOrientation)
						end
					end
				end
			end
		end
	end
end

function paintSquare(cellPos)
	local finalX = cellPos.x + radius - 1 
	local finalZ = cellPos.z + radius - 1
	local finalY = cellPos.y + radius - 1
	
	for x = cellPos.x - radius + 1, finalX do
		for y = cellPos.y - radius + 1, finalY do
			for z = cellPos.z - radius + 1, finalZ do
				local tempCellPos = Vector3.new(x, y, z)
				local oldMaterial, oldType, oldOrientation = GetCell(c, x, y, z)
				if oldMaterial.Value > 0 then 
					if currentMaterial == waterMaterial then
						SetWaterCell(c, x, y, z, currWaterForce, currWaterForceDirection)
					else
						SetCell(c, x, y, z, currentMaterial, oldType, oldOrientation)
					end	
				end
			end
		end
	end
end

function paint(mouse)
	if mouse and mouse.Hit and c and not debounce then
		debounce = true

		local cellPos = WorldToCellPreferSolid(c, mouse.Hit.p)

		if brushType == "Circular" then
			paintCircular(cellPos)
		elseif brushType == "Square" then
			paintSquare(cellPos)
		end

		debounce = false
	end
end

function calculateRegion( mouse )
	local cellPos = WorldToCellPreferSolid(c, mouse.Hit.p)

	local lowVec = Vector3.new(cellPos.x - radius,cellPos.y - radius,cellPos.z - radius)
	local highVec = Vector3.new(cellPos.x + radius,cellPos.y + radius,cellPos.z + radius)
	lowVec = CellCenterToWorld(c,lowVec.x,lowVec.y,lowVec.z)
	highVec = CellCenterToWorld(c,highVec.x,highVec.y,highVec.z)

	return Region3.new(lowVec + Vector3.new(2,2,2),highVec - Vector3.new(2,2,2))
end

function createSelection(mouse, massSelection)
	currSelectionUpdate, currSelectionDestroy = RbxUtil.SelectTerrainRegion(calculateRegion(mouse),BrickColor.new("Lime green"),massSelection,game.CoreGui)
end

function updateSelection(mouse)
	if not currSelectionUpdate then
		createSelection(mouse, radius > 4)
	else
		currSelectionUpdate(calculateRegion(mouse),BrickColor.new("Lime green"))
	end
end

function mouseDown(mouse)
	if on and mouse.Target == game.Workspace.Terrain then
		dragging = true
		paint(mouse)
	end
end

function mouseUp(mouse)
	dragging = false		
end

function destroySelection()
	if currSelectionUpdate then
		currSelectionUpdate = nil
	end
	if currSelectionDestroy then
		currSelectionDestroy()
		currSelectionDestroy = nil
	end
end


function mouseMove(mouse)
	coroutine.yield()
	if on then
		if mouse.Target == game.Workspace.Terrain then
			if lastCell ~= WorldToCellPreferSolid(c, mouse.Hit.p) then
				lastCell = WorldToCellPreferSolid(c, mouse.Hit.p)
				updateSelection(mouse)
			end
		else
			destroySelection()
		end

		if dragging then
			paint(mouse)
		end
	end
end

function createWaterGui()
	local waterFrame = Instance.new("Frame")
	waterFrame.Name = "WaterFrame"
	waterFrame.BackgroundColor3 = Color3.new(72/255,72/255,72/255)
	waterFrame.BorderColor3 = Color3.new(0,0,0)
	waterFrame.Size = UDim2.new(0,166,0,110)
	waterFrame.Visible = false

	local waterForceLabel = Instance.new("TextLabel")
	waterForceLabel.Name = "WaterForceLabel"
	waterForceLabel.BackgroundTransparency = 1
	waterForceLabel.Size = UDim2.new(1,-16,0,12)
	waterForceLabel.Position = UDim2.new(0,8,0,6)
	waterForceLabel.Font = Enum.Font.ArialBold
	waterForceLabel.FontSize = Enum.FontSize.Size12
	waterForceLabel.TextColor3 = Color3.new(1,1,1)
	waterForceLabel.TextXAlignment = Enum.TextXAlignment.Left
	waterForceLabel.Text = "Water Force"
	waterForceLabel.Parent = waterFrame

	local waterForceDirLabel = waterForceLabel:Clone()
	waterForceDirLabel.Name = "WaterForceDirectionLabel"
	waterForceDirLabel.Text = "Water Force Direction"
	waterForceDirLabel.Position = UDim2.new(0,8,0,56)
	waterForceDirLabel.Parent = waterFrame

	local waterForceDirectionSelectedFunc = function(newForceDirection)
		currWaterForceDirection = newForceDirection
	end
	local waterForceSelectedFunc = function(newForce)
		currWaterForce = newForce
	end

	local waterForceDirectionDropDown, forceWaterDirectionSelection = RbxGui.CreateDropDownMenu(waterForceDirections, waterForceDirectionSelectedFunc)
	waterForceDirectionDropDown.Size = UDim2.new(1,-16,0,25)
	waterForceDirectionDropDown.Position = UDim2.new(0,8,1,8)
	forceWaterDirectionSelection("NegX")
	waterForceDirectionDropDown.Parent = waterForceDirLabel

	local waterForceDropDown, forceWaterForceSelection = RbxGui.CreateDropDownMenu(waterForces, waterForceSelectedFunc)
	forceWaterForceSelection("None")
	waterForceDropDown.Size = UDim2.new(1,-16,0,25)
	waterForceDropDown.Position = UDim2.new(0,8,1,8)
	waterForceDropDown.Parent = waterForceLabel

	return waterFrame
end

function On()
	self:Activate(true)
	toolbarbutton:SetActive(true)

	dragBar.Visible = true
	on = true
end

function Off()
	toolbarbutton:SetActive(false)

	destroySelection()
	dragBar.Visible = false
	on = false
end

------
--GUI-
------

--screengui
local g = Instance.new("ScreenGui", game:GetService("CoreGui"))
g.Name = "MaterialPainterGui"

dragBar, containerFrame, helpFrame, closeEvent = RbxGui.CreatePluginFrame("Material Brush",UDim2.new(0,163,0,285),UDim2.new(0,0,0,0),false,g)
dragBar.Visible = false

helpFrame.Size = UDim2.new(0,200,0,250)
helpFrame.ZIndex = 3
local textHelp = Instance.new("TextLabel",helpFrame)
textHelp.Name = "TextHelp"
textHelp.Font = Enum.Font.ArialBold
textHelp.FontSize = Enum.FontSize.Size14
textHelp.TextColor3 = Color3.new(1,1,1)
textHelp.Size = UDim2.new(1,-6,1,-6)
textHelp.Position = UDim2.new(0,3,0,3)
textHelp.TextXAlignment = Enum.TextXAlignment.Left
textHelp.BackgroundTransparency = 1
textHelp.TextWrap = true
textHelp.ZIndex = 4
textHelp.Text = "Changes existing terrain blocks to the specified material.  Simply hold the mouse down and drag to 'paint' the terrain (only cells inside the selection box will be affected).\n\nSize: The size of the brush we paint terrain with\n\nBrush Type: The shape we paint terrain with inside of our selection box.\n\nMaterial Selection: The terrain material we will paint."

closeEvent.Event:connect(function() Off() end)

terrainSelectorGui, terrainSelected = RbxGui.CreateTerrainMaterialSelector(UDim2.new(1, -10, 0, 184),UDim2.new(0, 5, 1, -190))
terrainSelectorGui.Parent = containerFrame
terrainSelectorGui.BackgroundTransparency = 1
terrainSelectorGui.BorderSizePixel = 0
terrainSelected.Event:connect(function ( newMaterial )
	currentMaterial = newMaterial
	waterPanel.Visible = (newMaterial == waterMaterial)
end)

--current radius display label
radiusLabel = Instance.new("TextLabel", containerFrame)
radiusLabel.Name = "RadiusLabel"
radiusLabel.Position = UDim2.new(0, 10, 0, 5)
radiusLabel.Size = UDim2.new(1, -3, 0, 14)
radiusLabel.Text = "Size: " .. radius
radiusLabel.TextColor3 = Color3.new(0.95, 0.95, 0.95)
radiusLabel.Font = Enum.Font.ArialBold
radiusLabel.FontSize = Enum.FontSize.Size14
radiusLabel.BorderColor3 = Color3.new(0, 0, 0)
radiusLabel.BackgroundTransparency = 1
radiusLabel.TextXAlignment = Enum.TextXAlignment.Left

--radius slider
radSliderGui, radSliderPosition = RbxGui.CreateSlider(10, 0, UDim2.new(0, 0, 0, 18))
radSliderGui.Size = UDim2.new(1,-2,0,20)
radSliderGui.Position = UDim2.new(0,0,0,24)
radSliderGui.Parent = containerFrame
radBar = radSliderGui:FindFirstChild("Bar")
radBar.Size = UDim2.new(1, -20, 0, 5)
radBar.Position = UDim2.new(0,10,0.5,-3)
radSliderPosition.Value = radius
radSliderPosition.Changed:connect(function()
	radius = radSliderPosition.Value
	radiusLabel.Text = "Size: " .. radius
	destroySelection()
end)

local brushTypeChanged = function(newBrush)
	brushType = newBrush
end
-- brush type drop-down
local brushDropDown, forceSelection = RbxGui.CreateDropDownMenu(brushTypes, brushTypeChanged)
forceSelection("Circular")
brushDropDown.Size = UDim2.new(1,-10,0,25)
brushDropDown.Position = UDim2.new(0,5,0,65)
brushDropDown.Parent = containerFrame

local brushLabel = radiusLabel:Clone()
brushLabel.Name = "BrushLabel"
brushLabel.Text = "Brush Type"
brushLabel.Position = UDim2.new(0,10,0,50)
brushLabel.Parent = containerFrame

waterPanel = createWaterGui()
waterPanel.Parent = dragBar
waterPanel.Position = UDim2.new(1,2,0,0)
waterPanel.Visible = false

--------------------------
--SUCCESSFUL LOAD MESSAGE-
--------------------------
loaded = true