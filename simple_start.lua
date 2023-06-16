local player = game:GetService("Players").LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local main = script.Parent
local button = main.Frame.Start
button.MouseButton1Click:Connect(function()
	main.Frame.Visible = false
	char:WaitForChild("Humanoid").Health = 0
end)
