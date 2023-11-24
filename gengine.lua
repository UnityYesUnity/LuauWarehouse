script.Sound:Play()


							--========|| Boring stuff ||========--

function onClicked()
	
	game.Workspace["Click Function"].BrickColor = BrickColor.new("Really red")
	
	--GameTool
	local Tool = Instance.new("Tool")
	local PartTool = Instance.new("Part")
	local Meshy = Instance.new("SpecialMesh")
	PartTool.Name = "Handle"
	Tool.Name = "Friend"
	PartTool.Position = Vector3.new(-0.518, 1.544, 29.857)
	PartTool.Size = Vector3.new(0.627, 1.705, 2.508)
	Tool.Parent = game.Workspace
	PartTool.Parent = game.Workspace.Friend
	Meshy.Parent = game.Workspace.Friend.Handle
	Meshy.MeshId = "http://www.roblox.com/asset/?id=12218321"
	Meshy.TextureId = "http://www.roblox.com/asset/?id=12884614"
	
	
	--TheBaseplate
	local EpicPart = Instance.new("Part")
	local Texture = Instance.new("Texture")
	EpicPart.Position = Vector3.new(0, -8, 0)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(2048, 16, 2048)
	EpicPart.Name = "BASEPLATE"
	EpicPart.BrickColor = BrickColor.new("Dark stone Grey")
	Texture.Texture = "rbxassetid://6372755229"
	Texture.Parent = game.Workspace["World Parts"].BASEPLATE
	Texture.Face = "Top"
	EpicPart.Material = Enum.Material.Plastic
	EpicPart.Anchored = true
	
	--Sign {Doesn't work yet}
	--Substitute:
	game.Workspace.Sign.Transparency = 0
	game.Workspace.Sign.SurfaceGui.TextLabel["Text!!"].Visible = true
	--[[local EpicPart = Instance.new("Part")
	local Surface = Instance.new("SurfaceGui")
	local Text = Instance.new("TextLabel")
	local TextChild = Instance.new("TextLabel")
	EpicPart.Position = Vector3.new(-8.089, 2.527, 29.208)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(6.8, 5.14, 0.2)
	EpicPart.Orientation = Vector3.new(0, -125, 0)
	EpicPart.Name = "Sign"
	Surface.Name = "Surf"
	Text.Name = "TextParent"
	Surface.Parent = game.Workspace["World Parts"].Sign
	Text.Parent = game.Workspace["World Parts"].Sign.Surf
	TextChild.Parent = game.Workspace["World Parts"].Sign.Surf.TextParent
	Surface.Face = "Front"
	TextChild.TextFits = true
	TextChild.BackgroundTransparency = 1
	TextChild.Position = UDim2.new({0, 0},{0, 0})
	TextChild.Size = UDim2.new({1, 0},{1, 0})
	TextChild.TextScaled = true
	TextChild.Text = "Everything you see after you clicked this button was manually generated using a script"
	EpicPart.BrickColor = BrickColor.new("medium stone Grey")
	EpicPart.Material = Enum.Material.Plastic
	EpicPart.Anchored = true]]

	
	--Floor
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-0.057, 0.5, 0.01)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(29.734, 1, 33.94)
	EpicPart.Name = "Floor"
	EpicPart.BrickColor = BrickColor.new("Maroon")
	EpicPart.Material = Enum.Material.Fabric 
	
	EpicPart.Anchored = true
	
	--Wall1
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-14.604, 7.668, 0.065)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(0.82, 15, 34.05)
	EpicPart.Name = "Wall1"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--Wall2
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(14.604, 7.668, 0.065)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(0.82, 15, 34.05)
	EpicPart.Name = "Wall2"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--Backwall
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(0.13, 7.668, -16.653)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(29.769, 15, 0.874)
	EpicPart.Name = "Backwall"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--Frontwall1
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-12.693, 7.668, 16.647)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(4.124, 15, 0.874)
	EpicPart.Name = "Frontwall1"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--Frontwall2
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-0.239, 13.301, 16.647)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(29.031, 3.733, 0.874)
	EpicPart.Name = "Frontwall2"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--Frontwall3
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(5.025, 7.671, 16.647)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(18.503, 14.994, 0.874)
	EpicPart.Name = "Frontwall3"
	EpicPart.BrickColor = BrickColor.new("Dark orange")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true
	
	--PartOfRoof
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(0.012, 14.907, 0.065)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(32.665, 0.068, 36.9)
	EpicPart.Name = "PartOfRoof999"
	EpicPart.BrickColor = BrickColor.new("Rust")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true

	--PartOfRoof
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-8.11, 18.066, 0.065)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(17.88, 0.065, 36.9)
	EpicPart.Orientation = Vector3.new(0, 0, 22.348)
	EpicPart.Name = "PartOfRoof32"
	EpicPart.BrickColor = BrickColor.new("Rust")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true

	--PartOfRoof
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-0.111, 14.907, 0.107)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(32.189, 0.068, 36.759)
	EpicPart.Name = "PartOfRoof2134"
	EpicPart.BrickColor = BrickColor.new("Rust")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true

	--PartOfRoof
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(8.256, 18.175, 0.065)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(17.503, 0.065, 36.9)
	EpicPart.Orientation = Vector3.new(0, 0, -22.348)
	EpicPart.Name = "PartOfRoof234"
	EpicPart.BrickColor = BrickColor.new("Rust")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true

	--PartOfRoof
	local EpicPart = Instance.new("Part")
	EpicPart.Position = Vector3.new(-0.111, 14.907, 0.107)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(32.189, 0.068, 36.759)
	EpicPart.Name = "PartOfRoof244"
	EpicPart.BrickColor = BrickColor.new("Rust")
	EpicPart.Material = Enum.Material.WoodPlanks
	EpicPart.Anchored = true

	--PartOfRoofWedge
	local EpicWedge = Instance.new("WedgePart")
	EpicWedge.Position = Vector3.new(8.017, 18.184, 0.07)
	EpicWedge.Parent = game.Workspace["World Parts"]
	EpicWedge.Size = Vector3. new(35.847, 6.486, 15.896)
	EpicWedge.Orientation = Vector3.new(0, -90, 0)
	EpicWedge.Name = "PartOfRoofWedge839"
	EpicWedge.BrickColor = BrickColor.new("Cocoa")
	EpicWedge.Material = Enum.Material.WoodPlanks
	EpicWedge.Anchored = true

	--PartOfRoofWedge
	local EpicWedge = Instance.new("WedgePart")
	EpicWedge.Position = Vector3.new(-7.84, 18.184, 0.067)
	EpicWedge.Parent = game.Workspace["World Parts"]
	EpicWedge.Size = Vector3. new(35.84, 6.486, 15.896)
	EpicWedge.Orientation = Vector3.new(0, 90, 0)
	EpicWedge.Name = "PartOfRoofWedge839"
	EpicWedge.BrickColor = BrickColor.new("Cocoa")
	EpicWedge.Material = Enum.Material.WoodPlanks
	EpicWedge.Anchored = true

	--PartOfRoof
	local EpicPart = Instance.new("Part")
	local Light = Instance.new("PointLight")
	Light.Brightness = 6.94
	EpicPart.Position = Vector3.new(-0.111, 14.907, 0.107)
	EpicPart.Parent = game.Workspace["World Parts"]
	EpicPart.Size = Vector3. new(0.202, 7.083, 7.083)
	EpicPart.Orientation = Vector3.new(0, 0, 90)
	EpicPart.Name = "HouseLight"
	Light.Parent = game.Workspace["World Parts"].HouseLight
	EpicPart.BrickColor = BrickColor.new("Deep orange")
	EpicPart.Material = Enum.Material.Glass
	EpicPart.Anchored = true


	
end

script.Parent.ClickDetector.MouseClick:connect(onClicked)
