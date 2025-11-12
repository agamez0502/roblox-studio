
--game.Players.PlayerAdded:Connect(function(player)
    --print("Welcome to the game " .. player.Name)

--local discoTile =  game.Workspace.DiscoFloor.Part
local DiscoFloorModel = game.Workspace.DiscoFloor
local partIsTouched = false

local groupTiles = DiscoFloorModel:getChildren()

-- tiles into a table 
-- check if all tiles are being touched 
-- if player touches red tile, then back to spawn

for i=1, #groupTiles do

    groupTiles[i].Touched:Connect(function(touch)

        local playerTouched = game.Players:GetPlayerFromCharacter(touch.Parent)
    if playerTouched then
        print(playerTouched.Name .. " touched the part!")
        if groupTiles[i].Name == "PartBlue" then
            print("something")
        end
    end
end)

end