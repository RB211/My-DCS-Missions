-- Sea targets for Moose Lesson Menu L8

-- Spawn function for Sea Target
function dropSeaTarget()
local PointVecT = UNIT:FindByName ( "USS Tarawa" ):GetVec2()
local seatargetsT = { "Tommy-1", "Tommy-2", "Tommy-3"}
  spawnTommyT = SPAWN:New ( "Tommy-1"):InitRandomizeTemplate(seatargetsT)
  spawnTommyT:SpawnFromVec2 ( PointVecT, 0, 0 )
end

-- Add menu items
local MenuCoalitionBlue = MENU_COALITION:New ( coalition.side.BLUE, "Range Practice" )
local NestedMenuBlue = MENU_COALITION:New ( coalition.side.BLUE, "Tarawa", MenuCoalitionBlue )
local MenuTarawa = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "deploy Sea Target", NestedMenuBlue, dropSeaTarget ) 