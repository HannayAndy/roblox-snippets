local SpawnPart= script.Parent

-- need to store your part \ model in replicated storage and change this line appropriately. 
 
local toSpawn = game.ReplicatedStorage.myPartToSpawn
canTrigger= true

function onTouched(hit)
    local character = hit.Parent
	local elevator = script.Parent
	
    if character and character:findFirstChild("Humanoid") then
	print("found")
        if canTrigger then
	
    		canTrigger=false
			local spawned = toSpawn:Clone()
			spawned.Parent = workspace
            --adjust to desired position. N.B. models need primary part. may need tweeking to fit certain situations. 
			spawned.CFrame = CFrame.new(Vector3.new(0.7, 40.594, 212.6))
		
			wait(2)
			canTrigger=true 
        	end 
    end
end
SpawnPart.Touched:connect(onTouched)
