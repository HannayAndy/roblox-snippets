
-- triggers a function on touching the scripts parent, if the touching part is connected to a humanoid. 

local triggerPart= script.Parent


canTrigger= true

function onTouched(hit)
    local character = hit.Parent
	
	
    if character and character:findFirstChild("Humanoid") then
	print("found human")
        if canTrigger then
            --do somthing here. 
    		canTrigger=false
			wait(2)
			canTrigger=true 
        end 
    end
end
triggerPart.Touched:connect(onTouched)
