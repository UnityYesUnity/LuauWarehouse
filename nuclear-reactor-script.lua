local DisplayPart = script.Parent.DisplayPart
local RedButton = script.Parent.TempDown
local GreenButton = script.Parent.TempUp

local temperature = 675
local temperatureRange = 15
local temperatureChangeInterval = 2
local temperatureDeviationThreshold = 25

local function functionCall()
	game.ReplicatedStorage.Events.NukeMaterial:Clone().Parent = game.Workspace
end

local function updateTemperatureDisplay()
	DisplayPart.SurfaceGui.TextLabel.Text = tostring(temperature) .. "º"
end

local function changeTemperature()
	temperature = temperature + math.random(-temperatureRange, temperatureRange)
	updateTemperatureDisplay()
end

local function checkTemperatureDeviation()
	local deviation = math.abs(temperature - 675)

	if deviation >= temperatureDeviationThreshold then
		functionCall()
	end
end

RedButton.ClickDetector.MouseClick:Connect(function()
	temperature = temperature - 5
	updateTemperatureDisplay()
	checkTemperatureDeviation()
end)

GreenButton.ClickDetector.MouseClick:Connect(function()
	temperature = temperature + 5
	updateTemperatureDisplay()
	checkTemperatureDeviation()
end)

updateTemperatureDisplay()

wait(30)

while true do
	changeTemperature()
	checkTemperatureDeviation()
	wait(temperatureChangeInterval)
end
