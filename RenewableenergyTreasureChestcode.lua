local player = game.Players.LocalPlayer
local chest = workspace.Chest
local collected = false

-- Function to check distance
local function isCloseEnough()
	return (player.Character.HumanoidRootPart.Position - chest.Position).Magnitude <= 5
end

-- Example event for "E" key press
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, isProcessed)
	if isProcessed then return end
	if input.KeyCode == Enum.KeyCode.E and isCloseEnough() then
		-- Clear inventory
		for _, item in pairs(player.Backpack:GetChildren()) do
			item:Destroy()
		end

		-- Spawn parts into chest
		local part = Instance.new("Part")
		part.Size = Vector3.new(2, 2, 2)
		part.Position = chest.Position + Vector3.new(0, 3, 0)
		part.Parent = workspace

		collected = true
		print("Collected set to true")
	end
end)