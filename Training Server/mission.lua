--Mission file for practice server
--Greatly simplifies all the scripts and offers a nice organized menu system to build upon

function spawnM23b()
  local Spawn_Vehicle_1 = SPAWN:New( "m23b" )
  Spawn_Group_M23b = Spawn_Vehicle_1:Spawn()
  MESSAGE:New( "Mig 23's Activated", 6 ):ToBlue()
end

function spawnM29b()
  local Spawn_Vehicle_1 = SPAWN:New( "m29b" )
  Spawn_Group_M29b = Spawn_Vehicle_1:Spawn()
  MESSAGE:New( "Mig 29's Activated", 6 ):ToBlue()
end

function spawnSU27b()
  local Spawn_Vehicle_1 = SPAWN:New( "su27b" )
  Spawn_Group_SU27b = Spawn_Vehicle_1:Spawn()
  MESSAGE:New( "Su27's Activated", 6 ):ToBlue()
end

function spawnSU30b()
  local Spawn_Vehicle_1 = SPAWN:New( "su30b" )
  Spawn_Group_SU30b = Spawn_Vehicle_1:Spawn()
  MESSAGE:New( "Su30's Activated", 6 ):ToBlue()
end

function spawnSU31b()
  local Spawn_Vehicle_1 = SPAWN:New( "su31b" )
  Spawn_Group_SU31b = Spawn_Vehicle_1:Spawn()
  MESSAGE:New( "Su31's Activated", 6 ):ToBlue()
end

function spawnWW2range()
  local Spawn_Vehicle_1 = SPAWN:New( "ww2-1" )
  Spawn_Group_WW2_1 = Spawn_Vehicle_1:Spawn()

  local Spawn_Vehicle_2 = SPAWN:New( "ww2-2" )
  Spawn_Group_WW2_2 = Spawn_Vehicle_2:Spawn()

  local Spawn_Vehicle_3 = SPAWN:New( "ww2-3" )
  Spawn_Group_WW2_3 = Spawn_Vehicle_3:Spawn()

  local Spawn_Vehicle_4 = SPAWN:New( "ww2-4" )
  Spawn_Group_WW2_4 = Spawn_Vehicle_4:Spawn()
  
  MESSAGE:New( "WW2 Range Activated", 6 ):ToBlue()
  
end

function destroyWW2range()
  Spawn_Group_WW2_1:Destroy()
  Spawn_Group_WW2_2:Destroy()
  Spawn_Group_WW2_3:Destroy()
  Spawn_Group_WW2_4:Destroy()

  MESSAGE:New( "WW2 Range Deactivated", 6 ):ToBlue()

end

function spawnBunkerRange()
  local Spawn_Vehicle_1 = SPAWN:New( "bunker-1" )
  Spawn_Group_Bunker_1 = Spawn_Vehicle_1:Spawn()

  local Spawn_Vehicle_2 = SPAWN:New( "bunker-2" )
  Spawn_Group_Bunker_2 = Spawn_Vehicle_2:Spawn()
  
  MESSAGE:New( "Bunker Range SAM's Activated", 6 ):ToBlue()
  
end

function destroyBunkerRange()
  Spawn_Group_Bunker_1:Destroy()
  Spawn_Group_Bunker_2:Destroy()
  
  MESSAGE:New( "Bunker Range SAM's Deactivated", 6 ):ToBlue()
  
end

function spawnSAMRange()
  local Spawn_Vehicle_1 = SPAWN:New( "sam-1" )
  Spawn_Group_Sam_1 = Spawn_Vehicle_1:Spawn()

  local Spawn_Vehicle_2 = SPAWN:New( "sam-2" )
  Spawn_Group_Sam_2 = Spawn_Vehicle_2:Spawn()

  local Spawn_Vehicle_3 = SPAWN:New( "sam-3" )
  Spawn_Group_Sam_3 = Spawn_Vehicle_3:Spawn()
  
  MESSAGE:New( "SAM Range Activated", 6 ):ToBlue()
  
end

function destroySAMRange()
  Spawn_Group_Sam_1:Destroy()
  Spawn_Group_Sam_2:Destroy()
  Spawn_Group_Sam_3:Destroy()
  
  MESSAGE:New( "SAM Range Deactivated", 6 ):ToBlue()
  
end

function spawnManPad()
  local Spawn_Vehicle_1 = SPAWN:New( "manpadrange" )
  Man_Pad_1 = Spawn_Vehicle_1:Spawn()

  MESSAGE:New( "Man Pads Activated at Main Range", 6 ):ToBlue()

end

function spawnL39za()
  local Spawn_Vehicle_1 = SPAWN:New( "l39za" )
  Spawn_Group_L39za = Spawn_Vehicle_1:Spawn()
  
  MESSAGE:New( "Main Range CAP Activated", 6 ):ToBlue()
  
end

function destroyL39za()
  Spawn_Group_L39za:Destroy()
  
  MESSAGE:New( "Main Range CAP Deactivated", 6 ):ToBlue()
  
end

function destroyManPad()
  Man_Pad_1:Destroy()
  
  MESSAGE:New( "Man Pads Deactivated at Main Range", 6 ):ToBlue()
  
end

function destroyM23b()

  Spawn_Group_M23b:Destroy()
  MESSAGE:New( "Mig23's Deactivated", 6 ):ToBlue()
  
end

function destroyM29b()

  Spawn_Group_M29b:Destroy()
  MESSAGE:New( "Mig29's Deactivated", 6 ):ToBlue()
  
end    

function destroySU27b()

  Spawn_Group_SU27b:Destroy()
  MESSAGE:New( "Su27's Deactivated", 6 ):ToBlue()
  
end    
  
function destroySU30b()

  Spawn_Group_SU30b:Destroy()
  MESSAGE:New( "Su30's Deactivated", 6 ):ToBlue()
  
end    

function destroySU31b()

  Spawn_Group_SU31b:Destroy()
  MESSAGE:New( "Su31's Deactivated", 6 ):ToBlue()
  
end 

function destroyBVR()
  
  
  if(Spawn_Group_M23b ~= nil)
    then Spawn_Group_M23b:Destroy()
  end 
  if(Spawn_Group_M29b ~= nil)
    then Spawn_Group_M29b:Destroy()
  end  
  if(Spawn_Group_SU27b ~= nil)
    then Spawn_Group_SU27b:Destroy()
  end 
  if(Spawn_Group_SU30b ~= nil)
    then Spawn_Group_SU30b:Destroy()
  end  
  if(Spawn_Group_SU31b ~= nil)
    then Spawn_Group_SU31b:Destroy()
  end
  
  MESSAGE:New( "AI BVR Aircraft Deactivated", 6 ):ToBlue()
  
end  
  
  


-- Add menu items
local MenuCoalitionBlue = MENU_COALITION:New ( coalition.side.BLUE, "Range Practice" )
local NestedMenuBVR = MENU_COALITION:New ( coalition.side.BLUE, "AI BVR Range", MenuCoalitionBlue )
local NestedMenuMain = MENU_COALITION:New ( coalition.side.BLUE, "Main Range", MenuCoalitionBlue )
local NestedMenuWW2 = MENU_COALITION:New ( coalition.side.BLUE, "WW2 Range", MenuCoalitionBlue )
local NestedMenuBunker = MENU_COALITION:New ( coalition.side.BLUE, "Bunker Range", MenuCoalitionBlue )
local NestedMenuSAM = MENU_COALITION:New ( coalition.side.BLUE, "SAM Range", MenuCoalitionBlue )

local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate Mig23's", NestedMenuBVR, spawnM23b )
local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate SU27's", NestedMenuBVR, spawnSU27b )
local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate Mig29's", NestedMenuBVR, spawnM29b )
local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate SU30's", NestedMenuBVR, spawnSU30b )
local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate SU31's", NestedMenuBVR, spawnSU31b )
local MenuBVR = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate All AI BVR", NestedMenuBVR, destroyBVR )

local MenuMain = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate ManPads", NestedMenuMain, spawnManPad )
local MenuMain = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate ManPads", NestedMenuMain, destroyManPad )

local MenuMain = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate Enemy CAP", NestedMenuMain, spawnL39za )
local MenuMain = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate Enemy CAP", NestedMenuMain, destroyL39za )

local MenuWW2 = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate WW2 Range", NestedMenuWW2, spawnWW2range )
local MenuWW2 = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate WW2 Range", NestedMenuWW2, destroyWW2range )

local MenuBunker = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate Bunker Range", NestedMenuBunker, spawnBunkerRange )
local MenuBunker = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate Bunker Range", NestedMenuBunker, destroyBunkerRange )

local MenuSAM = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Activate SAM Range", NestedMenuSAM, spawnSAMRange )
local MenuSAM = MENU_COALITION_COMMAND:New ( coalition.side.BLUE, "Deactivate SAM Range", NestedMenuSAM, destroySAMRange )