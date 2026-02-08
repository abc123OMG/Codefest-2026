local part = script.Parent

local guiName = "Ending Gui+Script!"

local function onTouch(otherPart)
	local character = otherPart.Parent
	local player = game.Players:GetPlayerFromCharacter(character)
	if player then
		local playerGui = player:FindFirstChild("PlayerGui")
		if playerGui then
			local gui = playerGui:FindFirstChild(guiName)
			if gui then
				gui.Enabled = true
			end
		end
	end
end

part.Touched:Connect(onTouch)