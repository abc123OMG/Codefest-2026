local button = script.Parent -- The button the player clicks

-- Function to handle respawning
local function respawnPlayer(player)
	-- Find the player's character
	local character = player.Character or player.CharacterAdded:Wait()

	-- Kill the player by setting the humanoid health to 0
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		humanoid.Health = 0
	end
end

-- When the button is clicked
button.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	respawnPlayer(player)
end)