local BUTTON_COOLDOWN = 300
local part = script.Parent
local clickDetector = part:FindFirstChildOfClass("ClickDetector")
local surfaceGui = script.Parent.SurfaceGui
local robot = game.ReplicatedStorage.Events["Soldier bot"]

local isCooldown = false
local cooldownEndTime = 0

local function updateCooldownDisplay()
	local remainingTime = cooldownEndTime - os.time()
	if remainingTime <= 0 then
		surfaceGui.TextLabel.Text = "Ready"
	else
		local minutes = math.floor(remainingTime / 60)
		local seconds = remainingTime % 60
		surfaceGui.TextLabel.Text = string.format("Cooldown: %02d:%02d", minutes, seconds)
	end
end

local function handleClick(player)
	if isCooldown then
		return
	end

	isCooldown = true
	cooldownEndTime = os.time() + BUTTON_COOLDOWN

	updateCooldownDisplay()

	spawn(function()
		robot:Clone().Parent = game.Workspace
		print("RoboSoldierSpawned")
	end)

	spawn(function()
		while os.time() < cooldownEndTime do
			updateCooldownDisplay()
			wait(1)
		end
		isCooldown = false
		updateCooldownDisplay()
	end)
end

clickDetector.MouseClick:Connect(handleClick)

updateCooldownDisplay()
