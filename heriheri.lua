local ProximityPrompt = script.Parent
local Item = game.ServerStorage.Tools:FindFirstChild("Healing Potion") -- Change YourToolName to whatever your tool is called
ProximityPrompt.Triggered:Connect(function(player)
	Item.Parent = player.Backpack
end)