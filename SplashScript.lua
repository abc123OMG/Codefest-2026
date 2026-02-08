print("Splash Script by Plad loaded")


local Pool = script.Parent

function onTouched(hit)
	print("Pool hit")

	local human = hit.Parent:findFirstChild("Humanoid")

	if (human ~= nil ) then 
		for i =1,2 do
			local Splash = Instance.new("Part")
			Splash.Parent = game.Workspace
			Splash.Position = human.Torso.Position + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
			Splash.Shape = 0
			Splash.formFactor = "Symmetric"
			Splash.Name = "Splash"
			Splash.BrickColor = BrickColor.new(23)
			Splash.Reflectance = 0.5
			Splash.Size = Vector3.new(1,1,1)

			game:GetService("Debris"):AddItem(Splash, .5) -- get rid of Splash after a certain amount of time
			
						
		end
	end
	
end


script.Parent.Touched:connect(onTouched)